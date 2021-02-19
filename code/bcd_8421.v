
////////////////////////////////////////////////////////////////////////
// Author        : EmbedFire
// Create Date   : 2019/07/10
// Module Name   : bcd_8421
// Project Name  : top_seg_595
// Target Devices: Altera EP4CE10F17C8N
// Tool Versions : Quartus 13.0
// Description   : 二进制数转BCD�
//
// Revision      : V1.0
// Additional Comments:
// 
// 实验平台: 野火_征途系列FPGA开发板
// 公司    : http://www.embedfire.com
// 论坛    : http://www.firebbs.cn
// 淘宝    : https://fire-stm32.taobao.com
////////////////////////////////////////////////////////////////////////

module  bcd_8421
(
    input   wire            sys_clk     ,   //系统时钟，频�0MHz
    input   wire            sys_rst_n   ,   //复位信号，低电平有效
    input       [15:0]  data        ,   //输入需要转换的数据

    output  reg     [3:0]   unit        ,   //个位BCD�
    output  reg     [3:0]   ten         ,   //十位BCD�
    output  reg     [3:0]   hun         ,   //百位BCD�
    output  reg     [3:0]   tho         ,   //千位BCD�
    output  reg     [3:0]   t_tho       ,   //万位BCD�
    output  reg     [3:0]   h_hun           //十万位BCD�
);

always @(posedge sys_clk or negedge sys_rst_n) begin
    //最后四位为小数
    case(data[3:0])
        4'b0000: unit <= 4'd0;
        4'b0001: unit <= 4'd0;
        4'b0010: unit <= 4'd1;
        4'b0011: unit <= 4'd1;
        4'b0100: unit <= 4'd2;
        4'b0101: unit <= 4'd3;
        4'b0110: unit <= 4'd3;
        4'b0111: unit <= 4'd4;
        4'b1000: unit <= 4'd5;
        4'b1001: unit <= 4'd5;
        4'b1010: unit <= 4'd6;
        4'b1011: unit <= 4'd6;
        4'b1100: unit <= 4'd7;
        4'b1101: unit <= 4'd8;
        4'b1110: unit <= 4'd8;
        4'b1111: unit <= 4'd9;
        default: unit <= 4'd0;
    endcase
    //只处理0-40摄氏度数据
    case (data[11:4])
        8'b0	    : begin hun = 4'd0; ten = 4'd0; end
        8'b1	    : begin hun = 4'd0; ten = 4'd1; end
        8'b10	    : begin hun = 4'd0; ten = 4'd2; end
        8'b11	    : begin hun = 4'd0; ten = 4'd3; end
        8'b100	    : begin hun = 4'd0; ten = 4'd4; end
        8'b101	    : begin hun = 4'd0; ten = 4'd5; end
        8'b110	    : begin hun = 4'd0; ten = 4'd6; end
        8'b111	    : begin hun = 4'd0; ten = 4'd7; end
        8'b1000	    : begin hun = 4'd0; ten = 4'd8; end
        8'b1001	    : begin hun = 4'd0; ten = 4'd9; end
        8'b1010	    : begin hun = 4'd1; ten = 4'd0; end
        8'b1011	    : begin hun = 4'd1; ten = 4'd1; end
        8'b1100	    : begin hun = 4'd1; ten = 4'd2; end
        8'b1101	    : begin hun = 4'd1; ten = 4'd3; end
        8'b1110	    : begin hun = 4'd1; ten = 4'd4; end
        8'b1111	    : begin hun = 4'd1; ten = 4'd5; end
        8'b10000	: begin hun = 4'd1; ten = 4'd6; end
        8'b10001	: begin hun = 4'd1; ten = 4'd7; end
        8'b10010	: begin hun = 4'd1; ten = 4'd8; end
        8'b10011	: begin hun = 4'd1; ten = 4'd9; end
        8'b10100	: begin hun = 4'd2; ten = 4'd0; end
        8'b10101	: begin hun = 4'd2; ten = 4'd1; end
        8'b10110	: begin hun = 4'd2; ten = 4'd2; end
        8'b10111	: begin hun = 4'd2; ten = 4'd3; end
        8'b11000	: begin hun = 4'd2; ten = 4'd4; end
        8'b11001	: begin hun = 4'd2; ten = 4'd5; end
        8'b11010	: begin hun = 4'd2; ten = 4'd6; end
        8'b11011	: begin hun = 4'd2; ten = 4'd7; end
        8'b11100	: begin hun = 4'd2; ten = 4'd8; end
        8'b11101	: begin hun = 4'd2; ten = 4'd9; end
        8'b11110	: begin hun = 4'd3; ten = 4'd0; end
        8'b11111	: begin hun = 4'd3; ten = 4'd1; end
        8'b100000	: begin hun = 4'd3; ten = 4'd2; end
        8'b100001	: begin hun = 4'd3; ten = 4'd3; end
        8'b100010	: begin hun = 4'd3; ten = 4'd4; end
        8'b100011	: begin hun = 4'd3; ten = 4'd5; end
        8'b100100	: begin hun = 4'd3; ten = 4'd6; end
        8'b100101	: begin hun = 4'd3; ten = 4'd7; end
        8'b100110	: begin hun = 4'd3; ten = 4'd8; end
        8'b100111	: begin hun = 4'd3; ten = 4'd9; end
        default     : begin hun = 4'd0; ten = 4'd0; end
    endcase
