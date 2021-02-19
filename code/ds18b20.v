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
	input				clk_in,			//ϵͳʱ��
	input				rst_n_in,		//ϵͳ��λ������Ч
	inout				one_wire,		//DS18B20Z�����������ߣ�˫��ܽ�
	
	output	reg [15:0]	data_out,		//DS18B20Z��Ч�¶��������
	output  reg         data_out_en
);
 
	/*
	�����ͨ������DS18B20ZоƬ��ȡ�¶����ݣ�
	��Ҫ�˽�inout���͵Ľӿ����ʵ��˫��ͨ�ţ�
	�м��漰���ֲ�ͬ����ʱ�ͼĴ���ָ�������ע�Ͳ���������Ҫ˵��������������ο������ֲ�
	*/
 
	localparam	IDLE	=	3'd0;
	localparam	MAIN	=	3'd1;
	localparam	INIT	=	3'd2;
	localparam	WRITE	=	3'd3;
	localparam	READ	=	3'd4;
	localparam	DELAY	=	3'd5;

	// assign temp_raw_data = data_out;
 
	//��������Ƶ����1MHz��ʱ���ź�
	reg					clk_1mhz;
	reg		[2:0]		cnt_1mhz;
	// reg                 data_out;

	always@(posedge clk_in or negedge rst_n_in) begin
		if(!rst_n_in) begin
			cnt_1mhz <= 3'd0;
			clk_1mhz <= 1'b0;
		end else if(cnt_1mhz >= 3'd5) begin
			cnt_1mhz <= 3'd0;
			clk_1mhz <= ~clk_1mhz;	//����1MHz��Ƶ
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
	//ʹ��1MHzʱ���ź��������������״̬���Ĺ���
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
				IDLE:begin		//IDLE״̬��������Ƶ���λ���ܣ���״̬�쳣������ת����״̬
						state <= MAIN;	//��λ��ɣ���ת֮MAIN״̬���¹���
						state_back <= MAIN;
						cnt <= 1'b0;
						cnt_main <= 1'b0;
						cnt_init <= 1'b0;
						cnt_write <= 1'b0;
						cnt_read <= 1'b0;
						cnt_delay <= 1'b0;
						one_wire_buffer <= 1'bz;
					end
				MAIN:begin		//MAIN״̬����״̬���ڲ�ͬ״̬����ת��ʵ���������¶����ݲɼ�
						if(cnt_main >= 4'd11) cnt_main <= 1'b0;
						else cnt_main <= cnt_main + 1'b1;
						case(cnt_main)
							4'd0: begin state <= INIT; data_out_en <= 0; end	//��ת��INIT״̬����оƬ�ĸ�λ����֤
							4'd1: begin data_wr <= 8'hcc;state <= WRITE; end	//���豸������תROMָ��
							4'd2: begin data_wr <= 8'h44;state <= WRITE; end	//���豸�����¶�ת��ָ��
							4'd3: begin num_delay <= 20'd750000;state <= DELAY;state_back <= MAIN; end	//��ʱ750ms�ȴ�ת�����
 
							4'd4: begin state <= INIT; end	//��ת��INIT״̬����оƬ�ĸ�λ����֤
							4'd5: begin data_wr <= 8'hcc;state <= WRITE; end	//���豸������תROMָ��
							4'd6: begin data_wr <= 8'hbe;state <= WRITE; end	//���豸������ȡ�¶�ָ��
 
							4'd7: begin state <= READ; end	//��ת��READ״̬���е��������ݶ�ȡ
							4'd8: begin temperature[7:0] <= temperature_buffer; end	//�ȶ�ȡ��Ϊ��8λ����
 
							4'd9: begin state <= READ; end	//��ת��READ״̬���е��������ݶ�ȡ
							4'd10: begin temperature[15:8] <= temperature_buffer; end	//���ȡ��Ϊ��8Ϊ����
 
							4'd11: begin state <= IDLE;data_out <= temperature; data_out_en <= 1; end	//���������¶�����������ظ��������в���
							default: state <= IDLE;
						endcase
					end
				INIT:begin		//INIT״̬���DS18B20ZоƬ�ĸ�λ����֤����
						if(cnt_init >= 3'd6) cnt_init <= 1'b0;
						else cnt_init <= cnt_init + 1'b1;
						case(cnt_init)
							3'd0: begin one_wire_buffer <= 1'b0; end	//�����߸�λ��������
							3'd1: begin num_delay <= 20'd500;state <= DELAY;state_back <= INIT; end	//��λ���屣������500usʱ��
							3'd2: begin one_wire_buffer <= 1'bz; end	//�����߸�λ�����ͷţ��Զ�����
							3'd3: begin num_delay <= 20'd100;state <= DELAY;state_back <= INIT; end	//��λ���屣���ͷ�100usʱ��
							3'd4: begin if(one_wire) state <= IDLE; else state <= INIT; end	//���ݵ����ߵĴ��ڼ�����ж��Ƿ����
							3'd5: begin num_delay <= 20'd400;state <= DELAY;state_back <= INIT; end	//�������������������ͷ�400usʱ��
							3'd6: begin state <= MAIN; end	//INIT״̬������ɣ�����MAIN״̬
							default: state <= IDLE;
						endcase
					end
				WRITE:begin		//����DS18B20ZоƬ������ʱ�����д����
						if(cnt <= 3'd6) begin	//����Ҫ����8bit�����ݣ��������ѭ���Ĵ���
							if(cnt_write >= 4'd6) begin cnt_write <= 1'b1; cnt <= cnt + 1'b1; end
							else begin cnt_write <= cnt_write + 1'b1; cnt <= cnt; end
						end else begin
							if(cnt_write >= 4'd8) begin cnt_write <= 1'b0; cnt <= 1'b0; end	//�����������ָ���ֵ
							else begin cnt_write <= cnt_write + 1'b1; cnt <= cnt; end
						end
						//����WRITE״̬��cnt_write������ִ�й���Ϊ��0;[1~6]*8;7;8;
						case(cnt_write)
							//lock data_wr
							4'd0: begin data_wr_buffer <= data_wr; end	//����Ҫд�������ݻ���
							//���� 1bit ���ݵ���ʱ��60~120us֮�䣬�ο������ֲ�
							4'd1: begin one_wire_buffer <= 1'b0; end	//��������
							4'd2: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end	//��ʱ2usʱ�䣬��֤15us����
							4'd3: begin one_wire_buffer <= data_wr_buffer[cnt]; end	//�ȷ����������λ
							4'd4: begin num_delay <= 20'd80;state <= DELAY;state_back <= WRITE; end	//��ʱ80usʱ��
							4'd5: begin one_wire_buffer <= 1'bz; end	//�����ͷ�
							4'd6: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end	//��ʱ2usʱ��
							//back to main
							4'd7: begin num_delay <= 20'd80;state <= DELAY;state_back <= WRITE; end	//��ʱ80usʱ��
							4'd8: begin state <= MAIN; end	//����MAIN״̬
							default: state <= IDLE;
						endcase
					end
				READ:begin		//����DS18B20ZоƬ������ʱ����ж�����
						if(cnt <= 3'd6) begin	//����Ҫ����8bit�����ݣ��������ѭ���Ĵ���
							if(cnt_read >= 3'd5) begin cnt_read <= 1'b0; cnt <= cnt + 1'b1; end
							else begin cnt_read <= cnt_read + 1'b1; cnt <= cnt; end
						end else begin
							if(cnt_read >= 3'd6) begin cnt_read <= 1'b0; cnt <= 1'b0; end	//�����������ָ���ֵ
							else begin cnt_read <= cnt_read + 1'b1; cnt <= cnt; end
						end
						case(cnt_read)
							//��ȡ 1bit ���ݵ���ʱ��60~120us֮�䣬�������ͺ�15usʱ���ڶ�ȡ���ݣ��ο������ֲ�
							3'd0: begin one_wire_buffer <= 1'b0; end	//��������
							3'd1: begin num_delay <= 20'd2;state <= DELAY;state_back <= READ; end	//��ʱ2usʱ��
							3'd2: begin one_wire_buffer <= 1'bz; end	//�����ͷ�
							3'd3: begin num_delay <= 20'd5;state <= DELAY;state_back <= READ; end	//��ʱ5usʱ��
							3'd4: begin temperature_buffer[cnt] <= one_wire; end	//��ȡDS18B20Z���ص��������ݣ��������λ
							3'd5: begin num_delay <= 20'd60;state <= DELAY;state_back <= READ; end	//��ʱ60usʱ��
							//back to main
							3'd6: begin state <= MAIN; end	//����MAIN״̬
							default: state <= IDLE;
						endcase
					end
				DELAY:begin		//��ʱ����
						if(cnt_delay >= num_delay) begin	//��ʱ���ƣ���ʱʱ����num_delayָ��
							cnt_delay <= 1'b0;
							state <= state_back; 	//�ܶ�״̬����Ҫ��ʱ����ʱ�󷵻��ĸ�״̬��state_backָ��
						end else cnt_delay <= cnt_delay + 1'b1;
					end
			endcase
		end
	end
 
	assign	one_wire = one_wire_buffer;
 
endmodule