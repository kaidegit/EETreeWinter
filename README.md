# 本次项目所要实现的功能

* 实现一个可定时时钟的功能，用小脚丫FPGA核心模块的4个按键设置当前的时间，OLED显示数字钟的当前时间，精确到分钟即可，到整点的时候比如8:00，蜂鸣器报警，播放音频信号，最长可持续30秒；
* 实现温度计的功能，小脚丫通过板上的温度传感器实时测量环境温度，并同时间一起显示在OLED的屏幕上；
* 定时时钟整点报警的同时，将温度信息通过UART传递到电脑上，电脑上能够显示当前板子上的温度信息（任何显示形式都可以），要与OLED显示的温度值一致；
* PC收到报警的温度信号以后，将一段音频文件（自己制作，持续10秒钟左右）通过UART发送给小脚丫FPGA，蜂鸣器播放收到的这段音频文件，OLED屏幕上显示的时间信息和温度信息都停住不再更新；
* 音频文件播放完毕，OLED开始更新时间信息和当前的温度信息

# 设计思路

由于这是我第一次使用FPGA，我还是倾向于使用别人验证成功的代码修改拼凑成一个完整的功能，感谢每一个在为学习FPGA和完成任务途中帮助过我的人、团队和工具，谢谢大家。方案导图如下

# 具体实现

## DS18B20温度计模块

