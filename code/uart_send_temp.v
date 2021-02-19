module uart_send_temp (
    input	      sys_clk,                  //系统时钟
    input         temp_upen,                //系统复位，低电平有效
    input    [3:0]      temp_unit,
	input    [3:0]      temp_ten,
	input    [3:0]      temp_hun,

    input               uart_tx_busy,
    output   reg           uart_en,                  //发送使能信�    
	output   reg [7:0]      uart_din,                  //待发送数�
    output   reg              led
	);

parameter  CLK_FREQ = 12_000_000;
localparam IDLE = 6'h1, MAIN = 6'h2, SEND = 6'h4, DELAY = 6'h8, DELAYS = 6'h10;

reg					clk_1mhz;
reg		[17:0]		cnt_1mhz;
reg [24:0] cnt_1s;
reg [5:0] state;
reg [3:0] sent;
reg [5:0] cnt_delay;
reg [23:0] clk_1s_cnt;
// send temperature
always@(posedge sys_clk or negedge temp_upen) begin
    if (!temp_upen) begin
        state = IDLE;
        sent = 0;
    end
    else begin
        case (state)
            IDLE: begin
                sent = 0;
                uart_en = 0;
                clk_1s_cnt = 0;
                state = MAIN;
            end 
            MAIN: begin
                case (sent)
                    0: begin      //send hun
                        uart_din = { 4'd3, (temp_hun - 4'd1)};
                        sent = 1;
                        state = SEND;
                    end
                    1: begin      //send ten
                        uart_din = { 4'd3, temp_ten };
                        sent = 2;
                        state = SEND;
                    end
                    2: begin      //send dot 
                        uart_din = 8'd46;
                        sent = 3;
                        state = SEND; 
                    end
                    3: begin      //send unit
                        uart_din = { 4'd3, temp_unit };
                        sent = 4;
                        state = SEND;  
                    end
                    4: begin      //send return
                        uart_din = 8'd10;
                        sent = 0;
                        state = SEND;  
                    end
                    5: begin
                        sent = 0;
                        uart_din = 0;
                        state = DELAYS;
                    end
                    default: 
                        state = IDLE;
                endcase
            end
            SEND: begin
                if (~uart_tx_busy) begin
                    uart_en = 1;
                    state = DELAY;
                end
                else begin
                    uart_en = 0;
                    state = SEND;
                end
            end
            DELAY: begin
                if (uart_tx_busy) begin
                    uart_en = 0;
                    state = DELAY;
                end else
                    state = MAIN;
            end
            DELAYS: begin
                if (clk_1s_cnt <= 1_00_000) begin
                    clk_1s_cnt = clk_1s_cnt + 1;
                    led = 1;
                    state = DELAYS;
                end else begin
                    clk_1s_cnt = 0;
                    led = 0;
                    state = MAIN;
                end
            end
            default: 
                state = IDLE;
        endcase
    end
end

endmodule