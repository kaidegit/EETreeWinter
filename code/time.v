module clock(
	input				clk,		//12MHz系统时钟
	input				rst_n,
    input               hour_a,
    input               hour_d,
    input               min_a,
    input               min_d,

    output reg [3:0] time_hour_high,
    output reg [3:0] time_hour_low,
    output reg [3:0] time_min_high,
    output reg [3:0] time_min_low
);

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

endmodule