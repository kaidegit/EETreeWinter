module ds18b20_top(
    input               sys_clk,            //外部12M时钟
    input               sys_rst_n,          //外部复位信号，低有效
	inout				one_wire,		//DS18B20Z传感器单总线，双向管脚
    input               hour_a,
    input               hour_d,
    input               min_a,
    input               min_d,
    input               uart_rxd,
    input               tone_en,

    output				oled_csn,	//OLCD液晶屏使能
	output				oled_rst,	//OLCD液晶屏复位
	output				oled_dcn,	//OLCD数据指令控制
	output				oled_clk,	//OLCD时钟信号
	output				oled_dat,	//OLCD数据信号
    output              uart_txd,    //UART发送端口
    output              led,
    output              piano_out
    );

//parameter define
    
//wire define   
wire [15:0] temp_raw_data;
wire temp_data_out_en;
wire [3:0] temp_unit;
wire [3:0] temp_ten;
wire [3:0] temp_hun;
wire [3:0] temp_tho;
wire [3:0] temp_t_tho;
wire [3:0] temp_h_hun;
wire uart_en;
wire [7:0] uart_byte;
wire uart_tx_busy;
wire en_flag;
wire tx_flag;
wire [7:0] tx_data;
wire [3:0] tx_cnt;
wire [3:0] time_hour_high;
wire [3:0] time_hour_low;
wire [3:0] time_min_high;
wire [3:0] time_min_low;
wire uart_done;
wire rx_flag;
wire [3:0] rx_cnt;
wire [7:0] rxdata;
wire [7:0] uart_data;
wire tone_en;
wire [4:0] tone;
wire oled_update;

//*****************************************************
//**                    main code
//*****************************************************

//DS18B20 read module
DS18B20Z m_DS18B20Z(                 
    .clk_in        (sys_clk), 
    .rst_n_in      (sys_rst_n),
    .one_wire      (one_wire),

    .data_out (temp_raw_data),
    .data_out_en   (temp_data_out_en)
    );

//bcd-8421 converter module
bcd_8421 m_bcd_8421(
    .sys_clk       (sys_clk),
    .sys_rst_n     (sys_rst_n),
    .data          (temp_raw_data),

    .unit          (temp_unit),
    .ten           (temp_ten),
    .hun           (temp_hun),
    .tho           (temp_tho),
    .t_tho         (temp_t_tho),
    .h_hun         (temp_h_hun)
);

//oled display module
OLED12832 m_OLED12832(                 
    .clk           (sys_clk),
    .rst_n         (sys_rst_n),
    .temp_unit     (temp_unit),
    .temp_ten      (temp_ten),
    .temp_hun      (temp_hun),
    .time_hour_high (time_hour_high),
    .time_hour_low  (time_hour_low),
    .time_min_high  (time_min_high),
    .time_min_low   (time_min_low),
    .oled_update    (oled_update),
     
    .oled_csn      (oled_csn),
    .oled_rst      (oled_rst),
    .oled_dcn      (oled_dcn),
    .oled_clk      (oled_clk),
    .oled_dat      (oled_dat)
    );

uart_tx m_uart_tx(
    .clk_in         (sys_clk),
    .temp_hun       (temp_hun),
    .temp_ten       (temp_ten),
    .temp_unit      (temp_unit),
    .time_hour_high (time_hour_high),
    .time_hour_low  (time_hour_low),
    .time_min_high  (time_min_high),
    .time_min_low   (time_min_low),

    .uart_out       (uart_txd)
);
// //uart send one byte
// uart_send m_uart_send(
//     .sys_clk       (sys_clk),
//     .sys_rst_n (sys_rst_n),
//     .uart_en (uart_en),
//     .uart_din  (uart_byte),

//     .uart_tx_busy  (uart_tx_busy),
//     .uart_txd       (uart_txd)

// );
// //uart send temperature
// uart_send_temp m_uart_send_temp(
//     .sys_clk       (sys_clk),
//     .temp_upen     (temp_upen),
//     .temp_unit     (temp_unit),
//     .temp_ten      (temp_ten),
//     .temp_hun      (temp_hun),
//     .uart_tx_busy  (uart_tx_busy),

//     .uart_en       (uart_en),
//     .uart_din      (uart_byte),
//     .led            (led)
// );
uart_recv m_uart_recv(
    .sys_clk        (sys_clk),
    .sys_rst_n      (sys_rst_n),
    .uart_rxd       (uart_rxd),

    .uart_done      (uart_done),
    .rx_flag        (rx_flag),
    .rx_cnt         (rx_cnt),
    .rxdata         (rxdata),
    .uart_data      (uart_data)
);

Beeper m_Beeper(
    .clk_in         (sys_clk),
    .rst_n_in       (sys_rst_n),
    .tone_en        (tone_en),
    .tone           (tone),

    .piano_out      (piano_out),
    .oled_update    (oled_update)
);

uart2tone m_uart2tone(
    .sys_clk        (sys_clk),
    .sys_rst_n      (sys_rst_n),
    .uart_done      (uart_done),
    .uart_data      (uart_data),
    .time_hour_high (time_hour_high),
    .time_hour_low  (time_hour_low),
    .time_min_high  (time_min_high),
    .time_min_low   (time_min_low),

    .tone           (tone)
);

clock m_clock(
    .clk            (sys_clk),
    .rst_n          (sys_rst_n),
    .hour_a         (hour_a),
    .hour_d         (hour_d),
    .min_a          (min_a),
    .min_d          (min_d),

    .time_hour_high (time_hour_high),
    .time_hour_low  (time_hour_low),
    .time_min_high  (time_min_high),
    .time_min_low   (time_min_low)
);
    
endmodule