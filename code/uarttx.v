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

always @(posedge clk_en) begin
    if ((temp_hun * 10 + temp_ten ) >= 35) begin
        uart_data = {  
            1'd1,8'd10,1'd0,                   //return
            1'd1,8'd33,1'd0,                   //!
            1'd1,8'd33,1'd0,                   //!
            1'd1,8'd109,1'd0,                  //m
            1'd1,8'd114,1'd0,                  //r
            1'd1,8'd97,1'd0,                   //a
            1'd1,8'd108,1'd0,                  //l
            1'd1,8'd65,1'd0,                   //A
            1'd1,8'd112,1'd0,                  //p
            1'd1,8'd109,1'd0,                  //m
            1'd1,8'd101,1'd0,                  //e
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