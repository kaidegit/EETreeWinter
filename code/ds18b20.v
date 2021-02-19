// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module:DS18B20Z 
// 
// Author: Step
// 
// Description: Drive DS18B20Z to get temperature code
// 
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2015/11/11   |Initial ver
// --------------------------------------------------------------------
module DS18B20Z
(
	input				clk_in,			//系统时钟
	input				rst_n_in,		//系统复位，低有效
	inout				one_wire,		//DS18B20Z传感器单总线，双向管脚
	
	output	reg [15:0]	data_out,		//DS18B20Z有效温度数据输出
	output  reg         data_out_en
);
 
	/*
	本设计通过驱动DS18B20Z芯片获取温度数据，
	需要了解inout类型的接口如何实现双向通信，
	中间涉及各种不同的延时和寄存器指令操作，注释部分以作简要说明，更多详情需参考数据手册
	*/
 
	localparam	IDLE	=	3'd0;
	localparam	MAIN	=	3'd1;
	localparam	INIT	=	3'd2;
	localparam	WRITE	=	3'd3;
	localparam	READ	=	3'd4;
	localparam	DELAY	=	3'd5;

	// assign temp_raw_data = data_out;
 
	//计数器分频产生1MHz的时钟信号
	reg					clk_1mhz;
	reg		[2:0]		cnt_1mhz;
	// reg                 data_out;

	always@(posedge clk_in or negedge rst_n_in) begin
		if(!rst_n_in) begin
			cnt_1mhz <= 3'd0;
			clk_1mhz <= 1'b0;
		end else if(cnt_1mhz >= 3'd5) begin
			cnt_1mhz <= 3'd0;
			clk_1mhz <= ~clk_1mhz;	//产生1MHz分频
		end else begin
			cnt_1mhz <= cnt_1mhz + 1'b1;
		end
	end
 
	reg		[2:0]		cnt;
	reg					one_wire_buffer;
	reg		[3:0]		cnt_main;
	reg		[7:0]		data_wr;
	reg		[7:0]		data_wr_buffer;
	reg		[2:0]		cnt_init;
	reg		[19:0]		cnt_delay;
	reg		[19:0]		num_delay;
	reg		[3:0]		cnt_write;
	reg		[2:0]		cnt_read;
	reg		[15:0]		temperature;
	reg		[7:0]		temperature_buffer;
	reg		[2:0] 		state = IDLE;
	reg		[2:0] 		state_back = IDLE;
	//使用1MHz时钟信号做触发完成下面状态机的功能
	always@(posedge clk_1mhz or negedge rst_n_in) begin
		if(!rst_n_in) begin
			state <= IDLE;
			state_back <= IDLE;
			cnt <= 1'b0;
			cnt_main <= 1'b0;
			cnt_init <= 1'b0;
			cnt_write <= 1'b0;
			cnt_read <= 1'b0;
			cnt_delay <= 1'b0;
			one_wire_buffer <= 1'bz;
			temperature <= 16'h0;
			data_out_en <= 0;
		end else begin
			case(state)
				IDLE:begin		//IDLE状态，程序设计的软复位功能，各状态异常都会跳转到此状态
						state <= MAIN;	//软复位完成，跳转之MAIN状态重新工作
						state_back <= MAIN;
						cnt <= 1'b0;
						cnt_main <= 1'b0;
						cnt_init <= 1'b0;
						cnt_write <= 1'b0;
						cnt_read <= 1'b0;
						cnt_delay <= 1'b0;
						one_wire_buffer <= 1'bz;
					end
				MAIN:begin		//MAIN状态控制状态机在不同状态间跳转，实现完整的温度数据采集
						if(cnt_main >= 4'd11) cnt_main <= 1'b0;
						else cnt_main <= cnt_main + 1'b1;
						case(cnt_main)
							4'd0: begin state <= INIT; data_out_en <= 0; end	//跳转至INIT状态进行芯片的复位及验证
							4'd1: begin data_wr <= 8'hcc;state <= WRITE; end	//主设备发出跳转ROM指令
							4'd2: begin data_wr <= 8'h44;state <= WRITE; end	//主设备发出温度转换指令
							4'd3: begin num_delay <= 20'd750000;state <= DELAY;state_back <= MAIN; end	//延时750ms等待转换完成
 
							4'd4: begin state <= INIT; end	//跳转至INIT状态进行芯片的复位及验证
							4'd5: begin data_wr <= 8'hcc;state <= WRITE; end	//主设备发出跳转ROM指令
							4'd6: begin data_wr <= 8'hbe;state <= WRITE; end	//主设备发出读取温度指令
 
							4'd7: begin state <= READ; end	//跳转至READ状态进行单总线数据读取
							4'd8: begin temperature[7:0] <= temperature_buffer; end	//先读取的为低8位数据
 
							4'd9: begin state <= READ; end	//跳转至READ状态进行单总线数据读取
							4'd10: begin temperature[15:8] <= temperature_buffer; end	//后读取的为高8为数据
 
							4'd11: begin state <= IDLE;data_out <= temperature; data_out_en <= 1; end	//将完整的温度数据输出并重复以上所有操作
							default: state <= IDLE;
						endcase
					end
				INIT:begin		//INIT状态完成DS18B20Z芯片的复位及验证功能
						if(cnt_init >= 3'd6) cnt_init <= 1'b0;
						else cnt_init <= cnt_init + 1'b1;
						case(cnt_init)
							3'd0: begin one_wire_buffer <= 1'b0; end	//单总线复位脉冲拉低
							3'd1: begin num_delay <= 20'd500;state <= DELAY;state_back <= INIT; end	//复位脉冲保持拉低500us时间
							3'd2: begin one_wire_buffer <= 1'bz; end	//单总线复位脉冲释放，自动上拉
							3'd3: begin num_delay <= 20'd100;state <= DELAY;state_back <= INIT; end	//复位脉冲保持释放100us时间
							3'd4: begin if(one_wire) state <= IDLE; else state <= INIT; end	//根据单总线的存在检测结果判定是否继续
							3'd5: begin num_delay <= 20'd400;state <= DELAY;state_back <= INIT; end	//如果检测正常继续保持释放400us时间
							3'd6: begin state <= MAIN; end	//INIT状态操作完成，返回MAIN状态
							default: state <= IDLE;
						endcase
					end
				WRITE:begin		//按照DS18B20Z芯片单总线时序进行写操作
						if(cnt <= 3'd6) begin	//共需要发送8bit的数据，这里控制循环的次数
							if(cnt_write >= 4'd6) begin cnt_write <= 1'b1; cnt <= cnt + 1'b1; end
							else begin cnt_write <= cnt_write + 1'b1; cnt <= cnt; end
						end else begin
							if(cnt_write >= 4'd8) begin cnt_write <= 1'b0; cnt <= 1'b0; end	//两个变量都恢复初值
							else begin cnt_write <= cnt_write + 1'b1; cnt <= cnt; end
						end
						//对于WRITE状态中cnt_write来讲，执行过程为：0;[1~6]*8;7;8;
						case(cnt_write)
							//lock data_wr
							4'd0: begin data_wr_buffer <= data_wr; end	//将需要写出的数据缓存
							//发送 1bit 数据的用时在60~120us之间，参考数据手册
							4'd1: begin one_wire_buffer <= 1'b0; end	//总线拉低
							4'd2: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end	//延时2us时间，保证15us以内
							4'd3: begin one_wire_buffer <= data_wr_buffer[cnt]; end	//先发送数据最低位
							4'd4: begin num_delay <= 20'd80;state <= DELAY;state_back <= WRITE; end	//延时80us时间
							4'd5: begin one_wire_buffer <= 1'bz; end	//总线释放
							4'd6: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end	//延时2us时间
							//back to main
							4'd7: begin num_delay <= 20'd80;state <= DELAY;state_back <= WRITE; end	//延时80us时间
							4'd8: begin state <= MAIN; end	//返回MAIN状态
							default: state <= IDLE;
						endcase
					end
				READ:begin		//按照DS18B20Z芯片单总线时序进行读操作
						if(cnt <= 3'd6) begin	//共需要接收8bit的数据，这里控制循环的次数
							if(cnt_read >= 3'd5) begin cnt_read <= 1'b0; cnt <= cnt + 1'b1; end
							else begin cnt_read <= cnt_read + 1'b1; cnt <= cnt; end
						end else begin
							if(cnt_read >= 3'd6) begin cnt_read <= 1'b0; cnt <= 1'b0; end	//两个变量都恢复初值
							else begin cnt_read <= cnt_read + 1'b1; cnt <= cnt; end
						end
						case(cnt_read)
							//读取 1bit 数据的用时在60~120us之间，总线拉低后15us时间内读取数据，参考数据手册
							3'd0: begin one_wire_buffer <= 1'b0; end	//总线拉低
							3'd1: begin num_delay <= 20'd2;state <= DELAY;state_back <= READ; end	//延时2us时间
							3'd2: begin one_wire_buffer <= 1'bz; end	//总线释放
							3'd3: begin num_delay <= 20'd5;state <= DELAY;state_back <= READ; end	//延时5us时间
							3'd4: begin temperature_buffer[cnt] <= one_wire; end	//读取DS18B20Z返回的总线数据，先收最低位
							3'd5: begin num_delay <= 20'd60;state <= DELAY;state_back <= READ; end	//延时60us时间
							//back to main
							3'd6: begin state <= MAIN; end	//返回MAIN状态
							default: state <= IDLE;
						endcase
					end
				DELAY:begin		//延时控制
						if(cnt_delay >= num_delay) begin	//延时控制，延时时间由num_delay指定
							cnt_delay <= 1'b0;
							state <= state_back; 	//很多状态都需要延时，延时后返回哪个状态由state_back指定
						end else cnt_delay <= cnt_delay + 1'b1;
					end
			endcase
		end
	end
 
	assign	one_wire = one_wire_buffer;
 
endmodule