end

// //********************************************************************//
// //******************** Parameter And Internal Signal *****************//
// //********************************************************************//

// //reg   define
// reg     [4:0]   cnt_shift   ;   //移位判断计数�
// reg     [43:0]  data_shift  ;   //移位判断数据寄存�
// reg             shift_flag  ;   //移位判断标志信号

// //********************************************************************//
// //***************************** Main Code ****************************//
// //********************************************************************//

// //cnt_shift:��1循环计数
// always@(posedge sys_clk or negedge sys_rst_n)
//     if(sys_rst_n == 1'b0)
//         cnt_shift   <=  5'd0;
//     else    if((cnt_shift == 5'd21) && (shift_flag == 1'b1))
//         cnt_shift   <=  5'd0;
//     else    if(shift_flag == 1'b1)
//         cnt_shift   <=  cnt_shift + 1'b1;
//     else
//         cnt_shift   <=  cnt_shift;
       
// //data_shift：计数器�时赋初值，计数器为1~20时进行移位判断操�
// always@(posedge sys_clk or negedge sys_rst_n)
//     if(sys_rst_n == 1'b0)
//         data_shift  <=  44'b0;
//     else    if(cnt_shift == 5'd0)
//         data_shift  <=  {24'b0,data};
//     else    if((cnt_shift <= 20) && (shift_flag == 1'b0))
//         begin
//             data_shift[23:20]   <=  (data_shift[23:20] > 4) ? (data_shift[23:20] + 2'd3) : (data_shift[23:20]);
//             data_shift[27:24]   <=  (data_shift[27:24] > 4) ? (data_shift[27:24] + 2'd3) : (data_shift[27:24]);
//             data_shift[31:28]   <=  (data_shift[31:28] > 4) ? (data_shift[31:28] + 2'd3) : (data_shift[31:28]);
//             data_shift[35:32]   <=  (data_shift[35:32] > 4) ? (data_shift[35:32] + 2'd3) : (data_shift[35:32]);
//             data_shift[39:36]   <=  (data_shift[39:36] > 4) ? (data_shift[39:36] + 2'd3) : (data_shift[39:36]);
//             data_shift[43:40]   <=  (data_shift[43:40] > 4) ? (data_shift[43:40] + 2'd3) : (data_shift[43:40]);
//         end
//     else    if((cnt_shift <= 20) && (shift_flag == 1'b1))
//         data_shift  <=  data_shift << 1;
//     else
//         data_shift  <=  data_shift;

// //shift_flag：移位判断标志信号，用于控制移位判断的先后顺�
// always@(posedge sys_clk or negedge sys_rst_n)
//     if(sys_rst_n == 1'b0)
//         shift_flag  <=  1'b0;
//     else
//         shift_flag  <=  ~shift_flag;

// //当计数器等于20时，移位判断操作完成，对各个位数的BCD码进行赋�
// always@(posedge sys_clk or negedge sys_rst_n)
//     if(sys_rst_n == 1'b0)
//         begin
//             unit    <=  4'b0;
//             ten     <=  4'b0;
//             hun     <=  4'b0;
//             tho     <=  4'b0;
//             t_tho   <=  4'b0;
//             h_hun   <=  4'b0;
//         end
//     else    if(cnt_shift == 5'd21)
//         begin
//             unit    <=  data_shift[23:20];
//             ten     <=  data_shift[27:24];
//             hun     <=  data_shift[31:28];
//             tho     <=  data_shift[35:32];
//             t_tho   <=  data_shift[39:36];
//             h_hun   <=  data_shift[43:40];
//         end

endmodule