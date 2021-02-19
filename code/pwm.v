// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Beeper
// 
// Author: Step
// 
// Description: Beeper
// 
// Web: www.stepfapga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module Beeper
(
    input					clk_in,		//系统时钟
    input					rst_n_in,	//系统复位，低有效
    input					tone_en,	//蜂鸣器使能信号
    input			[4:0]	tone,		//蜂鸣器音调

    output	reg				piano_out,	//蜂鸣器控制输出
	output  reg oled_update
);
/*
无源蜂鸣器可以发出不同的音节，与蜂鸣器震动的频率（等于蜂鸣器控制信号的频率）相关，
为了让蜂鸣器控制信号产生不同的频率，我们使用计数器计数（分频）实现，不同的音节控制对应不同的计数终值（分频系数）
计数器根据计数终值计数并分频，产生蜂鸣器控制信号
*/
reg [15:0] time_end;
//根据不同的音节控制，选择对应的计数终值（分频系数）
//低音1的频率为261.6Hz，蜂鸣器控制信号周期应为12MHz/261.6Hz = 45871.5，
//因为本设计中蜂鸣器控制信号是按计数器周期翻转的，所以几种终值 = 45871.5/2 = 22936
//需要计数22936个，计数范围为0 ~ (22936-1)，所以time_end = 22935
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
 
reg [17:0] time_cnt;
//当蜂鸣器使能时，计数器按照计数终值（分频系数）计数
always@(posedge clk_in or negedge rst_n_in) begin
	if(!rst_n_in) begin
		time_cnt <= 1'b0;
	end else if(!tone_en) begin
		time_cnt <= 1'b0;
	end else if(time_cnt>=time_end) begin
		time_cnt <= 1'b0;
	end else begin
		time_cnt <= time_cnt + 1'b1;
	end
end
 
//根据计数器的周期，翻转蜂鸣器控制信号
always@(posedge clk_in or negedge rst_n_in) begin
	if(!rst_n_in) begin
		piano_out <= 1'b0;
	end else if(time_cnt==time_end) begin
		piano_out <= ~piano_out;	//蜂鸣器控制输出翻转，两次翻转为1Hz
	end else begin
		piano_out <= piano_out;
	end
end
 
endmodule