1. 读取DS18B20的代码引用自电子森林的[应用案例及参考代码](https://www.eetree.cn/wiki/temp_sensor_verilog)，代码省略，输出一个16位的温度

2. 16位的温度经过转换分割成个位十位和小数点后一位，由于此FPGA不能运算除法，使用打表，代码如下

   ```verilog
   always @(posedge sys_clk or negedge sys_rst_n) begin
       //最后四位为小数
       case(data[3:0])
           4'b0000: unit <= 4'd0;
   				/* 中间省略 */
           4'b1111: unit <= 4'd9;
           default: unit <= 4'd0;
       endcase
       //只处理0-40摄氏度数据
       case (data[11:4])
           8'b0	    : begin hun = 4'd0; ten = 4'd0; end
   				/* 中间省略 */
           8'b100111	: begin hun = 4'd3; ten = 4'd9; end
           default     : begin hun = 4'd0; ten = 4'd0; end
       endcase
   end
   ```

   代码略长，这里我使用python来生成代码

   ```python	
   for a in range(2):
       for b in range(2):
           for c in range(2):
               for d in range(2):
                   print("4'b%d%d%d%d: unit <= 4'd%d;"%(a,b,c,d,(a*0.5+b*0.25+c*0.125+d*0.0625)*10))
   
   for i in range(40):
       ib = bin(i)
       print("8'b%s\t: begin hun = 4'd%d; ten = 4'd%d; end" % (ib[2:], i // 10, i % 10))
   
   ```

3. 分割后的温度计数据传入OLED模块和串口发送模块

## SSD1306 OLED模块

1. OLED显示模块同样引用自电子森林的[应用案例及参考代码](https://www.eetree.cn/wiki/oled_spi_verilog)，添加了蜂鸣器播放时不更新，代码部分省略，展示修改部分

   ```verilog
   MAIN:begin
   		if (oled_update) begin
   				if(cnt_main >= 5'd6) cnt_main <= 5'd5;
   				else cnt_main <= cnt_main + 1'b1;
   		end else begin
   				if(cnt_main >= 5'd4) cnt_main <= 5'd4;
   				else cnt_main <= cnt_main + 1'b1;
   		end		
   		case(cnt_main)	//MAIN状态
   				5'd0:	begin state <= INIT; end
   				5'd1:	begin y_p <= 8'hb0; x_ph <= 8'h10; x_pl <= 8'h00; num <= 5'd16; char <= "Temperature:    ";state <= SCAN; end
   				5'd2:	begin y_p <= 8'hb1; x_ph <= 8'h10; x_pl <= 8'h00; num <= 5'd16; char <= "Time:           ";state <= SCAN; end
   				5'd3:	begin y_p <= 8'hb2; x_ph <= 8'h10; x_pl <= 8'h00; num <= 5'd16; char <= "This is Line 3  ";state <= SCAN; end
   				5'd4:	begin y_p <= 8'hb3; x_ph <= 8'h10; x_pl <= 8'h00; num <= 5'd16; char <= "This is Line 4  ";state <= SCAN; end
   
   				5'd5:   begin y_p <= 8'hb0; x_ph <= 8'h16; x_pl <= 8'h00; num <= 5'd 4; char <= {4'd0,temp_hun,4'd0,temp_ten,8'd46,4'd0,temp_unit}; state <= SCAN; end
   				5'd6:	begin y_p <= 8'hb1; x_ph <= 8'h15; x_pl <= 8'h00; num <= 5'd 5; char <= {4'd0,time_hour_high,4'd0,time_hour_low,8'd58,4'd0,time_min_high,4'd0,time_min_low}; state <= SCAN; end
       		default: state <= IDLE;
   		endcase
   end
   
   ```

## 时钟模块

时钟模块的思路参考了[杨彧老哥的思路](https://www.eetree.cn/project/detail/101)，在此表示感谢

1. 时钟设定模块采用500ms检测一次按键状态，避免了按键消抖

   ```verilog
   //T=500ms分频
   reg clk_500ms;
   reg [10:0] clk_500ms_cnt;
   always @(posedge clk_1ms or negedge rst_n) begin
       if(!rst_n) begin
           clk_500ms_cnt <= 0;
       end else if (clk_500ms_cnt <= 250) begin
           clk_500ms_cnt <= clk_500ms_cnt + 1;
       end else begin
           clk_500ms_cnt <= 0;
           clk_500ms <= ~clk_500ms;
       end
   end
   //时间设定
   reg [3:0] hour_set_low;
   reg [3:0] hour_set_high;
   reg [3:0] min_set_low;
   reg [3:0] min_set_high;
   always @(posedge clk_500ms) begin
   		if((hour_a != 0) && (hour_d != 0) && (min_a != 0) && (min_d != 0)) begin
   				hour_set_high = 0;
    		    hour_set_low = 0;
   				min_set_high = 0;
     		  min_set_low = 0;
   		end else if(hour_a == 0) begin
    		 		hour_set_high = time_hour_high;
         	hour_set_low = time_hour_low;
    		   	min_set_high = time_min_high;
    		   	min_set_low = time_min_low;
   			 	hour_set_low = hour_set_low + 1;
    		   	if (hour_set_low == 10) begin
    						hour_set_low = 0;
         			hour_set_high = hour_set_high + 1;
       		end
   		end else if(hour_d == 0) begin
       		hour_set_high = time_hour_high;
       		hour_set_low = time_hour_low;
       		min_set_high = time_min_high;
       		min_set_low = time_min_low;
   	  		if (hour_set_low != 0)
         			hour_set_low = hour_set_low - 1;
       		else if (hour_set_high != 0) begin
         			hour_set_high = hour_set_high - 1;
         			hour_set_low = 9;
       		end
   		end else if(min_a == 0) begin
           hour_set_high = time_hour_high;
           hour_set_low = time_hour_low;
           min_set_high = time_min_high;
           min_set_low = time_min_low;
   	    	min_set_low = min_set_low + 1;
           if (min_set_low == 10) begin
               min_set_low = 0;
               min_set_high = min_set_high + 1;
           end
   		end else if(min_d == 0) begin
           hour_set_high = time_hour_high;
           hour_set_low = time_hour_low;
           min_set_high = time_min_high;
           min_set_low = time_min_low;
           if (min_set_low != 0)
   	      	  min_set_low = min_set_low - 1;
           else if (min_set_high != 0) begin
               min_set_high = min_set_high -1;
               min_set_low = 9;
           end
   		end
   		if((hour_set_high == 2) && (hour_set_low == 4)) begin
           hour_set_high = 0;
           hour_set_low = 0;
     	end
   		if(min_set_high == 6)
   	  	  min_set_high = 0;
   end
   ```

2. 走时部分，频率比设定模块更高以便正确处理时间设定。最终输出四位时间数据给OLED模块

   ```verilog
   //T=1ms分频
   reg clk_1ms;
   reg [12:0] clk_1ms_cnt;
   always @(posedge clk or negedge rst_n) begin
       if(!rst_n) begin
           clk_1ms_cnt <= 0;
       end else if (clk_1ms_cnt <= 6000) begin
           clk_1ms_cnt <= clk_1ms_cnt + 1;
       end else begin
           clk_1ms_cnt <= 0;
           clk_1ms <= ~clk_1ms;
       end
   end
   //时间输出
   reg [15:0] ms;
   always @(posedge clk_1ms or negedge rst_n) begin
       if(!rst_n) begin
           ms = 0;
           time_min_low = 0;
           time_min_high = 0;
           time_hour_low = 0;
           time_hour_high = 0;
       end else if ((hour_set_low != 0) || (hour_set_high != 0) || (min_set_low != 0) || (min_set_high != 0)) begin
           time_hour_high = hour_set_high;
           time_hour_low = hour_set_low;
           time_min_high = min_set_high;
           time_min_low = min_set_low;
       end else begin
           if (ms < 60000)
               ms = ms + 1;
           else begin 
               ms = 0;
               time_min_low = time_min_low + 1;
               if (time_min_low == 10) begin
                   time_min_low = 0;
                   time_min_high = time_min_high + 1;
                   if (time_min_high == 6) begin
                       time_min_high = 0;
                       time_hour_low = time_hour_low + 1;
                       if (time_hour_low == 10) begin
                           time_hour_low = 0;
                           time_hour_high = time_hour_high + 1;
                       end
                       else if ((time_hour_low == 4) && (time_hour_high == 2)) begin
                           time_hour_low = 0;
                           time_hour_high = 0;
                       end
                   end
               end
           end    
       end   
   end
   ```

## 串口发送模块

1. 刚开始使用[原子哥的代码](http://www.openedv.com/docs/boards/fpga/zdyz_dafenqi.html)，并使用状态机进行字符串的发送，调试了半天只能成功发送一次，延时后电脑即收不到数据，遂放弃

2. 最后还是引用了[杨彧老哥的代码](https://www.eetree.cn/project/detail/101)，进行部分修改，每秒上报温度和时间或者温度报警，一次成功，再次表示感谢。代码如下

   ```verilog
   module uart_tx(
       input           clk_in,
       input   [3:0]   temp_hun,
       input   [3:0]   temp_ten,
       input   [3:0]   temp_unit,
       input   [3:0]   time_hour_high,
       input   [3:0]   time_hour_low,
       input   [3:0]   time_min_high,
       input   [3:0]   time_min_low,
   
       output          uart_out
   );
   
   localparam IDLE = 2'b0;
   localparam SEND = 2'b1;
   
   reg uart_out,flag_1,flag_2,state;
   reg [120:0] uart_data;
   reg [7:0] tab[9:0];
   reg [6:0] i;
   
   reg clk_uart;
   reg[9:0] times;
   always @(posedge clk_in) begin
   		if(times < 625)
   	  	  times = times+1;
   		else begin
   				clk_uart = ~clk_uart;
   				times = 0;
   		end
   end
   
   reg clk_en;
   reg [23:0] clk_en_cnt;
   always @(posedge clk_in) begin
       if (clk_en_cnt <= 12_000_000) begin
           clk_en_cnt = clk_en_cnt + 1;
       end else begin
           clk_en_cnt = 0;
           clk_en = ~clk_en;
       end
   end
     /// @note The enter in Windows is \r\n 
     ///       while the return in macOS is \n 
   always @(posedge clk_en) begin
       if ((temp_hun * 10 + temp_ten ) >= 25) begin
           uart_data = {  
               1'd1,8'd10,1'd0,                   //return
   						/* 上报TempAlarm!!，代码省略 */
               1'd1,8'd84,1'd0,                   //T
               1'd1,1'd1
           };
       end else 
           uart_data = {  
                 1'd1,8'd10,1'd0,                   //return
                 1'd1,4'd3,time_min_low,1'd0,       //分钟低位
                 1'd1,4'd3,time_min_high,1'd0,      //分钟高位
                 1'd1,8'd58,1'd0,                   //:
                 1'd1,4'd3,time_hour_low,1'd0,      //小时低位
                 1'd1,4'd3,time_hour_high,1'd0,     //小时高位
                 1'd1,8'd32,1'd0,                   //space
                 1'd1,8'd67,1'd0,                   //C
                 1'd1,4'd3,temp_unit,1'd0,          //one tenth
                 1'd1,8'd46,1'd0,                   //point
                 1'd1,4'd3,temp_ten,1'd0,           //unit
                 1'd1,4'd3,temp_hun,1'd0,           //ten
                 1'd1,1'd1
             };
   		flag_1 = ~flag_1;
   end
   
   always @(posedge clk_uart) begin
   		case(state)
   	  	  IDLE: begin
           		if(flag_2 != flag_1) begin
   				    		flag_2 = flag_1;
   				    		state = SEND;
   			    	end
           end
   				SEND: begin
           		if(i < 122) begin
   								uart_out = uart_data[i];
   								i = i+1;
   						end else begin
   								i = 0;
   								state = IDLE;
   						end
           end  
       endcase
   end
   
   endmodule
   ```

## 串口接收模块

1. 串口接收部分引用[原子哥的代码](http://www.openedv.com/docs/boards/fpga/zdyz_dafenqi.html)，仅修改晶振频率，在此省略

## 串口接收处理模块和蜂鸣器驱动模块

1. 由于驱动蜂鸣器模块的模块只能有一个，故将整点报警也集成在内，略凌乱，代码如下

   ```verilog
   reg recv_done_d0;
   reg recv_done_d1;
   wire recv_done_flag;
   assign recv_done_flag = (~recv_done_d1) & recv_done_d0;
   always @(posedge sys_clk or negedge sys_rst_n) begin         
       if (!sys_rst_n) begin
           recv_done_d0 <= 1'b0;                                  
           recv_done_d1 <= 1'b0;
       end                                                      
       else begin                                               
           recv_done_d0 <= uart_done;                               
           recv_done_d1 <= recv_done_d0;                            
       end
   end
   
   reg clk_1s;
   reg [24:0] clk_1s_cnt;
   always @(posedge sys_clk or negedge sys_rst_n) begin
       if (!sys_rst_n) begin
           clk_1s <= 0;
           clk_1s_cnt <= 0;
       end else if (clk_1s_cnt >= 12_000_000) begin
           clk_1s_cnt <= 0;
           clk_1s <= ~clk_1s;
       end else begin
           clk_1s_cnt <= clk_1s_cnt + 1;
       end
   end
   
   reg [4:0] alarm_cnt;
   reg clk_1s_temp;
   always @(posedge sys_clk or negedge sys_rst_n) begin
       if (!sys_rst_n) begin
           tone = 0;
           alarm_cnt = 0;
           clk_1s_temp = 0;
       end else begin
           if (recv_done_flag) begin
               tone = uart_data;        //上位机中需注意此编码
           end else if ((time_min_high == 0) && (time_min_low == 0)) begin
               if (alarm_cnt <= 10) begin
                   if (clk_1s_temp != clk_1s) begin
                       clk_1s_temp = clk_1s;
                       alarm_cnt = alarm_cnt + 1;
                   end 
                   if (clk_1s) begin
                       tone = 5'h11;
                   end else begin
                       tone = 0;
                   end   
               end else if (alarm_cnt <= 60)begin
                   tone = 0;
                   if (clk_1s_temp != clk_1s) begin
                       clk_1s_temp = clk_1s;
                       alarm_cnt = alarm_cnt + 1;
                   end 
               end else begin
                   alarm_cnt = 0;
               end
           end else begin
               alarm_cnt = 0;
           end
       end
   end
   ```

## 蜂鸣器模块

1. 蜂鸣器模块主要引用电子森林的[应用案例及参考代码](https://www.eetree.cn/wiki/pwm_music_verilog)，修改音域为大字组到小字一组，并在播放时停止OLED的更新，修改如下

   ```verilog
   always@(tone) begin
   		case(tone)
               //大字组1-7
           5'h1:	begin time_end =	16'd45867;  oled_update = 0; end//C3,
           5'h2:	begin time_end =	16'd40863;  oled_update = 0; end//D3,
           5'h3:	begin time_end =	16'd36405;  oled_update = 0; end//E3,
           5'h4:	begin time_end =	16'd34362;  oled_update = 0; end//F3,
           5'h5:	begin time_end =	16'd30613;  oled_update = 0; end//G3,
           5'h6:	begin time_end =	16'd27273;  oled_update = 0; end//A3,
           5'h7:	begin time_end =	16'd25742;  oled_update = 0; end//B3,
               //小字组11-17
           5'h11:	begin time_end =	16'd22935;	oled_update = 0; end//C4,
           5'h12:	begin time_end =	16'd20428;	oled_update = 0; end//D4,
           5'h13:	begin time_end =	16'd18203;	oled_update = 0; end//E4,
           5'h14:	begin time_end =	16'd17181;	oled_update = 0; end//F4,
           5'h15:	begin time_end =	16'd15305;	oled_update = 0; end//G4,
           5'h16:	begin time_end =	16'd13635;	oled_update = 0; end//A4,
           5'h17:	begin time_end =	16'd12147;	oled_update = 0; end//B4,
               //小字一组21-27
           5'h21:	begin time_end =	16'd11464;	oled_update = 0; end//C5,
           5'h22:	begin time_end =	16'd10215;	oled_update = 0; end//D5,
           5'h23:	begin time_end =	16'd9100;	oled_update = 0; end//E5,
           5'h24:	begin time_end =	16'd8589;	oled_update = 0; end//F5,
           5'h25:	begin time_end =	16'd7652;	oled_update = 0; end//G5,
           5'h26:	begin time_end =	16'd6817;	oled_update = 0; end//A5,
           5'h27:	begin time_end =	16'd6073;	oled_update = 0; end//B5,
               //高过可听范围内频率，计为休止符
           5'h28:  begin time_end =	16'd100;	oled_update = 0; end
           default:begin time_end =	16'd100;	oled_update = 1; end
   		endcase
   end
   ```

## 上位机音乐处理及串口下发

1. 首先是制作音频。我这边使用[Logic Pro](https://www.apple.com.cn/logic-pro/)，选用黄霄雲的星辰大海，使用[音悦茶楼](https://space.bilibili.com/476481559)扒出来的[简谱](https://www.bilibili.com/video/BV1nr4y1K74v)，简单地制作了一段钢琴谱，并导出成mid文件

2. 然后使用python的mido模块解析处理mid文件，控制节奏并使用串口下发，代码如下

   ```python
   import serial
   import re
   import time
   import mido
   import operator
   
   def conv_str_2_dic(str):
       res = re.search(r'note_(.*) channel=(.*) note=(.*) velocity=(.*) time=(.*)', str)
       dic = {
           'noteType': res.group(1),
           'note': int(res.group(3)),
           'time': int(res.group(5))
       }
       return dic
   
   def conv_note_2_send(note):
       # 根据全全半全全全半列表
       # 大字组
       if note == 60:
           return 1
       # 全
       elif note == 62:
           return 2
       # 全
       elif note == 64:
           return 3
       # 半
       elif note == 65:
           return 4
       # 全
       elif note == 67:
           return 5
       # 全
       elif note == 69:
           return 6
       # 全
       elif note == 71:
           return 7
       # 半
       # 小字组和小字一组处理类似，代码省略
       else:
           return 0
   
   def play(dic):
       if dic['noteType'] == 'on':
           hex_str = bytes.fromhex("%.2d" % conv_note_2_send(dic['note']))
           ser.write(hex_str)
       elif dic['noteType'] == 'off':
           # bpm=100  八分音符为半拍，时长为1/2/100min = 0.3s 被计作240 故延迟需除以800
           time.sleep(dic['time'] / 800)
           hex_str = bytes.fromhex("28")
           ser.write(hex_str)
   
   def temp_alarm(ser):
       mid = mido.MidiFile("/Users/kai/Music/GarageBand/星辰大海-副歌.mid")
       for i, track in enumerate(mid.tracks):
           for msg in track[7:-1]:
               play(conv_str_2_dic(str(msg)))
       hex_str = bytes.fromhex("00")
       ser.write(hex_str)
   
   try:
       port = "/dev/tty.usbserial-14430"  # CH340
       baudrate = 9600
       ser = serial.Serial(port=port, baudrate=baudrate, timeout=5)
       while True:
           read = ser.readline().decode("utf-8")
           print(read)
           if operator.eq(read, 'TempAlarm!!\n'):
               temp_alarm(ser)
               time.sleep(10)
   except:
       print("serial port open failed!")
   ```

# 感悟与心得

## 不足之处

由于这是我第一次接触FPGA，写出来的程序必然有很多地方不是很好。模块之间的耦合性由于特殊的需求变得特别的高，有些地方为了达到任务要求充满了妥协。

## 心得体会

FPGA的开发与单片机裸机开发还是有许多的区别，FPGA的操作都是并行的，我认为在多任务并行方面比MCU的RTOS的伪并行效率要高上不少。

本次开发中，我也在学习蜂鸣器的使用时顺便学习了下乐理知识，作为一个工科生，我觉得乐理还是很好玩很有趣的。

## 小遗憾

温度传感器的温度显示一直偏高，猜测可能FPGA的热量和旁边蜂鸣器工作的热量干扰到了这个温度传感器。

蜂鸣器最高音域似乎只有C5？上到C5即破音。