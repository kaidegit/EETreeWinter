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
    input					clk_in,		//ϵͳʱ��
    input					rst_n_in,	//ϵͳ��λ������Ч
    input					tone_en,	//������ʹ���ź�
    input			[4:0]	tone,		//����������

    output	reg				piano_out,	//�������������
	output  reg oled_update
);
/*
��Դ���������Է�����ͬ�����ڣ���������𶯵�Ƶ�ʣ����ڷ����������źŵ�Ƶ�ʣ���أ�
Ϊ���÷����������źŲ�����ͬ��Ƶ�ʣ�����ʹ�ü�������������Ƶ��ʵ�֣���ͬ�����ڿ��ƶ�Ӧ��ͬ�ļ�����ֵ����Ƶϵ����
���������ݼ�����ֵ��������Ƶ�����������������ź�
*/
reg [15:0] time_end;
//���ݲ�ͬ�����ڿ��ƣ�ѡ���Ӧ�ļ�����ֵ����Ƶϵ����
//����1��Ƶ��Ϊ261.6Hz�������������ź�����ӦΪ12MHz/261.6Hz = 45871.5��
//��Ϊ������з����������ź��ǰ����������ڷ�ת�ģ����Լ�����ֵ = 45871.5/2 = 22936
//��Ҫ����22936����������ΧΪ0 ~ (22936-1)������time_end = 22935
always@(tone) begin
	case(tone)
        //������1-7
		5'h1:	begin time_end =	16'd45867;  oled_update = 0; end//C3,
		5'h2:	begin time_end =	16'd40863;  oled_update = 0; end//D3,
		5'h3:	begin time_end =	16'd36405;  oled_update = 0; end//E3,
		5'h4:	begin time_end =	16'd34362;  oled_update = 0; end//F3,
		5'h5:	begin time_end =	16'd30613;  oled_update = 0; end//G3,
		5'h6:	begin time_end =	16'd27273;  oled_update = 0; end//A3,
		5'h7:	begin time_end =	16'd25742;  oled_update = 0; end//B3,
        //С����11-17
		5'h11:	begin time_end =	16'd22935;	oled_update = 0; end//C4,
		5'h12:	begin time_end =	16'd20428;	oled_update = 0; end//D4,
		5'h13:	begin time_end =	16'd18203;	oled_update = 0; end//E4,
		5'h14:	begin time_end =	16'd17181;	oled_update = 0; end//F4,
		5'h15:	begin time_end =	16'd15305;	oled_update = 0; end//G4,
		5'h16:	begin time_end =	16'd13635;	oled_update = 0; end//A4,
		5'h17:	begin time_end =	16'd12147;	oled_update = 0; end//B4,
        //С��һ��21-27
		5'h21:	begin time_end =	16'd11464;	oled_update = 0; end//C5,
		5'h22:	begin time_end =	16'd10215;	oled_update = 0; end//D5,
		5'h23:	begin time_end =	16'd9100;	oled_update = 0; end//E5,
		5'h24:	begin time_end =	16'd8589;	oled_update = 0; end//F5,
		5'h25:	begin time_end =	16'd7652;	oled_update = 0; end//G5,
		5'h26:	begin time_end =	16'd6817;	oled_update = 0; end//A5,
		5'h27:	begin time_end =	16'd6073;	oled_update = 0; end//B5,
        //�߹�������Χ��Ƶ�ʣ���Ϊ��ֹ��
		5'h28:  begin time_end =	16'd100;	oled_update = 0; end
		default:begin time_end =	16'd100;	oled_update = 1; end
	endcase
end
 
reg [17:0] time_cnt;
//��������ʹ��ʱ�����������ռ�����ֵ����Ƶϵ��������
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
 
//���ݼ����������ڣ���ת�����������ź�
always@(posedge clk_in or negedge rst_n_in) begin
	if(!rst_n_in) begin
		piano_out <= 1'b0;
	end else if(time_cnt==time_end) begin
		piano_out <= ~piano_out;	//���������������ת�����η�תΪ1Hz
	end else begin
		piano_out <= piano_out;
	end
end
 
endmodule