module uart2tone (
    input               sys_clk,
    input               sys_rst_n,
    input               uart_done,
    input   [7:0]       uart_data,
    input	 [3:0]	    time_hour_high,
	input	 [3:0]	    time_hour_low,
	input	 [3:0]	    time_min_high,
	input	 [3:0]	    time_min_low,

    output  reg [4:0]   tone
);

reg recv_done_d0;
reg recv_done_d1;

wire recv_done_flag;

assign recv_done_flag = (~recv_done_d1) & recv_done_d0;

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

reg [6:0] alarm_cnt;
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
                tone = 0;
            end
        end else begin
            alarm_cnt = 0;
        end
    end
end

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
    
endmodule