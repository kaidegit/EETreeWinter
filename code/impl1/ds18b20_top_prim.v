// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Fri Feb 19 19:37:28 2021
//
// Verilog Description of module ds18b20_top
//

module ds18b20_top (sys_clk, sys_rst_n, one_wire, hour_a, hour_d, 
            min_a, min_d, uart_rxd, tone_en, oled_csn, oled_rst, 
            oled_dcn, oled_clk, oled_dat, uart_txd, led, piano_out) /* synthesis syn_module_defined=1 */ ;   // c:/fpga/ds18b20/top.v(1[8:19])
    input sys_clk;   // c:/fpga/ds18b20/top.v(2[25:32])
    input sys_rst_n;   // c:/fpga/ds18b20/top.v(3[25:34])
    inout one_wire;   // c:/fpga/ds18b20/top.v(4[11:19])
    input hour_a;   // c:/fpga/ds18b20/top.v(5[25:31])
    input hour_d;   // c:/fpga/ds18b20/top.v(6[25:31])
    input min_a;   // c:/fpga/ds18b20/top.v(7[25:30])
    input min_d;   // c:/fpga/ds18b20/top.v(8[25:30])
    input uart_rxd;   // c:/fpga/ds18b20/top.v(9[25:33])
    input tone_en;   // c:/fpga/ds18b20/top.v(10[25:32])
    output oled_csn;   // c:/fpga/ds18b20/top.v(12[15:23])
    output oled_rst;   // c:/fpga/ds18b20/top.v(13[12:20])
    output oled_dcn;   // c:/fpga/ds18b20/top.v(14[12:20])
    output oled_clk;   // c:/fpga/ds18b20/top.v(15[12:20])
    output oled_dat;   // c:/fpga/ds18b20/top.v(16[12:20])
    output uart_txd;   // c:/fpga/ds18b20/top.v(17[25:33])
    output led;   // c:/fpga/ds18b20/top.v(18[25:28])
    output piano_out;   // c:/fpga/ds18b20/top.v(19[25:34])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/fpga/ds18b20/top.v(2[25:32])
    
    wire sys_rst_n_c, hour_a_c, hour_d_c, min_a_c, min_d_c, uart_rxd_c, 
        oled_csn_c, oled_rst_c, oled_dcn_c, oled_clk_c, oled_dat_c, 
        uart_txd_c, piano_out_c;
    wire [15:0]temp_raw_data;   // c:/fpga/ds18b20/top.v(25[13:26])
    wire [3:0]temp_unit;   // c:/fpga/ds18b20/top.v(27[12:21])
    wire [3:0]temp_ten;   // c:/fpga/ds18b20/top.v(28[12:20])
    wire [3:0]time_hour_high;   // c:/fpga/ds18b20/top.v(40[12:26])
    wire [3:0]time_hour_low;   // c:/fpga/ds18b20/top.v(41[12:25])
    wire [3:0]time_min_high;   // c:/fpga/ds18b20/top.v(42[12:25])
    wire [3:0]time_min_low;   // c:/fpga/ds18b20/top.v(43[12:24])
    
    wire uart_done;
    wire [7:0]uart_data;   // c:/fpga/ds18b20/top.v(48[12:21])
    
    wire tone_en_c;
    wire [4:0]tone;   // c:/fpga/ds18b20/top.v(50[12:16])
    
    wire oled_update, VCC_net;
    wire [19:0]num_delay_19__N_212;
    wire [2:0]state_back_2__N_122;
    
    wire n17689, one_wire_N_272, GND_net;
    wire [4:0]cnt_main_adj_1922;   // c:/fpga/ds18b20/oled.v(50[12:20])
    wire [15:0]cnt_adj_1927;   // c:/fpga/ds18b20/oled.v(51[35:38])
    
    wire n2688, n658, n659, n660, n664, n827, n828, n829, n830, 
        n831, n832, n833, n1205, n1206, n1207, n1208, n1209, 
        n1210, n1211, n1583, n1584, n1585, n1586, n1587, n1588, 
        n1589, n1961, n1962, n1963, n1964, n1965, n1966, n1967, 
        n2339, n2340, n2341, n2342, n2343, n2344, n2345, n10387, 
        n21947, n27086, n22, n4;
    wire [31:0]uart_data_120__N_1204;
    
    wire n139, n27230;
    wire [120:0]uart_data_120__N_1005;
    
    wire rx_flag, n25056, n27547, n15, n13, n27635, n27634, n27633, 
        n15_adj_1909, n27549, n27541, n57, n27539, n26935, n26912, 
        n27608, n27540, n26903, n11269, n25294, n27542, n26544, 
        n26856, n27562, n27561, n6, n18, n17799, n10, n6384, 
        n25263, n27560, n26737, one_wire_out, n12482, n27362, n27361, 
        n27360, sys_clk_c_enable_140, n27349, n27348, n27347, sys_clk_c_enable_162, 
        n25267, n27724, n6_adj_1910, n27590, n27589, n27232, n27231, 
        n27229, n27228, n27586, n27220, n27219, n4_adj_1911, n27212, 
        n25286, n25231, n27685, n27550, n25247, n27682, n25165, 
        n27680, n27677, n27578;
    
    ROM128X1A mux_371_Mux_39 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n827)) /* synthesis initstate=0x050D6D04950D7976000400200000EC04 */ ;
    defparam mux_371_Mux_39.initval = 128'h050D6D04950D7976000400200000EC04;
    ROM128X1A mux_371_Mux_37 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n828)) /* synthesis initstate=0x00A5E93E05A7FDFF016980700000FD69 */ ;
    defparam mux_371_Mux_37.initval = 128'h00A5E93E05A7FDFF016980700000FD69;
    ROM128X1A mux_371_Mux_30 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1205)) /* synthesis initstate=0x04A8927EACAA96BD4BEF426800007BEF */ ;
    defparam mux_371_Mux_30.initval = 128'h04A8927EACAA96BD4BEF426800007BEF;
    ROM128X1A mux_371_Mux_22 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1583)) /* synthesis initstate=0x0478923EBE7A96BD836F405000007B6F */ ;
    defparam mux_371_Mux_22.initval = 128'h0478923EBE7A96BD836F405000007B6F;
    ROM128X1A mux_371_Mux_14 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1961)) /* synthesis initstate=0x04989E3EACA892AD117F11080000597F */ ;
    defparam mux_371_Mux_14.initval = 128'h04989E3EACA892AD117F11080000597F;
    ROM128X1A mux_371_Mux_24 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1211)) /* synthesis initstate=0x001010012C1F82FDC3AD02CC0000FBAD */ ;
    defparam mux_371_Mux_24.initval = 128'h001010012C1F82FDC3AD02CC0000FBAD;
    ROM128X1A mux_371_Mux_25 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1210)) /* synthesis initstate=0x00100040580020020C42001C00000442 */ ;
    defparam mux_371_Mux_25.initval = 128'h00100040580020020C42001C00000442;
    ROM128X1A mux_371_Mux_26 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1209)) /* synthesis initstate=0x041BA2FA090040003C3001AC00000030 */ ;
    defparam mux_371_Mux_26.initval = 128'h041BA2FA090040003C3001AC00000030;
    ROM128X1A mux_371_Mux_27 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1208)) /* synthesis initstate=0x011441441A0D096503402D580000CB40 */ ;
    defparam mux_371_Mux_27.initval = 128'h011441441A0D096503402D580000CB40;
    ROM128X1A mux_371_Mux_28 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1207)) /* synthesis initstate=0x001808620D0000023C91810800000491 */ ;
    defparam mux_371_Mux_28.initval = 128'h001808620D0000023C91810800000491;
    ROM128X1A mux_371_Mux_29 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1206)) /* synthesis initstate=0x075300C0184000000484403800000084 */ ;
    defparam mux_371_Mux_29.initval = 128'h075300C0184000000484403800000084;
    ROM128X1A mux_371_Mux_32 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n833)) /* synthesis initstate=0x0000090417F5797400A800000000E8A8 */ ;
    defparam mux_371_Mux_32.initval = 128'h0000090417F5797400A800000000E8A8;
    ROM128X1A mux_371_Mux_33 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n832)) /* synthesis initstate=0x0000090403EFF9FD832500600000FB25 */ ;
    defparam mux_371_Mux_33.initval = 128'h0000090403EFF9FD832500600000FB25;
    ROM128X1A mux_371_Mux_34 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n831)) /* synthesis initstate=0x07F5690452EFF9FE236104580000FF61 */ ;
    defparam mux_371_Mux_34.initval = 128'h07F5690452EFF9FE236104580000FF61;
    ROM128X1A mux_371_Mux_35 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n830)) /* synthesis initstate=0x02EFE9FC00E7F9FE105128000000FC51 */ ;
    defparam mux_371_Mux_35.initval = 128'h02EFE9FC00E7F9FE105128000000FC51;
    ROM128X1A mux_371_Mux_36 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n829)) /* synthesis initstate=0x02E7E9BC10E7F9FF215104480000FD51 */ ;
    defparam mux_371_Mux_36.initval = 128'h02E7E9BC10E7F9FF215104480000FD51;
    LUT4 i23832_2_lut_2_lut_3_lut_4_lut (.A(min_d_c), .B(min_a_c), .C(n6), 
         .D(n27589), .Z(n57)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (D)+!B !(C)))) */ ;   // c:/fpga/ds18b20/top.v(8[25:30])
    defparam i23832_2_lut_2_lut_3_lut_4_lut.init = 16'h3074;
    ROM128X1A mux_371_Mux_0 (.AD0(n664), .AD1(n27550), .AD2(n27549), .AD3(n27542), 
            .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n2345)) /* synthesis initstate=0x0000001017F86D6000A800200000C0A8 */ ;
    defparam mux_371_Mux_0.initval = 128'h0000001017F86D6000A800200000C0A8;
    ROM128X1A mux_371_Mux_16 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1589)) /* synthesis initstate=0x000012407C1F86FF83EF00D20000FFEF */ ;
    defparam mux_371_Mux_16.initval = 128'h000012407C1F86FF83EF00D20000FFEF;
    ROM128X1A mux_371_Mux_17 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1588)) /* synthesis initstate=0x00001001001002005C120F9200000012 */ ;
    defparam mux_371_Mux_17.initval = 128'h00001001001002005C120F9200000012;
    ROM128X1A mux_371_Mux_18 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1587)) /* synthesis initstate=0x041FD7BE10102A002C2A0C5A0000002A */ ;
    defparam mux_371_Mux_18.initval = 128'h041FD7BE10102A002C2A0C5A0000002A;
    ROM128X1A mux_371_Mux_19 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1586)) /* synthesis initstate=0x00003A40059D63E503C3AC320000CBC3 */ ;
    defparam mux_371_Mux_19.initval = 128'h00003A40059D63E503C3AC320000CBC3;
    ROM128X1A mux_371_Mux_20 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1585)) /* synthesis initstate=0x0588322212960A03AC160C5800000416 */ ;
    defparam mux_371_Mux_20.initval = 128'h0588322212960A03AC160C5800000416;
    ROM128X1A mux_371_Mux_21 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1584)) /* synthesis initstate=0x02831A80029002005C025F1200000002 */ ;
    defparam mux_371_Mux_21.initval = 128'h02831A80029002005C025F1200000002;
    ROM128X1A mux_371_Mux_11 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1964)) /* synthesis initstate=0x05020410320D05E4835C2E180000CB5C */ ;
    defparam mux_371_Mux_11.initval = 128'h05020410320D05E4835C2E180000CB5C;
    ROM128X1A mux_371_Mux_10 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1965)) /* synthesis initstate=0x040DEDAF2500040060B1820C000000B1 */ ;
    defparam mux_371_Mux_10.initval = 128'h040DEDAF2500040060B1820C000000B1;
    ROM128X1A mux_371_Mux_8 (.AD0(n664), .AD1(n27550), .AD2(n27549), .AD3(n27542), 
            .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1967)) /* synthesis initstate=0x000004402C1F86ED93FD012C0000DBFD */ ;
    defparam mux_371_Mux_8.initval = 128'h000004402C1F86ED93FD012C0000DBFD;
    ROM128X1A mux_371_Mux_9 (.AD0(n664), .AD1(n27550), .AD2(n27549), .AD3(n27542), 
            .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1966)) /* synthesis initstate=0x0000000070002C120018007C00002418 */ ;
    defparam mux_371_Mux_9.initval = 128'h0000000070002C120018007C00002418;
    ROM128X1A mux_371_Mux_12 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1963)) /* synthesis initstate=0x000A0422210044036010022800000410 */ ;
    defparam mux_371_Mux_12.initval = 128'h000A0422210044036010022800000410;
    ROM128X1A mux_371_Mux_13 (.AD0(n664), .AD1(n27550), .AD2(n27549), 
            .AD3(n27542), .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n1962)) /* synthesis initstate=0x0361048030460C100210105800002210 */ ;
    defparam mux_371_Mux_13.initval = 128'h0361048030460C100210105800002210;
    ROM128X1A mux_371_Mux_6 (.AD0(n664), .AD1(n27550), .AD2(n27549), .AD3(n27542), 
            .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n2339)) /* synthesis initstate=0x07226192950679A20004004000004404 */ ;
    defparam mux_371_Mux_6.initval = 128'h07226192950679A20004004000004404;
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/fpga/ds18b20/top.v(2[25:32])
    ROM128X1A mux_371_Mux_1 (.AD0(n664), .AD1(n27550), .AD2(n27549), .AD3(n27542), 
            .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n2344)) /* synthesis initstate=0x0000005007E7E18D8385803000001B85 */ ;
    defparam mux_371_Mux_1.initval = 128'h0000005007E7E18D8385803000001B85;
    ROM128X1A mux_371_Mux_2 (.AD0(n664), .AD1(n27550), .AD2(n27549), .AD3(n27542), 
            .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n2343)) /* synthesis initstate=0x07E2009052E7E117A305040800002F05 */ ;
    defparam mux_371_Mux_2.initval = 128'h07E2009052E7E117A305040800002F05;
    ROM128X1A mux_371_Mux_3 (.AD0(n664), .AD1(n27550), .AD2(n27549), .AD3(n27542), 
            .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n2342)) /* synthesis initstate=0x02E7E1B600E2E1934221280000002621 */ ;
    defparam mux_371_Mux_3.initval = 128'h02E7E1B600E2E1934221280000002621;
    ROM128X1A mux_371_Mux_4 (.AD0(n664), .AD1(n27550), .AD2(n27549), .AD3(n27542), 
            .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n2341)) /* synthesis initstate=0x02E3E1B610EAE1972379045800002F79 */ ;
    defparam mux_371_Mux_4.initval = 128'h02E3E1B610EAE1972379045800002F79;
    ROM128X1A mux_371_Mux_5 (.AD0(n664), .AD1(n27550), .AD2(n27549), .AD3(n27542), 
            .AD4(n660), .AD5(n659), .AD6(n658), .DO0(n2340)) /* synthesis initstate=0x02BAE19E01A8E18F0169002000001D69 */ ;
    defparam mux_371_Mux_5.initval = 128'h02BAE19E01A8E18F0169002000001D69;
    LUT4 i3190_4_lut (.A(n27578), .B(rx_flag), .C(n25056), .D(n139), 
         .Z(sys_clk_c_enable_140)) /* synthesis lut_function=(A ((C)+!B)+!A ((C (D))+!B)) */ ;
    defparam i3190_4_lut.init = 16'hf3b3;
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/fpga/ds18b20/top.v(3[25:34])
    OB piano_out_pad (.I(piano_out_c), .O(piano_out));   // c:/fpga/ds18b20/top.v(19[25:34])
    OB led_pad (.I(GND_net), .O(led));   // c:/fpga/ds18b20/top.v(18[25:28])
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // c:/fpga/ds18b20/top.v(17[25:33])
    OB oled_dat_pad (.I(oled_dat_c), .O(oled_dat));   // c:/fpga/ds18b20/top.v(16[12:20])
    OB oled_clk_pad (.I(oled_clk_c), .O(oled_clk));   // c:/fpga/ds18b20/top.v(15[12:20])
    OB oled_dcn_pad (.I(oled_dcn_c), .O(oled_dcn));   // c:/fpga/ds18b20/top.v(14[12:20])
    OB oled_rst_pad (.I(oled_rst_c), .O(oled_rst));   // c:/fpga/ds18b20/top.v(13[12:20])
    OB oled_csn_pad (.I(oled_csn_c), .O(oled_csn));   // c:/fpga/ds18b20/top.v(12[15:23])
    BB one_wire_pad (.I(one_wire_N_272), .T(n6384), .B(one_wire), .O(one_wire_out));   // c:/fpga/ds18b20/ds18b20.v(75[2] 192[5])
    PFUMX i24381 (.BLUT(n27361), .ALUT(n27360), .C0(cnt_adj_1927[4]), 
          .Z(n27362));
    PFUMX i24371 (.BLUT(n27348), .ALUT(n27347), .C0(cnt_adj_1927[4]), 
          .Z(n27349));
    LUT4 i3_3_lut_4_lut (.A(sys_rst_n_c), .B(n27635), .C(n27724), .D(num_delay_19__N_212[3]), 
         .Z(n25247)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i3_3_lut_4_lut.init = 16'h0800;
    PFUMX i24304 (.BLUT(n27231), .ALUT(n27230), .C0(cnt_adj_1927[0]), 
          .Z(n27232));
    LUT4 mux_95_Mux_3_i30_4_lut_3_lut_4_lut (.A(cnt_adj_1927[1]), .B(cnt_adj_1927[2]), 
         .C(cnt_adj_1927[3]), .D(cnt_adj_1927[0]), .Z(n17689)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam mux_95_Mux_3_i30_4_lut_3_lut_4_lut.init = 16'hfee0;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_adj_1927[1]), .B(cnt_adj_1927[2]), 
         .C(cnt_adj_1927[3]), .D(cnt_adj_1927[0]), .Z(n4)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1295_2_lut_rep_567 (.A(min_d_c), .B(min_a_c), .Z(n27682)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/top.v(8[25:30])
    defparam i1295_2_lut_rep_567.init = 16'h8888;
    LUT4 i1_4_lut (.A(n27547), .B(state_back_2__N_122[2]), .C(n27608), 
         .D(n25165), .Z(n25263)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_4_lut.init = 16'ha0a2;
    LUT4 i1298_4_lut_3_lut_4_lut (.A(min_d_c), .B(min_a_c), .C(n10387), 
         .D(hour_d_c), .Z(n2688)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D))) */ ;   // c:/fpga/ds18b20/top.v(8[25:30])
    defparam i1298_4_lut_3_lut_4_lut.init = 16'h880f;
    LUT4 cnt_1__bdd_4_lut_24091 (.A(cnt_adj_1927[1]), .B(cnt_adj_1927[3]), 
         .C(cnt_adj_1927[0]), .D(cnt_adj_1927[2]), .Z(n26737)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam cnt_1__bdd_4_lut_24091.init = 16'hfcea;
    LUT4 i15246_2_lut_rep_475_2_lut_3_lut_4_lut (.A(min_d_c), .B(min_a_c), 
         .C(hour_d_c), .D(hour_a_c), .Z(n27590)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/fpga/ds18b20/top.v(8[25:30])
    defparam i15246_2_lut_rep_475_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 mux_95_Mux_2_i22_4_lut_3_lut (.A(cnt_adj_1927[1]), .B(cnt_adj_1927[2]), 
         .C(cnt_adj_1927[0]), .Z(n22)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;   // c:/fpga/ds18b20/oled.v(108[20] 111[14])
    defparam mux_95_Mux_2_i22_4_lut_3_lut.init = 16'h9898;
    IB tone_en_pad (.I(tone_en), .O(tone_en_c));   // c:/fpga/ds18b20/top.v(10[25:32])
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // c:/fpga/ds18b20/top.v(9[25:33])
    IB min_d_pad (.I(min_d), .O(min_d_c));   // c:/fpga/ds18b20/top.v(8[25:30])
    IB min_a_pad (.I(min_a), .O(min_a_c));   // c:/fpga/ds18b20/top.v(7[25:30])
    IB hour_d_pad (.I(hour_d), .O(hour_d_c));   // c:/fpga/ds18b20/top.v(6[25:31])
    IB hour_a_pad (.I(hour_a), .O(hour_a_c));   // c:/fpga/ds18b20/top.v(5[25:31])
    LUT4 cnt_0__bdd_3_lut_24105 (.A(cnt_adj_1927[0]), .B(cnt_adj_1927[2]), 
         .C(cnt_adj_1927[1]), .Z(n26856)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam cnt_0__bdd_3_lut_24105.init = 16'h1616;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    LUT4 cnt_1__bdd_3_lut_24911 (.A(cnt_adj_1927[1]), .B(cnt_adj_1927[2]), 
         .C(cnt_adj_1927[0]), .Z(n26903)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;
    defparam cnt_1__bdd_3_lut_24911.init = 16'h2c2c;
    LUT4 cnt_0__bdd_3_lut_24269 (.A(cnt_adj_1927[0]), .B(cnt_adj_1927[1]), 
         .C(cnt_adj_1927[2]), .Z(n26912)) /* synthesis lut_function=(A (B+!(C))+!A ((C)+!B)) */ ;
    defparam cnt_0__bdd_3_lut_24269.init = 16'hdbdb;
    LUT4 cnt_3__bdd_4_lut_24846 (.A(cnt_adj_1927[3]), .B(cnt_adj_1927[2]), 
         .C(cnt_adj_1927[0]), .D(cnt_adj_1927[1]), .Z(n26935)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A !(B (C+(D))))) */ ;
    defparam cnt_3__bdd_4_lut_24846.init = 16'h4e48;
    VLO i1 (.Z(GND_net));
    LUT4 cnt_2__bdd_4_lut (.A(cnt_adj_1927[2]), .B(cnt_adj_1927[4]), .C(cnt_adj_1927[1]), 
         .D(cnt_adj_1927[3]), .Z(n27219)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam cnt_2__bdd_4_lut.init = 16'h3525;
    LUT4 n27219_bdd_2_lut (.A(n27219), .B(cnt_adj_1927[0]), .Z(n27220)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n27219_bdd_2_lut.init = 16'h2222;
    LUT4 cnt_0__bdd_4_lut_24370 (.A(cnt_adj_1927[4]), .B(cnt_adj_1927[3]), 
         .C(cnt_adj_1927[1]), .D(cnt_adj_1927[2]), .Z(n27228)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam cnt_0__bdd_4_lut_24370.init = 16'h144f;
    LUT4 n27228_bdd_2_lut (.A(n27228), .B(cnt_adj_1927[0]), .Z(n27229)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n27228_bdd_2_lut.init = 16'h2222;
    LUT4 cnt_4__bdd_2_lut (.A(cnt_adj_1927[4]), .B(cnt_adj_1927[2]), .Z(n27230)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam cnt_4__bdd_2_lut.init = 16'h4444;
    LUT4 cnt_4__bdd_4_lut_24380 (.A(cnt_adj_1927[4]), .B(cnt_adj_1927[2]), 
         .C(cnt_adj_1927[3]), .D(cnt_adj_1927[1]), .Z(n27231)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A !(B+!(D)))) */ ;
    defparam cnt_4__bdd_4_lut_24380.init = 16'h4e7f;
    uart_tx m_uart_tx (.\uart_data_120__N_1005[5] (uart_data_120__N_1005[5]), 
            .n27540(n27540), .sys_clk_c(sys_clk_c), .GND_net(GND_net), 
            .n17799(n17799), .n27541(n27541), .\temp_ten[2] (temp_ten[2]), 
            .\temp_ten[3] (temp_ten[3]), .n26544(n26544), .n25267(n25267), 
            .n13(n13), .n27539(n27539), .time_min_low({time_min_low}), 
            .time_min_high({time_min_high}), .time_hour_low({time_hour_low}), 
            .time_hour_high({time_hour_high}), .\temp_unit[2] (temp_unit[2]), 
            .\temp_unit[1] (temp_unit[1]), .\temp_unit[0] (temp_unit[0]), 
            .\temp_ten[1] (temp_ten[1]), .\uart_data_120__N_1204[0] (uart_data_120__N_1204[0]), 
            .uart_txd_c(uart_txd_c)) /* synthesis syn_module_defined=1 */ ;   // c:/fpga/ds18b20/top.v(101[9] 112[2])
    LUT4 cnt_0__bdd_3_lut (.A(cnt_adj_1927[0]), .B(cnt_adj_1927[1]), .C(cnt_adj_1927[2]), 
         .Z(n27348)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam cnt_0__bdd_3_lut.init = 16'h4040;
    LUT4 cnt_0__bdd_4_lut_24903 (.A(cnt_adj_1927[0]), .B(cnt_adj_1927[3]), 
         .C(cnt_adj_1927[1]), .D(cnt_adj_1927[2]), .Z(n27347)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam cnt_0__bdd_4_lut_24903.init = 16'h0311;
    LUT4 cnt_4__bdd_4_lut_24591 (.A(cnt_adj_1927[3]), .B(cnt_adj_1927[2]), 
         .C(cnt_adj_1927[0]), .D(cnt_adj_1927[1]), .Z(n27360)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam cnt_4__bdd_4_lut_24591.init = 16'h4115;
    LUT4 cnt_4__bdd_3_lut_24891 (.A(cnt_adj_1927[2]), .B(cnt_adj_1927[0]), 
         .C(cnt_adj_1927[1]), .Z(n27361)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam cnt_4__bdd_3_lut_24891.init = 16'h3232;
    OLED12832 m_OLED12832 (.n27362(n27362), .sys_clk_c(sys_clk_c), .\cnt_main[0] (cnt_main_adj_1922[0]), 
            .n658(n658), .oled_csn_c(oled_csn_c), .time_hour_high({time_hour_high}), 
            .oled_dcn_c(oled_dcn_c), .n17799(n17799), .\temp_raw_data[4] (temp_raw_data[4]), 
            .\temp_raw_data[5] (temp_raw_data[5]), .n27634(n27634), .n27685(n27685), 
            .n21947(n21947), .\temp_raw_data[6] (temp_raw_data[6]), .\temp_raw_data[7] (temp_raw_data[7]), 
            .n1584(n1584), .n1206(n1206), .time_hour_low({time_hour_low}), 
            .GND_net(GND_net), .time_min_high({time_min_high}), .n18(n18), 
            .n25294(n25294), .n26544(n26544), .n27539(n27539), .oled_update(oled_update), 
            .\temp_unit[2] (temp_unit[2]), .time_min_low({time_min_low}), 
            .n26856(n26856), .n26935(n26935), .n829(n829), .\temp_unit[1] (temp_unit[1]), 
            .cnt({Open_0, Open_1, Open_2, Open_3, Open_4, Open_5, 
            Open_6, Open_7, Open_8, Open_9, Open_10, cnt_adj_1927[4:0]}), 
            .n660(n660), .n664(n664), .n27549(n27549), .n27550(n27550), 
            .n26912(n26912), .n1205(n1205), .n1583(n1583), .n827(n827), 
            .n27540(n27540), .n1965(n1965), .n2343(n2343), .n1209(n1209), 
            .n1587(n1587), .n831(n831), .n1208(n1208), .n1586(n1586), 
            .n1964(n1964), .n2342(n2342), .n830(n830), .n27212(n27212), 
            .n1962(n1962), .n2340(n2340), .n26903(n26903), .n27232(n27232), 
            .n26737(n26737), .n659(n659), .n27541(n27541), .n27349(n27349), 
            .\temp_ten[2] (temp_ten[2]), .n17689(n17689), .n15(n15_adj_1909), 
            .n27086(n27086), .n27586(n27586), .n27220(n27220), .n27229(n27229), 
            .n828(n828), .\uart_data_120__N_1005[5] (uart_data_120__N_1005[5]), 
            .oled_dat_c(oled_dat_c), .n22(n22), .oled_clk_c(oled_clk_c), 
            .oled_rst_c(oled_rst_c), .\temp_ten[3] (temp_ten[3]), .n27542(n27542), 
            .n10(n10), .n25286(n25286), .n27560(n27560), .n4(n4_adj_1911), 
            .n6(n6_adj_1910), .n11269(n11269), .n27561(n27561), .n15_adj_2(n15), 
            .n25231(n25231), .n1961(n1961), .n2339(n2339), .\uart_data_120__N_1204[0] (uart_data_120__N_1204[0]), 
            .n1963(n1963), .n2341(n2341), .n832(n832), .n1207(n1207), 
            .n1585(n1585), .n1966(n1966), .n2344(n2344), .n1210(n1210), 
            .n1588(n1588), .n1967(n1967), .n2345(n2345), .n1211(n1211), 
            .n1589(n1589), .n833(n833), .\temp_unit[0] (temp_unit[0]), 
            .n4_adj_3(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/fpga/ds18b20/top.v(82[11] 99[6])
    TSALL TSALL_INST (.TSALL(GND_net));
    uart2tone m_uart2tone (.sys_clk_c_enable_162(sys_clk_c_enable_162), .tone({tone}), 
            .sys_clk_c(sys_clk_c), .uart_done(uart_done), .n12482(n12482), 
            .\uart_data[1] (uart_data[1]), .\uart_data[2] (uart_data[2]), 
            .\uart_data[3] (uart_data[3]), .GND_net(GND_net), .n27562(n27562), 
            .\uart_data[0] (uart_data[0]), .\uart_data[4] (uart_data[4]), 
            .n27677(n27677), .n27633(n27633), .n27680(n27680)) /* synthesis syn_module_defined=1 */ ;   // c:/fpga/ds18b20/top.v(159[11] 170[2])
    clock m_clock (.time_min_low({time_min_low}), .min_a_c(min_a_c), .time_min_high({time_min_high}), 
          .time_hour_low({time_hour_low}), .time_hour_high({time_hour_high}), 
          .hour_a_c(hour_a_c), .hour_d_c(hour_d_c), .n27589(n27589), .min_d_c(min_d_c), 
          .n6(n6), .n27682(n27682), .n10387(n10387), .n27677(n27677), 
          .n27633(n27633), .n27680(n27680), .n27562(n27562), .sys_clk_c(sys_clk_c), 
          .GND_net(GND_net), .n27590(n27590), .n57(n57), .n2688(n2688), 
          .sys_rst_n_c(sys_rst_n_c), .sys_clk_c_enable_162(sys_clk_c_enable_162), 
          .n12482(n12482)) /* synthesis syn_module_defined=1 */ ;   // c:/fpga/ds18b20/top.v(172[7] 184[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    Beeper m_Beeper (.sys_clk_c(sys_clk_c), .tone({tone}), .piano_out_c(piano_out_c), 
           .oled_update(oled_update), .GND_net(GND_net), .tone_en_c(tone_en_c)) /* synthesis syn_module_defined=1 */ ;   // c:/fpga/ds18b20/top.v(149[8] 157[2])
    bcd_8421 m_bcd_8421 (.\temp_raw_data[4] (temp_raw_data[4]), .\temp_raw_data[5] (temp_raw_data[5]), 
            .\temp_raw_data[7] (temp_raw_data[7]), .\temp_raw_data[6] (temp_raw_data[6]), 
            .\temp_raw_data[8] (temp_raw_data[8]), .n27560(n27560), .n11269(n11269), 
            .\temp_raw_data[2] (temp_raw_data[2]), .\temp_raw_data[0] (temp_raw_data[0]), 
            .\temp_raw_data[1] (temp_raw_data[1]), .\temp_raw_data[3] (temp_raw_data[3]), 
            .\temp_unit[2] (temp_unit[2]), .n13(n13), .n27634(n27634), 
            .n27685(n27685), .n27586(n27586), .n27086(n27086), .\temp_raw_data[10] (temp_raw_data[10]), 
            .\temp_raw_data[11] (temp_raw_data[11]), .\temp_raw_data[9] (temp_raw_data[9]), 
            .n6(n6_adj_1910), .n25231(n25231), .\temp_ten[2] (temp_ten[2]), 
            .n21947(n21947), .\cnt_main[0] (cnt_main_adj_1922[0]), .n27212(n27212), 
            .n26544(n26544), .n27541(n27541), .n25267(n25267), .n17799(n17799), 
            .\temp_ten[1] (temp_ten[1]), .n18(n18), .n25294(n25294), .n15(n15_adj_1909), 
            .n27561(n27561), .n4(n4_adj_1911), .n15_adj_1(n15), .n10(n10), 
            .\temp_ten[3] (temp_ten[3]), .n25286(n25286), .\uart_data_120__N_1204[0] (uart_data_120__N_1204[0]), 
            .\temp_unit[1] (temp_unit[1]), .\temp_unit[0] (temp_unit[0])) /* synthesis syn_module_defined=1 */ ;   // c:/fpga/ds18b20/top.v(68[10] 79[2])
    uart_recv m_uart_recv (.sys_clk_c(sys_clk_c), .rx_flag(rx_flag), .uart_done(uart_done), 
            .uart_rxd_c(uart_rxd_c), .GND_net(GND_net), .sys_clk_c_enable_140(sys_clk_c_enable_140), 
            .n25056(n25056), .n139(n139), .\uart_data[4] (uart_data[4]), 
            .\uart_data[3] (uart_data[3]), .\uart_data[2] (uart_data[2]), 
            .\uart_data[1] (uart_data[1]), .\uart_data[0] (uart_data[0]), 
            .n27578(n27578)) /* synthesis syn_module_defined=1 */ ;   // c:/fpga/ds18b20/top.v(137[11] 147[2])
    DS18B20Z m_DS18B20Z (.\temp_raw_data[0] (temp_raw_data[0]), .sys_clk_c(sys_clk_c), 
            .GND_net(GND_net), .one_wire_N_272(one_wire_N_272), .n25165(n25165), 
            .\state_back_2__N_122[2] (state_back_2__N_122[2]), .n27635(n27635), 
            .one_wire_out(one_wire_out), .n6384(n6384), .n25263(n25263), 
            .n27724(n27724), .n27547(n27547), .n27608(n27608), .\num_delay_19__N_212[3] (num_delay_19__N_212[3]), 
            .\temp_raw_data[11] (temp_raw_data[11]), .\temp_raw_data[10] (temp_raw_data[10]), 
            .\temp_raw_data[9] (temp_raw_data[9]), .\temp_raw_data[8] (temp_raw_data[8]), 
            .\temp_raw_data[7] (temp_raw_data[7]), .\temp_raw_data[6] (temp_raw_data[6]), 
            .\temp_raw_data[5] (temp_raw_data[5]), .\temp_raw_data[4] (temp_raw_data[4]), 
            .\temp_raw_data[3] (temp_raw_data[3]), .\temp_raw_data[2] (temp_raw_data[2]), 
            .\temp_raw_data[1] (temp_raw_data[1]), .sys_rst_n_c(sys_rst_n_c), 
            .n25247(n25247)) /* synthesis syn_module_defined=1 */ ;   // c:/fpga/ds18b20/top.v(58[10] 65[6])
    VHI i25098 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (\uart_data_120__N_1005[5] , n27540, sys_clk_c, GND_net, 
            n17799, n27541, \temp_ten[2] , \temp_ten[3] , n26544, 
            n25267, n13, n27539, time_min_low, time_min_high, time_hour_low, 
            time_hour_high, \temp_unit[2] , \temp_unit[1] , \temp_unit[0] , 
            \temp_ten[1] , \uart_data_120__N_1204[0] , uart_txd_c) /* synthesis syn_module_defined=1 */ ;
    input \uart_data_120__N_1005[5] ;
    input n27540;
    input sys_clk_c;
    input GND_net;
    input n17799;
    input n27541;
    input \temp_ten[2] ;
    input \temp_ten[3] ;
    output n26544;
    input n25267;
    input n13;
    input n27539;
    input [3:0]time_min_low;
    input [3:0]time_min_high;
    input [3:0]time_hour_low;
    input [3:0]time_hour_high;
    input \temp_unit[2] ;
    input \temp_unit[1] ;
    input \temp_unit[0] ;
    input \temp_ten[1] ;
    input \uart_data_120__N_1204[0] ;
    output uart_txd_c;
    
    wire clk_en /* synthesis is_clock=1, SET_AS_NETWORK=\m_uart_tx/clk_en */ ;   // c:/fpga/ds18b20/uarttx.v(33[5:11])
    wire clk_uart /* synthesis is_clock=1, SET_AS_NETWORK=\m_uart_tx/clk_uart */ ;   // c:/fpga/ds18b20/uarttx.v(22[5:13])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/fpga/ds18b20/top.v(2[25:32])
    wire [120:0]uart_data;   // c:/fpga/ds18b20/uarttx.v(18[13:22])
    
    wire clk_uart_N_1255, clk_en_N_1256, flag_1, flag_1_N_1248, state, 
        n12343, flag_2, n12371, clk_uart_enable_1;
    wire [6:0]i;   // c:/fpga/ds18b20/uarttx.v(20[11:12])
    
    wire n27664, n21621;
    wire [9:0]times;   // c:/fpga/ds18b20/uarttx.v(23[10:15])
    wire [9:0]n45;
    
    wire n21622;
    wire [23:0]clk_en_cnt;   // c:/fpga/ds18b20/uarttx.v(34[12:22])
    
    wire n12382;
    wire [23:0]n101;
    
    wire n84, n37, n56, n6, n22011, n21894, n88, n76, n25695, 
        n21763, n28062, n25694, n28063, n28064, n28065, n28066, 
        n28067, n28069, n28070, n28072, n28073, n27123, n21620, 
        n27637;
    wire [6:0]n735;
    
    wire n27284, n27283, n27285, n21624, n27259, n27258, n27260, 
        n27238, n27233, n27239, n27236, n27235, n27237, n21772, 
        n17625, n25748, n21737, n25738, n91, n25735, n81, n25734, 
        n21736, n21735, n21734, n27593, n21733, n21732, n21731, 
        n21730, n21729, n4, n21728, n21727, n21726, n26542, n12490, 
        n12358, n21623, n90, n89, n13_adj_1906, n27693, n25747, 
        n25744, n25745, uart_out_N_1245, n26541, n26540, n25767, 
        n25768, n25696, n25737, n46_adj_1907, n61, n25741, n25739, 
        n25736, n25742, clk_uart_enable_2, n25743, n14, n21762, 
        n27234, n21944, n25111, n28071, n28068, n4_adj_1908;
    
    FD1S3IX uart_data_i1 (.D(n27540), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i1.GSR = "DISABLED";
    FD1S3AX clk_uart_43 (.D(clk_uart_N_1255), .CK(sys_clk_c), .Q(clk_uart)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(24[8] 31[4])
    defparam clk_uart_43.GSR = "DISABLED";
    FD1S3AX clk_en_45 (.D(clk_en_N_1256), .CK(sys_clk_c), .Q(clk_en)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(35[8] 42[4])
    defparam clk_en_45.GSR = "DISABLED";
    FD1S3AX flag_1_47 (.D(flag_1_N_1248), .CK(clk_en), .Q(flag_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam flag_1_47.GSR = "DISABLED";
    FD1S3AX state_50 (.D(n12343), .CK(clk_uart), .Q(state)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(80[8] 98[4])
    defparam state_50.GSR = "DISABLED";
    LUT4 i10030_3_lut_4_lut (.A(flag_2), .B(flag_1), .C(state), .D(n12371), 
         .Z(n12343)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // c:/fpga/ds18b20/uarttx.v(83[20:36])
    defparam i10030_3_lut_4_lut.init = 16'h06f6;
    LUT4 i4259_2_lut_3_lut (.A(flag_2), .B(flag_1), .C(state), .Z(clk_uart_enable_1)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // c:/fpga/ds18b20/uarttx.v(83[20:36])
    defparam i4259_2_lut_3_lut.init = 16'h0606;
    LUT4 i3658_1_lut_rep_549 (.A(i[0]), .Z(n27664)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/ds18b20/uarttx.v(91[9:12])
    defparam i3658_1_lut_rep_549.init = 16'h5555;
    CCU2D times_2265_add_4_5 (.A0(times[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(times[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21621), .COUT(n21622), .S0(n45[3]), .S1(n45[4]));   // c:/fpga/ds18b20/uarttx.v(26[14:21])
    defparam times_2265_add_4_5.INIT0 = 16'hfaaa;
    defparam times_2265_add_4_5.INIT1 = 16'hfaaa;
    defparam times_2265_add_4_5.INJECT1_0 = "NO";
    defparam times_2265_add_4_5.INJECT1_1 = "NO";
    FD1S3IX clk_en_cnt_2263__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i22.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i21.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i20.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i19.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i18.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i17.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i16.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i15.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i14.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i13.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i12.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i11.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i10.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i9.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i8.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i7.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i6.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i5.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i4.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i3.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i2.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i1.GSR = "DISABLED";
    LUT4 i_6__I_0_57_i84_4_lut_4_lut_4_lut (.A(i[0]), .B(i[1]), .C(uart_data[107]), 
         .D(uart_data[85]), .Z(n84)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B+(C))) */ ;   // c:/fpga/ds18b20/uarttx.v(91[9:12])
    defparam i_6__I_0_57_i84_4_lut_4_lut_4_lut.init = 16'hf6d4;
    LUT4 i_6__I_0_57_i37_4_lut_4_lut (.A(uart_data[85]), .B(i[0]), .C(i[1]), 
         .D(uart_data[36]), .Z(n37)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (C)+!B !(C+(D)))) */ ;   // c:/fpga/ds18b20/uarttx.v(90[26:27])
    defparam i_6__I_0_57_i37_4_lut_4_lut.init = 16'hbfbc;
    LUT4 i_6__I_0_57_i56_4_lut_4_lut_3_lut (.A(uart_data[85]), .B(i[0]), 
         .C(i[1]), .Z(n56)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+!(C))) */ ;   // c:/fpga/ds18b20/uarttx.v(90[26:27])
    defparam i_6__I_0_57_i56_4_lut_4_lut_3_lut.init = 16'hb2b2;
    LUT4 i4_4_lut (.A(i[4]), .B(i[6]), .C(i[5]), .D(n6), .Z(n12371)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i1_3_lut (.A(i[1]), .B(i[3]), .C(i[2]), .Z(n6)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 i3_4_lut (.A(n22011), .B(clk_en_cnt[16]), .C(clk_en_cnt[18]), 
         .D(clk_en_cnt[17]), .Z(n21894)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i_6__I_0_57_i88_3_lut_3_lut (.A(uart_data[85]), .B(i[0]), .C(i[1]), 
         .Z(n88)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;   // c:/fpga/ds18b20/uarttx.v(90[26:27])
    defparam i_6__I_0_57_i88_3_lut_3_lut.init = 16'hcbcb;
    LUT4 i_6__I_0_57_i76_4_lut_4_lut (.A(uart_data[85]), .B(i[0]), .C(i[1]), 
         .D(uart_data[76]), .Z(n76)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (C)+!B !(C+(D)))) */ ;   // c:/fpga/ds18b20/uarttx.v(90[26:27])
    defparam i_6__I_0_57_i76_4_lut_4_lut.init = 16'hbfbc;
    LUT4 i23340_3_lut (.A(uart_data[66]), .B(uart_data[107]), .C(i[0]), 
         .Z(n25695)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23340_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_542 (.A(n21763), .B(clk_en_cnt[13]), .C(clk_en_cnt[15]), 
         .D(clk_en_cnt[14]), .Z(n22011)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_542.init = 16'hfffe;
    LUT4 i_4__bdd_4_lut_24641 (.A(uart_data[85]), .B(i[3]), .C(i[2]), 
         .D(i[0]), .Z(n28062)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam i_4__bdd_4_lut_24641.init = 16'he20f;
    LUT4 i23339_3_lut (.A(uart_data[64]), .B(uart_data[65]), .C(i[0]), 
         .Z(n25694)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23339_3_lut.init = 16'hcaca;
    LUT4 n27123_bdd_3_lut_24721 (.A(i[2]), .B(uart_data[3]), .C(i[0]), 
         .Z(n28063)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam n27123_bdd_3_lut_24721.init = 16'he0e0;
    LUT4 n28064_bdd_3_lut (.A(n28064), .B(n28062), .C(i[4]), .Z(n28065)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n28064_bdd_3_lut.init = 16'hcaca;
    LUT4 i_4__bdd_4_lut_25029 (.A(i[4]), .B(uart_data[85]), .C(i[3]), 
         .D(uart_data[13]), .Z(n28066)) /* synthesis lut_function=(A (B+!(C))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i_4__bdd_4_lut_25029.init = 16'hde8e;
    LUT4 i_4__bdd_3_lut_25030 (.A(i[4]), .B(uart_data[4]), .C(i[3]), .Z(n28067)) /* synthesis lut_function=(A (C)+!A !((C)+!B)) */ ;
    defparam i_4__bdd_3_lut_25030.init = 16'ha4a4;
    LUT4 uart_data_16__bdd_4_lut_24644 (.A(uart_data[16]), .B(uart_data[107]), 
         .C(i[3]), .D(i[0]), .Z(n28069)) /* synthesis lut_function=(A (B+(C (D)+!C !(D)))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam uart_data_16__bdd_4_lut_24644.init = 16'hfcca;
    LUT4 uart_data_16__bdd_4_lut_25033 (.A(uart_data[107]), .B(uart_data[85]), 
         .C(i[3]), .D(i[0]), .Z(n28070)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam uart_data_16__bdd_4_lut_25033.init = 16'hcfaf;
    LUT4 n28072_bdd_3_lut (.A(n28072), .B(n28065), .C(i[1]), .Z(n28073)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n28072_bdd_3_lut.init = 16'hcaca;
    LUT4 n82_bdd_3_lut_4_lut (.A(uart_data[14]), .B(uart_data[15]), .C(i[0]), 
         .D(i[2]), .Z(n27123)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/fpga/ds18b20/uarttx.v(90[26:27])
    defparam n82_bdd_3_lut_4_lut.init = 16'hcaf0;
    CCU2D times_2265_add_4_3 (.A0(times[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(times[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21620), .COUT(n21621), .S0(n45[1]), .S1(n45[2]));   // c:/fpga/ds18b20/uarttx.v(26[14:21])
    defparam times_2265_add_4_3.INIT0 = 16'hfaaa;
    defparam times_2265_add_4_3.INIT1 = 16'hfaaa;
    defparam times_2265_add_4_3.INJECT1_0 = "NO";
    defparam times_2265_add_4_3.INJECT1_1 = "NO";
    CCU2D times_2265_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(times[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n21620), .S1(n45[0]));   // c:/fpga/ds18b20/uarttx.v(26[14:21])
    defparam times_2265_add_4_1.INIT0 = 16'hF000;
    defparam times_2265_add_4_1.INIT1 = 16'h0555;
    defparam times_2265_add_4_1.INJECT1_0 = "NO";
    defparam times_2265_add_4_1.INJECT1_1 = "NO";
    LUT4 i3688_2_lut_3_lut_4_lut (.A(i[3]), .B(n27637), .C(i[5]), .D(i[4]), 
         .Z(n735[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/uarttx.v(91[9:12])
    defparam i3688_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX i24329 (.BLUT(n27284), .ALUT(n27283), .C0(i[1]), .Z(n27285));
    CCU2D times_2265_add_4_11 (.A0(times[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21624), .S0(n45[9]));   // c:/fpga/ds18b20/uarttx.v(26[14:21])
    defparam times_2265_add_4_11.INIT0 = 16'hfaaa;
    defparam times_2265_add_4_11.INIT1 = 16'h0000;
    defparam times_2265_add_4_11.INJECT1_0 = "NO";
    defparam times_2265_add_4_11.INJECT1_1 = "NO";
    PFUMX i24316 (.BLUT(n27259), .ALUT(n27258), .C0(i[1]), .Z(n27260));
    PFUMX i24309 (.BLUT(n27238), .ALUT(n27233), .C0(i[2]), .Z(n27239));
    PFUMX i24307 (.BLUT(n27236), .ALUT(n27235), .C0(i[3]), .Z(n27237));
    LUT4 i2_4_lut (.A(clk_en_cnt[12]), .B(n21772), .C(clk_en_cnt[11]), 
         .D(clk_en_cnt[10]), .Z(n21763)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    FD1S3IX clk_en_cnt_2263__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i23.GSR = "DISABLED";
    LUT4 i23508_3_lut (.A(n56), .B(n17625), .C(i[2]), .Z(n25748)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23508_3_lut.init = 16'hcaca;
    CCU2D clk_en_cnt_2263_add_4_25 (.A0(clk_en_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21737), .S0(n101[23]));   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263_add_4_25.INIT0 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_25.INIT1 = 16'h0000;
    defparam clk_en_cnt_2263_add_4_25.INJECT1_0 = "NO";
    defparam clk_en_cnt_2263_add_4_25.INJECT1_1 = "NO";
    LUT4 i23510_3_lut (.A(n27260), .B(n76), .C(i[2]), .Z(n25738)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23510_3_lut.init = 16'hcaca;
    LUT4 i23380_3_lut (.A(n88), .B(n91), .C(i[2]), .Z(n25735)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23380_3_lut.init = 16'hcaca;
    LUT4 i23379_3_lut (.A(n81), .B(n84), .C(i[2]), .Z(n25734)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23379_3_lut.init = 16'hcaca;
    CCU2D clk_en_cnt_2263_add_4_23 (.A0(clk_en_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_en_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21736), .COUT(n21737), .S0(n101[21]), 
          .S1(n101[22]));   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263_add_4_23.INIT0 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_23.INIT1 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_23.INJECT1_0 = "NO";
    defparam clk_en_cnt_2263_add_4_23.INJECT1_1 = "NO";
    CCU2D clk_en_cnt_2263_add_4_21 (.A0(clk_en_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_en_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21735), .COUT(n21736), .S0(n101[19]), 
          .S1(n101[20]));   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263_add_4_21.INIT0 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_21.INIT1 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_21.INJECT1_0 = "NO";
    defparam clk_en_cnt_2263_add_4_21.INJECT1_1 = "NO";
    CCU2D clk_en_cnt_2263_add_4_19 (.A0(clk_en_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_en_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21734), .COUT(n21735), .S0(n101[17]), 
          .S1(n101[18]));   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263_add_4_19.INIT0 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_19.INIT1 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_19.INJECT1_0 = "NO";
    defparam clk_en_cnt_2263_add_4_19.INJECT1_1 = "NO";
    LUT4 i3695_3_lut_4_lut (.A(i[4]), .B(n27593), .C(i[5]), .D(i[6]), 
         .Z(n735[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/fpga/ds18b20/uarttx.v(91[9:12])
    defparam i3695_3_lut_4_lut.init = 16'h7f80;
    CCU2D clk_en_cnt_2263_add_4_17 (.A0(clk_en_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_en_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21733), .COUT(n21734), .S0(n101[15]), 
          .S1(n101[16]));   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_17.INIT1 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_17.INJECT1_0 = "NO";
    defparam clk_en_cnt_2263_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_en_cnt_2263_add_4_15 (.A0(clk_en_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_en_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21732), .COUT(n21733), .S0(n101[13]), 
          .S1(n101[14]));   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_15.INJECT1_0 = "NO";
    defparam clk_en_cnt_2263_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_en_cnt_2263_add_4_13 (.A0(clk_en_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_en_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21731), .COUT(n21732), .S0(n101[11]), 
          .S1(n101[12]));   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_13.INJECT1_0 = "NO";
    defparam clk_en_cnt_2263_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_en_cnt_2263_add_4_11 (.A0(clk_en_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_en_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21730), .COUT(n21731), .S0(n101[9]), .S1(n101[10]));   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_11.INJECT1_0 = "NO";
    defparam clk_en_cnt_2263_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_en_cnt_2263_add_4_9 (.A0(clk_en_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_en_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21729), .COUT(n21730), .S0(n101[7]), .S1(n101[8]));   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_9.INJECT1_0 = "NO";
    defparam clk_en_cnt_2263_add_4_9.INJECT1_1 = "NO";
    LUT4 i3629_4_lut_3_lut_4_lut (.A(n27540), .B(n17799), .C(n27541), 
         .D(\temp_ten[2] ), .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (C (D))) */ ;   // c:/fpga/ds18b20/uarttx.v(45[9:36])
    defparam i3629_4_lut_3_lut_4_lut.init = 16'hf220;
    CCU2D clk_en_cnt_2263_add_4_7 (.A0(clk_en_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_en_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21728), .COUT(n21729), .S0(n101[5]), .S1(n101[6]));   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_7.INJECT1_0 = "NO";
    defparam clk_en_cnt_2263_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_en_cnt_2263_add_4_5 (.A0(clk_en_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_en_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21727), .COUT(n21728), .S0(n101[3]), .S1(n101[4]));   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_5.INJECT1_0 = "NO";
    defparam clk_en_cnt_2263_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_en_cnt_2263_add_4_3 (.A0(clk_en_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_en_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21726), .COUT(n21727), .S0(n101[1]), .S1(n101[2]));   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_en_cnt_2263_add_4_3.INJECT1_0 = "NO";
    defparam clk_en_cnt_2263_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_en_cnt_2263_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_en_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n21726), .S1(n101[0]));   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263_add_4_1.INIT0 = 16'hF000;
    defparam clk_en_cnt_2263_add_4_1.INIT1 = 16'h0555;
    defparam clk_en_cnt_2263_add_4_1.INJECT1_0 = "NO";
    defparam clk_en_cnt_2263_add_4_1.INJECT1_1 = "NO";
    LUT4 n26543_bdd_3_lut_4_lut (.A(\temp_ten[3] ), .B(n27540), .C(n4), 
         .D(n26542), .Z(n26544)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam n26543_bdd_3_lut_4_lut.init = 16'hf707;
    LUT4 i10179_2_lut (.A(state), .B(n12371), .Z(n12490)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/uarttx.v(80[8] 98[4])
    defparam i10179_2_lut.init = 16'h8888;
    LUT4 i3660_2_lut (.A(i[1]), .B(i[0]), .Z(n735[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/uarttx.v(91[9:12])
    defparam i3660_2_lut.init = 16'h6666;
    LUT4 i1_2_lut (.A(clk_uart), .B(n12358), .Z(clk_uart_N_1255)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    CCU2D times_2265_add_4_7 (.A0(times[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(times[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21622), .COUT(n21623), .S0(n45[5]), .S1(n45[6]));   // c:/fpga/ds18b20/uarttx.v(26[14:21])
    defparam times_2265_add_4_7.INIT0 = 16'hfaaa;
    defparam times_2265_add_4_7.INIT1 = 16'hfaaa;
    defparam times_2265_add_4_7.INJECT1_0 = "NO";
    defparam times_2265_add_4_7.INJECT1_1 = "NO";
    LUT4 i_6__I_0_57_i90_3_lut (.A(uart_data[94]), .B(uart_data[95]), .C(i[0]), 
         .Z(n90)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/uarttx.v(90[26:27])
    defparam i_6__I_0_57_i90_3_lut.init = 16'hcaca;
    LUT4 i15053_2_lut (.A(uart_data[93]), .B(i[0]), .Z(n89)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/uarttx.v(90[26:27])
    defparam i15053_2_lut.init = 16'h8888;
    FD1S3IX uart_data_i18 (.D(n13), .CK(clk_en), .CD(n25267), .Q(uart_data[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i18.GSR = "DISABLED";
    LUT4 i5_4_lut (.A(clk_en_cnt[0]), .B(clk_en_cnt[4]), .C(clk_en_cnt[3]), 
         .D(clk_en_cnt[1]), .Z(n13_adj_1906)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    FD1P3IX i_i1 (.D(n735[1]), .SP(state), .CD(n12490), .CK(clk_uart), 
            .Q(i[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(80[8] 98[4])
    defparam i_i1.GSR = "DISABLED";
    FD1P3IX i_i2 (.D(n735[2]), .SP(state), .CD(n12490), .CK(clk_uart), 
            .Q(i[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(80[8] 98[4])
    defparam i_i2.GSR = "DISABLED";
    FD1P3IX i_i3 (.D(n735[3]), .SP(state), .CD(n12490), .CK(clk_uart), 
            .Q(i[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(80[8] 98[4])
    defparam i_i3.GSR = "DISABLED";
    LUT4 i3662_2_lut_rep_578 (.A(i[1]), .B(i[0]), .Z(n27693)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/uarttx.v(91[9:12])
    defparam i3662_2_lut_rep_578.init = 16'h8888;
    LUT4 i23392_4_lut_4_lut (.A(i[1]), .B(i[0]), .C(i[2]), .D(uart_data[85]), 
         .Z(n25747)) /* synthesis lut_function=(A (B ((D)+!C))+!A !((C)+!B)) */ ;   // c:/fpga/ds18b20/uarttx.v(91[9:12])
    defparam i23392_4_lut_4_lut.init = 16'h8c0c;
    LUT4 i3669_2_lut_rep_522_3_lut (.A(i[1]), .B(i[0]), .C(i[2]), .Z(n27637)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/fpga/ds18b20/uarttx.v(91[9:12])
    defparam i3669_2_lut_rep_522_3_lut.init = 16'h8080;
    LUT4 i3674_2_lut_3_lut_4_lut (.A(i[1]), .B(i[0]), .C(i[3]), .D(i[2]), 
         .Z(n735[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/uarttx.v(91[9:12])
    defparam i3674_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i3667_2_lut_3_lut (.A(i[1]), .B(i[0]), .C(i[2]), .Z(n735[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/uarttx.v(91[9:12])
    defparam i3667_2_lut_3_lut.init = 16'h7878;
    FD1P3IX i_i4 (.D(n735[4]), .SP(state), .CD(n12490), .CK(clk_uart), 
            .Q(i[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(80[8] 98[4])
    defparam i_i4.GSR = "DISABLED";
    LUT4 i3676_2_lut_rep_478_3_lut_4_lut (.A(i[1]), .B(i[0]), .C(i[3]), 
         .D(i[2]), .Z(n27593)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/fpga/ds18b20/uarttx.v(91[9:12])
    defparam i3676_2_lut_rep_478_3_lut_4_lut.init = 16'h8000;
    FD1P3IX i_i5 (.D(n735[5]), .SP(state), .CD(n12490), .CK(clk_uart), 
            .Q(i[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(80[8] 98[4])
    defparam i_i5.GSR = "DISABLED";
    FD1P3IX i_i6 (.D(n735[6]), .SP(state), .CD(n12490), .CK(clk_uart), 
            .Q(i[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(80[8] 98[4])
    defparam i_i6.GSR = "DISABLED";
    FD1S3AX uart_data_i49 (.D(n27539), .CK(clk_en), .Q(uart_data[107])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i49.GSR = "DISABLED";
    FD1S3IX uart_data_i48 (.D(time_min_low[3]), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[106])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i48.GSR = "DISABLED";
    FD1S3IX uart_data_i47 (.D(time_min_low[2]), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[105])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i47.GSR = "DISABLED";
    FD1S3IX uart_data_i46 (.D(time_min_low[1]), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[104])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i46.GSR = "DISABLED";
    FD1S3JX uart_data_i45 (.D(time_min_low[0]), .CK(clk_en), .PD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[103])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i45.GSR = "DISABLED";
    FD1S3IX uart_data_i43 (.D(time_min_high[3]), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[96])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i43.GSR = "DISABLED";
    FD1S3IX uart_data_i42 (.D(time_min_high[2]), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[95])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i42.GSR = "DISABLED";
    FD1S3IX uart_data_i41 (.D(time_min_high[1]), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[94])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i41.GSR = "DISABLED";
    FD1S3JX uart_data_i40 (.D(time_min_high[0]), .CK(clk_en), .PD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[93])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i40.GSR = "DISABLED";
    FD1S3AX uart_data_i37 (.D(\uart_data_120__N_1005[5] ), .CK(clk_en), 
            .Q(uart_data[85])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i37.GSR = "DISABLED";
    FD1S3IX uart_data_i33 (.D(time_hour_low[3]), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[76])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i33.GSR = "DISABLED";
    FD1S3IX uart_data_i32 (.D(time_hour_low[2]), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[75])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i32.GSR = "DISABLED";
    FD1S3JX uart_data_i31 (.D(time_hour_low[1]), .CK(clk_en), .PD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[74])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i31.GSR = "DISABLED";
    FD1S3IX uart_data_i30 (.D(time_hour_low[0]), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[73])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i30.GSR = "DISABLED";
    FD1S3IX uart_data_i27 (.D(time_hour_high[3]), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[66])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i27.GSR = "DISABLED";
    FD1S3IX uart_data_i26 (.D(time_hour_high[2]), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[65])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i26.GSR = "DISABLED";
    FD1S3IX uart_data_i25 (.D(time_hour_high[1]), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[64])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i25.GSR = "DISABLED";
    FD1S3JX uart_data_i24 (.D(time_hour_high[0]), .CK(clk_en), .PD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i24.GSR = "DISABLED";
    FD1S3IX uart_data_i17 (.D(\temp_unit[2] ), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i17.GSR = "DISABLED";
    FD1S3IX uart_data_i16 (.D(\temp_unit[1] ), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i16.GSR = "DISABLED";
    FD1S3IX uart_data_i15 (.D(\temp_unit[0] ), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i15.GSR = "DISABLED";
    FD1S3IX uart_data_i9 (.D(\temp_ten[3] ), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i9.GSR = "DISABLED";
    FD1S3JX uart_data_i8 (.D(\temp_ten[2] ), .CK(clk_en), .PD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i8.GSR = "DISABLED";
    FD1S3IX uart_data_i7 (.D(\temp_ten[1] ), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i7.GSR = "DISABLED";
    FD1S3JX uart_data_i6 (.D(\uart_data_120__N_1204[0] ), .CK(clk_en), .PD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i6.GSR = "DISABLED";
    FD1S3IX uart_data_i2 (.D(n27541), .CK(clk_en), .CD(\uart_data_120__N_1005[5] ), 
            .Q(uart_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(44[8] 78[4])
    defparam uart_data_i2.GSR = "DISABLED";
    PFUMX i23391 (.BLUT(n25744), .ALUT(n25745), .C0(i[6]), .Z(uart_out_N_1245));
    PFUMX i23879 (.BLUT(n26541), .ALUT(n26540), .C0(\temp_ten[2] ), .Z(n26542));
    FD1S3IX times_2265__i9 (.D(n45[9]), .CK(sys_clk_c), .CD(n12358), .Q(times[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(26[14:21])
    defparam times_2265__i9.GSR = "DISABLED";
    FD1S3IX times_2265__i8 (.D(n45[8]), .CK(sys_clk_c), .CD(n12358), .Q(times[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(26[14:21])
    defparam times_2265__i8.GSR = "DISABLED";
    FD1S3IX times_2265__i7 (.D(n45[7]), .CK(sys_clk_c), .CD(n12358), .Q(times[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(26[14:21])
    defparam times_2265__i7.GSR = "DISABLED";
    FD1S3IX times_2265__i6 (.D(n45[6]), .CK(sys_clk_c), .CD(n12358), .Q(times[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(26[14:21])
    defparam times_2265__i6.GSR = "DISABLED";
    FD1S3IX times_2265__i5 (.D(n45[5]), .CK(sys_clk_c), .CD(n12358), .Q(times[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(26[14:21])
    defparam times_2265__i5.GSR = "DISABLED";
    FD1S3IX times_2265__i4 (.D(n45[4]), .CK(sys_clk_c), .CD(n12358), .Q(times[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(26[14:21])
    defparam times_2265__i4.GSR = "DISABLED";
    FD1S3IX times_2265__i3 (.D(n45[3]), .CK(sys_clk_c), .CD(n12358), .Q(times[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(26[14:21])
    defparam times_2265__i3.GSR = "DISABLED";
    FD1S3IX times_2265__i2 (.D(n45[2]), .CK(sys_clk_c), .CD(n12358), .Q(times[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(26[14:21])
    defparam times_2265__i2.GSR = "DISABLED";
    FD1S3IX times_2265__i1 (.D(n45[1]), .CK(sys_clk_c), .CD(n12358), .Q(times[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(26[14:21])
    defparam times_2265__i1.GSR = "DISABLED";
    LUT4 i23505_3_lut (.A(n27285), .B(n37), .C(i[2]), .Z(n25767)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23505_3_lut.init = 16'hcaca;
    LUT4 i15340_3_lut_3_lut (.A(i[1]), .B(uart_data[85]), .C(i[0]), .Z(n81)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/fpga/ds18b20/uarttx.v(89[16:23])
    defparam i15340_3_lut_3_lut.init = 16'hd0d0;
    LUT4 i23413_4_lut_4_lut_4_lut (.A(i[1]), .B(i[2]), .C(uart_data[107]), 
         .D(i[0]), .Z(n25768)) /* synthesis lut_function=(!(A (B+!(D))+!A (B ((D)+!C)+!B !(D)))) */ ;   // c:/fpga/ds18b20/uarttx.v(89[16:23])
    defparam i23413_4_lut_4_lut_4_lut.init = 16'h3340;
    LUT4 i23382_3_lut (.A(n25696), .B(n88), .C(i[2]), .Z(n25737)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23382_3_lut.init = 16'hcaca;
    LUT4 i15342_3_lut_3_lut (.A(i[1]), .B(uart_data[63]), .C(i[0]), .Z(n17625)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/fpga/ds18b20/uarttx.v(89[16:23])
    defparam i15342_3_lut_3_lut.init = 16'hd0d0;
    FD1S3IX times_2265__i0 (.D(n45[0]), .CK(sys_clk_c), .CD(n12358), .Q(times[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(26[14:21])
    defparam times_2265__i0.GSR = "DISABLED";
    FD1P3IX i_i0 (.D(n27664), .SP(state), .CD(n12490), .CK(clk_uart), 
            .Q(i[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;   // c:/fpga/ds18b20/uarttx.v(80[8] 98[4])
    defparam i_i0.GSR = "DISABLED";
    L6MUX21 i23386 (.D0(n46_adj_1907), .D1(n61), .SD(i[4]), .Z(n25741));
    L6MUX21 i23387 (.D0(n25739), .D1(n25736), .SD(i[4]), .Z(n25742));
    PFUMX i23384 (.BLUT(n25737), .ALUT(n25738), .C0(i[3]), .Z(n25739));
    PFUMX i23394 (.BLUT(n25747), .ALUT(n25748), .C0(i[3]), .Z(n61));
    CCU2D times_2265_add_4_9 (.A0(times[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(times[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21623), .COUT(n21624), .S0(n45[7]), .S1(n45[8]));   // c:/fpga/ds18b20/uarttx.v(26[14:21])
    defparam times_2265_add_4_9.INIT0 = 16'hfaaa;
    defparam times_2265_add_4_9.INIT1 = 16'hfaaa;
    defparam times_2265_add_4_9.INJECT1_0 = "NO";
    defparam times_2265_add_4_9.INJECT1_1 = "NO";
    PFUMX i23414 (.BLUT(n25767), .ALUT(n25768), .C0(i[3]), .Z(n46_adj_1907));
    LUT4 temp_ten_3__bdd_4_lut_24094 (.A(\temp_ten[3] ), .B(n17799), .C(n27540), 
         .D(\uart_data_120__N_1204[0] ), .Z(n26540)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B (C (D))+!B (C)))) */ ;
    defparam temp_ten_3__bdd_4_lut_24094.init = 16'h0d4f;
    LUT4 temp_ten_3__bdd_3_lut_24095 (.A(\temp_ten[3] ), .B(n17799), .C(n27540), 
         .Z(n26541)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam temp_ten_3__bdd_3_lut_24095.init = 16'h1515;
    FD1P3AX flag_2_51 (.D(flag_1), .SP(clk_uart_enable_1), .CK(clk_uart), 
            .Q(flag_2));   // c:/fpga/ds18b20/uarttx.v(80[8] 98[4])
    defparam flag_2_51.GSR = "DISABLED";
    FD1P3AX uart_out_48 (.D(uart_out_N_1245), .SP(clk_uart_enable_2), .CK(clk_uart), 
            .Q(uart_txd_c));   // c:/fpga/ds18b20/uarttx.v(80[8] 98[4])
    defparam uart_out_48.GSR = "DISABLED";
    FD1S3IX clk_en_cnt_2263__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n12382), 
            .Q(clk_en_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uarttx.v(37[22:36])
    defparam clk_en_cnt_2263__i0.GSR = "DISABLED";
    LUT4 i23390_3_lut (.A(n25742), .B(n25743), .C(i[5]), .Z(n25745)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23390_3_lut.init = 16'hcaca;
    LUT4 i23389_3_lut (.A(n28073), .B(n25741), .C(i[5]), .Z(n25744)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23389_3_lut.init = 16'hcaca;
    PFUMX i_6__I_0_57_i91 (.BLUT(n89), .ALUT(n90), .C0(i[1]), .Z(n91)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=101, LSE_RLINE=112 */ ;
    LUT4 i6_4_lut (.A(clk_en_cnt[7]), .B(clk_en_cnt[6]), .C(clk_en_cnt[2]), 
         .D(clk_en_cnt[5]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_543 (.A(clk_en_cnt[9]), .B(n13_adj_1906), .C(clk_en_cnt[8]), 
         .D(n14), .Z(n21772)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_543.init = 16'ha080;
    LUT4 flag_1_I_0_1_lut (.A(flag_1), .Z(flag_1_N_1248)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/ds18b20/uarttx.v(77[11:18])
    defparam flag_1_I_0_1_lut.init = 16'h5555;
    PFUMX i23381 (.BLUT(n25734), .ALUT(n25735), .C0(i[3]), .Z(n25736));
    LUT4 i15387_4_lut (.A(times[8]), .B(times[9]), .C(n21762), .D(times[7]), 
         .Z(n12358)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i15387_4_lut.init = 16'hccc8;
    LUT4 uart_data_106__bdd_4_lut_24306 (.A(i[3]), .B(i[1]), .C(i[0]), 
         .D(uart_data[103]), .Z(n27233)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C (D))+!B (C))) */ ;
    defparam uart_data_106__bdd_4_lut_24306.init = 16'hd292;
    LUT4 uart_data_106__bdd_4_lut (.A(i[3]), .B(i[1]), .C(uart_data[107]), 
         .D(uart_data[105]), .Z(n27234)) /* synthesis lut_function=(A (B (C)+!B (D))+!A !(B+!(C))) */ ;
    defparam uart_data_106__bdd_4_lut.init = 16'hb290;
    LUT4 uart_data_106__bdd_3_lut (.A(uart_data[106]), .B(i[1]), .C(uart_data[104]), 
         .Z(n27235)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam uart_data_106__bdd_3_lut.init = 16'hb8b8;
    LUT4 uart_data_106__bdd_2_lut (.A(i[1]), .B(uart_data[96]), .Z(n27236)) /* synthesis lut_function=(A+(B)) */ ;
    defparam uart_data_106__bdd_2_lut.init = 16'heeee;
    LUT4 n27237_bdd_3_lut_24636 (.A(n27237), .B(n27234), .C(i[0]), .Z(n27238)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n27237_bdd_3_lut_24636.init = 16'hcaca;
    LUT4 uart_data_74__bdd_3_lut (.A(uart_data[74]), .B(i[0]), .C(uart_data[75]), 
         .Z(n27258)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam uart_data_74__bdd_3_lut.init = 16'he2e2;
    LUT4 uart_data_74__bdd_2_lut (.A(uart_data[73]), .B(i[0]), .Z(n27259)) /* synthesis lut_function=(A (B)) */ ;
    defparam uart_data_74__bdd_2_lut.init = 16'h8888;
    LUT4 uart_data_34__bdd_3_lut (.A(uart_data[34]), .B(i[0]), .C(uart_data[35]), 
         .Z(n27283)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam uart_data_34__bdd_3_lut.init = 16'he2e2;
    LUT4 uart_data_34__bdd_2_lut (.A(uart_data[33]), .B(i[0]), .Z(n27284)) /* synthesis lut_function=(A (B)) */ ;
    defparam uart_data_34__bdd_2_lut.init = 16'h8888;
    LUT4 i3681_2_lut_3_lut_4_lut (.A(i[2]), .B(n27693), .C(i[4]), .D(i[3]), 
         .Z(n735[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/uarttx.v(91[9:12])
    defparam i3681_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i3_4_lut_adj_544 (.A(n21944), .B(times[4]), .C(times[6]), .D(times[5]), 
         .Z(n21762)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_544.init = 16'h8000;
    LUT4 i23388_4_lut (.A(n27239), .B(i[0]), .C(i[4]), .D(n25111), .Z(n25743)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i23388_4_lut.init = 16'h3a0a;
    LUT4 i1_3_lut_adj_545 (.A(i[1]), .B(i[3]), .C(i[2]), .Z(n25111)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;   // c:/fpga/ds18b20/uarttx.v(90[26:27])
    defparam i1_3_lut_adj_545.init = 16'h1212;
    LUT4 i3_4_lut_adj_546 (.A(times[0]), .B(times[1]), .C(times[3]), .D(times[2]), 
         .Z(n21944)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_546.init = 16'hfffe;
    LUT4 i1_2_lut_adj_547 (.A(clk_en), .B(n12382), .Z(clk_en_N_1256)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_547.init = 16'h6666;
    LUT4 i4239_2_lut (.A(n12371), .B(state), .Z(clk_uart_enable_2)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/fpga/ds18b20/uarttx.v(80[8] 98[4])
    defparam i4239_2_lut.init = 16'h4444;
    L6MUX21 i24647 (.D0(n28071), .D1(n28068), .SD(i[2]), .Z(n28072));
    PFUMX i24645 (.BLUT(n28070), .ALUT(n28069), .C0(i[4]), .Z(n28071));
    PFUMX i24642 (.BLUT(n28067), .ALUT(n28066), .C0(i[0]), .Z(n28068));
    PFUMX i24639 (.BLUT(n28063), .ALUT(n27123), .C0(i[3]), .Z(n28064));
    PFUMX i23341 (.BLUT(n25694), .ALUT(n25695), .C0(i[1]), .Z(n25696));
    LUT4 i15513_4_lut (.A(clk_en_cnt[21]), .B(clk_en_cnt[23]), .C(clk_en_cnt[22]), 
         .D(n4_adj_1908), .Z(n12382)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i15513_4_lut.init = 16'hc8c0;
    LUT4 i1_3_lut_adj_548 (.A(n21894), .B(clk_en_cnt[20]), .C(clk_en_cnt[19]), 
         .Z(n4_adj_1908)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut_adj_548.init = 16'hc8c8;
    
endmodule
//
// Verilog Description of module OLED12832
//

module OLED12832 (n27362, sys_clk_c, \cnt_main[0] , n658, oled_csn_c, 
            time_hour_high, oled_dcn_c, n17799, \temp_raw_data[4] , 
            \temp_raw_data[5] , n27634, n27685, n21947, \temp_raw_data[6] , 
            \temp_raw_data[7] , n1584, n1206, time_hour_low, GND_net, 
            time_min_high, n18, n25294, n26544, n27539, oled_update, 
            \temp_unit[2] , time_min_low, n26856, n26935, n829, \temp_unit[1] , 
            cnt, n660, n664, n27549, n27550, n26912, n1205, n1583, 
            n827, n27540, n1965, n2343, n1209, n1587, n831, n1208, 
            n1586, n1964, n2342, n830, n27212, n1962, n2340, n26903, 
            n27232, n26737, n659, n27541, n27349, \temp_ten[2] , 
            n17689, n15, n27086, n27586, n27220, n27229, n828, 
            \uart_data_120__N_1005[5] , oled_dat_c, n22, oled_clk_c, 
            oled_rst_c, \temp_ten[3] , n27542, n10, n25286, n27560, 
            n4, n6, n11269, n27561, n15_adj_2, n25231, n1961, 
            n2339, \uart_data_120__N_1204[0] , n1963, n2341, n832, 
            n1207, n1585, n1966, n2344, n1210, n1588, n1967, n2345, 
            n1211, n1589, n833, \temp_unit[0] , n4_adj_3) /* synthesis syn_module_defined=1 */ ;
    input n27362;
    input sys_clk_c;
    output \cnt_main[0] ;
    output n658;
    output oled_csn_c;
    input [3:0]time_hour_high;
    output oled_dcn_c;
    input n17799;
    input \temp_raw_data[4] ;
    input \temp_raw_data[5] ;
    input n27634;
    input n27685;
    output n21947;
    input \temp_raw_data[6] ;
    input \temp_raw_data[7] ;
    input n1584;
    input n1206;
    input [3:0]time_hour_low;
    input GND_net;
    input [3:0]time_min_high;
    input n18;
    input n25294;
    input n26544;
    output n27539;
    input oled_update;
    input \temp_unit[2] ;
    input [3:0]time_min_low;
    input n26856;
    input n26935;
    input n829;
    input \temp_unit[1] ;
    output [15:0]cnt;
    output n660;
    output n664;
    output n27549;
    output n27550;
    input n26912;
    input n1205;
    input n1583;
    input n827;
    output n27540;
    input n1965;
    input n2343;
    input n1209;
    input n1587;
    input n831;
    input n1208;
    input n1586;
    input n1964;
    input n2342;
    input n830;
    input n27212;
    input n1962;
    input n2340;
    input n26903;
    input n27232;
    input n26737;
    output n659;
    output n27541;
    input n27349;
    input \temp_ten[2] ;
    input n17689;
    input n15;
    input n27086;
    input n27586;
    input n27220;
    input n27229;
    input n828;
    output \uart_data_120__N_1005[5] ;
    output oled_dat_c;
    input n22;
    output oled_clk_c;
    output oled_rst_c;
    input \temp_ten[3] ;
    output n27542;
    input n10;
    input n25286;
    input n27560;
    input n4;
    output n6;
    input n11269;
    input n27561;
    input n15_adj_2;
    output n25231;
    input n1961;
    input n2339;
    input \uart_data_120__N_1204[0] ;
    input n1963;
    input n2341;
    input n832;
    input n1207;
    input n1585;
    input n1966;
    input n2344;
    input n1210;
    input n1588;
    input n1967;
    input n2345;
    input n1211;
    input n1589;
    input n833;
    input \temp_unit[0] ;
    input n4_adj_3;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/fpga/ds18b20/top.v(2[25:32])
    wire [5:0]state;   // c:/fpga/ds18b20/oled.v(52[13:18])
    wire [7:0]char_reg;   // c:/fpga/ds18b20/oled.v(49[17:25])
    
    wire n27554, n6_c;
    wire [167:0]char;   // c:/fpga/ds18b20/oled.v(48[19:23])
    wire [167:0]char_167__N_359;
    
    wire n6_adj_1681, n12, n24;
    wire [4:0]cnt_init;   // c:/fpga/ds18b20/oled.v(50[22:30])
    
    wire sys_clk_c_enable_62, n25114;
    wire [7:0]num;   // c:/fpga/ds18b20/oled.v(49[12:15])
    
    wire sys_clk_c_enable_169;
    wire [7:0]n47;
    
    wire n6_adj_1682, n12_adj_1683, n24_adj_1684, n27661;
    wire [15:0]cnt_delay;   // c:/fpga/ds18b20/oled.v(51[24:33])
    
    wire sys_clk_c_enable_170, n12386;
    wire [15:0]n2422;
    wire [4:0]cnt_main;   // c:/fpga/ds18b20/oled.v(50[12:20])
    
    wire n4_c, n6_adj_1685, n12_adj_1686, n24_adj_1687, n27669, n27670, 
        n27581, n2134, n27737, n21890, n27662;
    wire [7:0]y_p;   // c:/fpga/ds18b20/oled.v(47[12:15])
    wire [7:0]y_p_7__N_333;
    wire [7:0]char_reg_7__N_535;
    wire [5:0]state_back;   // c:/fpga/ds18b20/oled.v(52[20:30])
    wire [5:0]state_back_5__N_617;
    
    wire sys_clk_c_enable_5, n24434, n6_adj_1688, n12_adj_1689, n24_adj_1690, 
        n21, sys_clk_c_enable_6, n25130, n21_adj_1691;
    wire [15:0]num_delay;   // c:/fpga/ds18b20/oled.v(51[13:22])
    wire [15:0]num_delay_15__N_563;
    
    wire n27656, n4_adj_1692, n28460, n28457, n28462, n27676, n22_c, 
        sys_clk_c_enable_142, n42, n17, n17_adj_1693, n6_adj_1694, 
        n25180, n24_adj_1695, sys_clk_c_enable_193, n12385;
    wire [4:0]cnt_main_4__N_630;
    
    wire n28, n23, n25651, n26, n1178, n1197, n21_adj_1696, n22_adj_1697;
    wire [4:0]cnt_scan;   // c:/fpga/ds18b20/oled.v(50[32:40])
    
    wire n27744, n16, n27558;
    wire [167:0]char_167__N_690;
    
    wire n27613, n25762, n27533, n16_adj_1698, n1573, n21868, n6560, 
        n48, n27627, n9, n4_adj_1699;
    wire [7:0]x_ph;   // c:/fpga/ds18b20/oled.v(47[17:21])
    
    wire sys_clk_c_enable_171, n25525, n6_adj_1700, n12_adj_1701, n24_adj_1702, 
        n2131, n2133, n7, n6_adj_1703, n25179, n24_adj_1704, n21980, 
        n50, n25861, n27657, n25258, n1475, n44, n48_adj_1705, 
        n10267, n25150, n27609, n11344, n6_adj_1706, n25441, n27623, 
        n10_c, n27531, n6_adj_1707, n25181, n24_adj_1708, n27674, 
        n18_c, oled_dcn_N_982, n25221, n25209, n57, n21699, n2420, 
        n27551, n27575, n27668, n5370, n12380, n18_adj_1709;
    wire [7:0]y_p_7__N_650;
    
    wire n18_adj_1710, n28851, n27488, n27487, n27489, n6_adj_1711, 
        n10_adj_1712, n27532, n10_adj_1713, n25, n17669, n16_adj_1714, 
        n16_adj_1715, n17797, n26591, n26587, n26592, n27789, n27788;
    wire [7:0]char_reg_7__N_858;
    
    wire n16_adj_1717, n27213, n27610, n27191, n11066, n27619, n17612, 
        n25299, n10735;
    wire [4:0]cnt_write;   // c:/fpga/ds18b20/oled.v(50[42:51])
    
    wire oled_csn_N_966, n26636, n16_adj_1718, n27415, n17_adj_1719, 
        n1177, n1193, n25754, n27616;
    wire [7:0]n564;
    
    wire n25638, n6_adj_1720, n27543, n6_adj_1721, n26500, n16_adj_1722, 
        n17_adj_1723, n27413, n27612;
    wire [5:0]state_5__N_928;
    
    wire n27615, n27620, n27583, n27671, n26589, n26588, n26590, 
        n11069, n27673, n16_adj_1724;
    wire [4:0]n2398;
    
    wire n27611, n27617, sys_clk_c_enable_152, n12423;
    wire [15:0]n321;
    
    wire n27621, n25689, n27622, n16_adj_1725, n27755, n8440, n125, 
        n27584, n2129, n2130, n25415, n16_adj_1726, n28518, n64, 
        n27556, n31, n16_adj_1727, n27646, n36, n75, n6_adj_1728, 
        n27574, n1241, n27625, n25688, n25577, n27557, n2132, 
        n25098, n27756, n27757, n4236, n17_adj_1729, n26504, n26505, 
        n25683, n25682, n27626, n27738, n27739, n27740, n16_adj_1730, 
        n25680, n16_adj_1731, n27585, n22112, n16_adj_1732, n26584, 
        n26580, n26585, n27653, n27654, n21698, n25679, n17514, 
        n16_adj_1733, n64_adj_1734, n12_adj_1735, n27667, n17512, 
        n16_adj_1736, n25624, n6_adj_1737, sys_clk_c_enable_166, n12408, 
        n27707, n5, n3318, n4200, sys_clk_c_enable_199, n27602, 
        n25044, n21697, n31_adj_1738, n35, n11044, n25389, n25677, 
        n12_adj_1739;
    wire [15:0]n295;
    
    wire n28854, n28855, n21696, n21695, n28459, n1225, n26703, 
        n26706, n64_adj_1740, n21694, n64_adj_1741, n25676, n28458, 
        n64_adj_1742, n26593, n12_adj_1743, n26586, n12_adj_1744, 
        n75_adj_1745, n8, n21693, n25672, n28512, n21692, n28513, 
        n28514, n28515, n25671, n28516, n28517, n1540, n12510;
    wire [4:0]n259;
    
    wire n17224, n26582, n26581, n26583, n25220, n25210, n57_adj_1746, 
        n26715, n26714, sys_clk_c_enable_194, n12507;
    wire [4:0]cnt_scan_4__N_640;
    
    wire n28715, n28716, n2396, n11, n26718, n10741, n27595, n27226, 
        n27223, n27225, n27224, n28714, n25228, n4_adj_1747, n27601;
    wire [7:0]x_ph_7__N_658;
    
    wire n27222, n25670, n21652, n25669, n21651, n21650, n460;
    wire [4:0]n469;
    
    wire n14, n10_adj_1748, n25117, n21_adj_1749, n27753, n27754, 
        n27211, n1179, n1195, n25761, n21649, n1230, n1214, n21648, 
        n1145, n1161, n25753, n21647, n21646, n27745, n25656, 
        n25657, n25660, n26807, n25658, n25659, n25661, n27192, 
        n27193, n28856, n11_adj_1750, n5723, n25124, n21645, n12496, 
        n16_adj_1751, n27790, n25662;
    wire [7:0]n37;
    
    wire n17_adj_1754, n25715, n25716;
    wire [15:0]cnt_c;   // c:/fpga/ds18b20/oled.v(51[35:38])
    
    wire n26770, n4_adj_1755, n26769, n25726, n12487, n27690, n21644, 
        n27194, n27736, n26806, n21643, n21642, n21641, n21640, 
        n21639, n21638, n21637, n26805, n27735, n26551, n26550, 
        n26552, n16_adj_1756, n26771, n39_adj_1757, n25423, n26503, 
        n26499, n25764, n25765, n21636, n22604, n26501, n26502, 
        n21635, n1150, n1166, n25724, n22318, n12314, n27751, 
        n27537, n27536, n1246, n27535, n27750, n16_adj_1758, n4_adj_1759, 
        n1572;
    wire [4:0]n1;
    
    wire n27702, n28717, n18_adj_1761, n10_adj_1762, n1209_adj_1763, 
        n25755, n27672, n19, n19_adj_1764, n19_adj_1765, n21634, 
        n34, n41_adj_1766, n26716, n26717, n26704, n26705, n25701, 
        n25700, n25704, n25703, n25710, n25709, n25224, n61;
    wire [15:0]num_delay_15__N_874;
    
    wire n16_adj_1768, n16_adj_1769, n16_adj_1770, n16_adj_1771, n16_adj_1772, 
        n27582, n16_adj_1773, n27660, n27658, n26884, n16_adj_1774, 
        n27718, n16_adj_1775, n16_adj_1776, n25269, n16_adj_1777, 
        n16_adj_1778, n16_adj_1779, n16_adj_1780, n25448, n16_adj_1781, 
        n27603, n16_adj_1782, n4_adj_1783, n16_adj_1784, n16_adj_1785, 
        n16_adj_1786, n25450, n4_adj_1787, n16_adj_1788, n26719, n16_adj_1789, 
        n16_adj_1790, n27752, n25757, n25758, n27, n25125, n24_adj_1791, 
        n16_adj_1792, n25750, n21_adj_1793, n15_adj_1794, n16_adj_1795, 
        n16_adj_1796, n16_adj_1797, n16_adj_1798, n16_adj_1799, n27_adj_1800, 
        n16_adj_1801, n16_adj_1802, n21_adj_1803, n16_adj_1804, n12_adj_1805, 
        n16_adj_1806, n24_adj_1807, n21633, n16_adj_1808, n11_adj_1809, 
        n16_adj_1810, n24_adj_1811, n16_adj_1812, n24_adj_1813, n16_adj_1814, 
        n16_adj_1815, n16_adj_1816, n16_adj_1817, n16_adj_1818, n24_adj_1819, 
        n16_adj_1820, n16_adj_1821, n16_adj_1822, n16_adj_1823, n16_adj_1824, 
        sys_clk_c_enable_197, n25138, n16_adj_1825, n16_adj_1826, n18_adj_1828, 
        n16_adj_1829, n16_adj_1830, n16_adj_1831, n16_adj_1832, n16_adj_1833, 
        n16_adj_1834, n16_adj_1835, n16_adj_1836, n16_adj_1837, n16_adj_1838, 
        n16_adj_1839, n16_adj_1840, n16_adj_1841, n16_adj_1842, n16_adj_1843, 
        n16_adj_1844, n16_adj_1845, n16_adj_1846, n16_adj_1847, n16_adj_1848, 
        n16_adj_1849, n16_adj_1850, n16_adj_1851, n27486, n16_adj_1852, 
        n16_adj_1853, n16_adj_1854, n16_adj_1855, sys_clk_c_enable_198, 
        n24690, n16_adj_1856, n16_adj_1857, n16_adj_1858;
    wire [0:0]n3210;
    
    wire n17_adj_1859, n20, n16_adj_1860, n16_adj_1861, n18_adj_1862, 
        n16_adj_1863, n16_adj_1864, n25673, n16_adj_1865, n16_adj_1866, 
        n16_adj_1867, n16_adj_1868, n17_adj_1869, n25728, n25729, 
        n21916, n4_adj_1870, n17218, n16_adj_1871, n25760, n20_adj_1872, 
        n25763, n1259, n25674, n1243, n25719, n16_adj_1877, n38_adj_1878, 
        n16_adj_1879, n17_adj_1880, n20_adj_1881, n25678, n25681, 
        n25684, n16_adj_1882, n25143, oled_dat_N_1004, n27746, n16_adj_1883, 
        n25725, n26707, n1163, n24_adj_1884, n17_adj_1885, n1147, 
        n20_adj_1886, n16_adj_1887, n17_adj_1888, n1198, n16_adj_1889, 
        n1182, n17_adj_1890, n16_adj_1891, n13, n16_adj_1892, n17_adj_1893, 
        n24_adj_1894, n25587, n12_adj_1895, n25119, n25809, n21803, 
        n16_adj_1896, n21_adj_1897, n16_adj_1898, n24_adj_1899, n25141, 
        n15_adj_1900, n19_adj_1901, n20_adj_1902, n18_adj_1904, n16_adj_1905;
    
    LUT4 i1_4_lut (.A(state[2]), .B(n27362), .C(char_reg[4]), .D(n27554), 
         .Z(n6_c)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'ha088;
    FD1S3AX char_i29 (.D(char_167__N_359[29]), .CK(sys_clk_c), .Q(char[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i29.GSR = "ENABLED";
    PFUMX i47 (.BLUT(n6_adj_1681), .ALUT(n12), .C0(state[3]), .Z(n24));
    FD1P3AX cnt_init_i0_i0 (.D(n25114), .SP(sys_clk_c_enable_62), .CK(sys_clk_c), 
            .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    FD1S3AX char_i27 (.D(char_167__N_359[27]), .CK(sys_clk_c), .Q(char[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i27.GSR = "ENABLED";
    FD1S3AX char_i26 (.D(char_167__N_359[26]), .CK(sys_clk_c), .Q(char[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i26.GSR = "ENABLED";
    FD1S3AX char_i25 (.D(char_167__N_359[25]), .CK(sys_clk_c), .Q(char[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i25.GSR = "ENABLED";
    FD1S3AX char_i24 (.D(char_167__N_359[24]), .CK(sys_clk_c), .Q(char[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i24.GSR = "ENABLED";
    FD1P3AX num_2268__i0 (.D(n47[0]), .SP(sys_clk_c_enable_169), .CK(sys_clk_c), 
            .Q(num[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam num_2268__i0.GSR = "ENABLED";
    FD1S3AX char_i21 (.D(char_167__N_359[21]), .CK(sys_clk_c), .Q(char[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i21.GSR = "ENABLED";
    FD1S3AX char_i20 (.D(char_167__N_359[20]), .CK(sys_clk_c), .Q(char[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i20.GSR = "ENABLED";
    PFUMX i47_adj_93 (.BLUT(n6_adj_1682), .ALUT(n12_adj_1683), .C0(state[3]), 
          .Z(n24_adj_1684));
    FD1S3AX char_i19 (.D(char_167__N_359[19]), .CK(sys_clk_c), .Q(char[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i19.GSR = "ENABLED";
    FD1S3AX char_i18 (.D(char_167__N_359[18]), .CK(sys_clk_c), .Q(char[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i18.GSR = "ENABLED";
    FD1S3AX char_i17 (.D(char_167__N_359[17]), .CK(sys_clk_c), .Q(char[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i17.GSR = "ENABLED";
    FD1S3AX char_i16 (.D(char_167__N_359[16]), .CK(sys_clk_c), .Q(char[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i16.GSR = "ENABLED";
    LUT4 i24_2_lut_rep_546 (.A(state[2]), .B(state[3]), .Z(n27661)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i24_2_lut_rep_546.init = 16'h6666;
    FD1S3AX char_i13 (.D(char_167__N_359[13]), .CK(sys_clk_c), .Q(char[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i13.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i6 (.D(n2422[6]), .SP(sys_clk_c_enable_170), .CD(n12386), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    LUT4 i23257_3_lut_4_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[4]), .C(\cnt_main[0] ), 
         .D(cnt_main[1]), .Z(n4_c)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;   // c:/fpga/ds18b20/oled.v(88[8:12])
    defparam i23257_3_lut_4_lut_4_lut.init = 16'hfeef;
    PFUMX i47_adj_94 (.BLUT(n6_adj_1685), .ALUT(n12_adj_1686), .C0(state[3]), 
          .Z(n24_adj_1687));
    FD1S3AX char_i11 (.D(char_167__N_359[11]), .CK(sys_clk_c), .Q(char[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i11.GSR = "ENABLED";
    FD1S3AX char_i10 (.D(char_167__N_359[10]), .CK(sys_clk_c), .Q(char[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i10.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_466_3_lut_4_lut (.A(state[2]), .B(state[3]), .C(n27669), 
         .D(n27670), .Z(n27581)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;
    defparam i1_2_lut_rep_466_3_lut_4_lut.init = 16'h0006;
    FD1S3AX char_i9 (.D(char_167__N_359[9]), .CK(sys_clk_c), .Q(char[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i9.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(n2134), .B(num[4]), .C(n658), .D(n27737), 
         .Z(n21890)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h2000;
    LUT4 i14540_2_lut_rep_547 (.A(state[2]), .B(state[0]), .Z(n27662)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14540_2_lut_rep_547.init = 16'heeee;
    FD1S3AX y_p_i0 (.D(y_p_7__N_333[0]), .CK(sys_clk_c), .Q(y_p[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam y_p_i0.GSR = "ENABLED";
    FD1S3AX char_i0 (.D(char_167__N_359[0]), .CK(sys_clk_c), .Q(char[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i0.GSR = "ENABLED";
    FD1S3AX char_reg_i0 (.D(char_reg_7__N_535[0]), .CK(sys_clk_c), .Q(char_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_reg_i0.GSR = "ENABLED";
    FD1S3AY state_back_i0 (.D(state_back_5__N_617[0]), .CK(sys_clk_c), .Q(state_back[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam state_back_i0.GSR = "ENABLED";
    FD1P3AY oled_csn_308 (.D(n24434), .SP(sys_clk_c_enable_5), .CK(sys_clk_c), 
            .Q(oled_csn_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam oled_csn_308.GSR = "ENABLED";
    PFUMX i47_adj_95 (.BLUT(n6_adj_1688), .ALUT(n12_adj_1689), .C0(state[3]), 
          .Z(n24_adj_1690));
    LUT4 i41_4_lut_4_lut_4_lut (.A(cnt_main[1]), .B(\cnt_main[0] ), .C(time_hour_high[2]), 
         .D(cnt_main[2]), .Z(n21)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B+!(D)))) */ ;   // c:/fpga/ds18b20/oled.v(78[24:39])
    defparam i41_4_lut_4_lut_4_lut.init = 16'h3188;
    FD1P3AX oled_dcn_310 (.D(n25130), .SP(sys_clk_c_enable_6), .CK(sys_clk_c), 
            .Q(oled_dcn_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam oled_dcn_310.GSR = "ENABLED";
    LUT4 i41_4_lut_4_lut_4_lut_adj_96 (.A(cnt_main[1]), .B(\cnt_main[0] ), 
         .C(time_hour_high[0]), .D(cnt_main[2]), .Z(n21_adj_1691)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B+!(D)))) */ ;   // c:/fpga/ds18b20/oled.v(78[24:39])
    defparam i41_4_lut_4_lut_4_lut_adj_96.init = 16'h3188;
    FD1S3AY num_delay_i0 (.D(num_delay_15__N_563[0]), .CK(sys_clk_c), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam num_delay_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(y_p[0]), 
         .D(n27656), .Z(n4_adj_1692)) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hf054;
    LUT4 n28461_bdd_2_lut_4_lut (.A(n28460), .B(n28457), .C(state[2]), 
         .D(state[3]), .Z(n28462)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n28461_bdd_2_lut_4_lut.init = 16'h00ca;
    LUT4 i2_4_lut (.A(cnt_main[1]), .B(n27676), .C(n17799), .D(cnt_main[2]), 
         .Z(n22_c)) /* synthesis lut_function=(!(A ((D)+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0488;
    FD1S3AX char_i8 (.D(char_167__N_359[8]), .CK(sys_clk_c), .Q(char[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i8.GSR = "ENABLED";
    FD1P3AY state_i0_i0 (.D(n42), .SP(sys_clk_c_enable_142), .CK(sys_clk_c), 
            .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam state_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i5 (.D(n2422[5]), .SP(sys_clk_c_enable_170), .CD(n12386), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    FD1S3AX char_i5 (.D(char_167__N_359[5]), .CK(sys_clk_c), .Q(char[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i5.GSR = "ENABLED";
    FD1S3AX char_i3 (.D(char_167__N_359[3]), .CK(sys_clk_c), .Q(char[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i3.GSR = "ENABLED";
    LUT4 i37_4_lut_4_lut (.A(cnt_main[1]), .B(\cnt_main[0] ), .C(time_hour_high[1]), 
         .D(cnt_main[2]), .Z(n17)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A ((D)+!B))) */ ;
    defparam i37_4_lut_4_lut.init = 16'h2044;
    FD1S3AX char_i2 (.D(char_167__N_359[2]), .CK(sys_clk_c), .Q(char[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i2.GSR = "ENABLED";
    LUT4 i37_4_lut_4_lut_adj_97 (.A(cnt_main[1]), .B(\cnt_main[0] ), .C(time_hour_high[3]), 
         .D(cnt_main[2]), .Z(n17_adj_1693)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A ((D)+!B))) */ ;
    defparam i37_4_lut_4_lut_adj_97.init = 16'h2044;
    FD1S3AX char_i1 (.D(char_167__N_359[1]), .CK(sys_clk_c), .Q(char[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i1.GSR = "ENABLED";
    PFUMX i47_adj_98 (.BLUT(n6_adj_1694), .ALUT(n25180), .C0(state[3]), 
          .Z(n24_adj_1695));
    FD1P3IX cnt_main_i0_i0 (.D(cnt_main_4__N_630[0]), .SP(sys_clk_c_enable_193), 
            .CD(n12385), .CK(sys_clk_c), .Q(\cnt_main[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    PFUMX i44 (.BLUT(n28), .ALUT(n23), .C0(n25651), .Z(n26));
    LUT4 shift_right_66_i1178_3_lut (.A(char[33]), .B(char[41]), .C(num[0]), 
         .Z(n1178)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1178_3_lut.init = 16'hcaca;
    LUT4 shift_right_66_i1197_3_lut (.A(char[52]), .B(char[60]), .C(num[0]), 
         .Z(n1197)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1197_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_4_lut (.A(\temp_raw_data[4] ), .B(\temp_raw_data[5] ), 
         .C(n27634), .D(n27685), .Z(n21947)) /* synthesis lut_function=(A (B+(C+(D)))+!A ((C+(D))+!B)) */ ;
    defparam i2_4_lut_4_lut.init = 16'hfff9;
    LUT4 i1_3_lut_4_lut_4_lut (.A(state[3]), .B(state_back[1]), .C(state[0]), 
         .D(state[2]), .Z(n21_adj_1696)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_4_lut_adj_99 (.A(\temp_raw_data[4] ), .B(\temp_raw_data[5] ), 
         .C(\temp_raw_data[6] ), .D(\temp_raw_data[7] ), .Z(n22_adj_1697)) /* synthesis lut_function=(!(A (B (D))+!A (B (D)+!B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_99.init = 16'h23ff;
    LUT4 i1_2_lut_else_4_lut (.A(cnt_scan[2]), .B(n1584), .C(n1206), .D(cnt_scan[0]), 
         .Z(n27744)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam i1_2_lut_else_4_lut.init = 16'h4450;
    LUT4 i1_4_lut_adj_100 (.A(state[0]), .B(char[8]), .C(n16), .D(n27558), 
         .Z(char_167__N_359[8])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_100.init = 16'hdc50;
    LUT4 i33_4_lut (.A(char[8]), .B(char_167__N_690[8]), .C(state[1]), 
         .D(n27613), .Z(n16)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut.init = 16'h0aca;
    LUT4 i23407_4_lut_4_lut_4_lut (.A(num[0]), .B(num[1]), .C(char[90]), 
         .D(char[66]), .Z(n25762)) /* synthesis lut_function=(A (B (C))+!A !(B+!(D))) */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam i23407_4_lut_4_lut_4_lut.init = 16'h9180;
    LUT4 i1_4_lut_adj_101 (.A(\cnt_main[0] ), .B(char[8]), .C(n27533), 
         .D(n16_adj_1698), .Z(char_167__N_690[8])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_101.init = 16'hdc50;
    LUT4 shift_right_66_i1573_4_lut_4_lut_4_lut (.A(num[0]), .B(num[1]), 
         .C(char[124]), .D(char[100]), .Z(n1573)) /* synthesis lut_function=(A (B (C))+!A !(B+!(D))) */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam shift_right_66_i1573_4_lut_4_lut_4_lut.init = 16'h9180;
    PFUMX i96 (.BLUT(n21868), .ALUT(n6560), .C0(cnt_scan[0]), .Z(n48));
    FD1P3IX cnt_delay_i0_i0 (.D(n2422[0]), .SP(sys_clk_c_enable_170), .CD(n12386), 
            .CK(sys_clk_c), .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), 
         .C(n27627), .D(n9), .Z(n4_adj_1699)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/fpga/ds18b20/oled.v(87[8:12])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h00f9;
    FD1P3AX x_ph_i0_i0 (.D(n25525), .SP(sys_clk_c_enable_171), .CK(sys_clk_c), 
            .Q(x_ph[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam x_ph_i0_i0.GSR = "ENABLED";
    FD1S3AX y_p_i7 (.D(y_p_7__N_333[7]), .CK(sys_clk_c), .Q(y_p[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam y_p_i7.GSR = "ENABLED";
    PFUMX i47_adj_102 (.BLUT(n6_adj_1700), .ALUT(n12_adj_1701), .C0(state[3]), 
          .Z(n24_adj_1702));
    LUT4 i2_2_lut_3_lut_3_lut (.A(n2131), .B(num[4]), .C(n2133), .Z(n7)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam i2_2_lut_3_lut_3_lut.init = 16'hfdfd;
    PFUMX i47_adj_103 (.BLUT(n6_adj_1703), .ALUT(n25179), .C0(state[3]), 
          .Z(n24_adj_1704));
    FD1P3AX x_ph_i0_i1 (.D(n21980), .SP(sys_clk_c_enable_171), .CK(sys_clk_c), 
            .Q(x_ph[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam x_ph_i0_i1.GSR = "ENABLED";
    LUT4 i23654_4_lut (.A(n50), .B(n25861), .C(n27657), .D(n27669), 
         .Z(n42)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // c:/fpga/ds18b20/oled.v(63[4] 172[11])
    defparam i23654_4_lut.init = 16'hccc4;
    LUT4 i1_4_lut_adj_104 (.A(cnt_scan[4]), .B(n25258), .C(cnt_scan[2]), 
         .D(cnt_scan[3]), .Z(n1475)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_104.init = 16'hfaee;
    LUT4 i23653_4_lut (.A(n44), .B(n27670), .C(n48_adj_1705), .D(n27657), 
         .Z(n25861)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B+!(C))) */ ;   // c:/fpga/ds18b20/oled.v(63[4] 172[11])
    defparam i23653_4_lut.init = 16'hcfcd;
    LUT4 i72_4_lut (.A(state[0]), .B(n16_adj_1698), .C(state[1]), .D(n10267), 
         .Z(n44)) /* synthesis lut_function=(!(A (C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/fpga/ds18b20/oled.v(63[4] 172[11])
    defparam i72_4_lut.init = 16'h1a5a;
    LUT4 i2_4_lut_adj_105 (.A(n25150), .B(n27669), .C(n27609), .D(state[3]), 
         .Z(n48_adj_1705)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/fpga/ds18b20/oled.v(63[4] 172[11])
    defparam i2_4_lut_adj_105.init = 16'h3022;
    LUT4 i23115_4_lut (.A(n11344), .B(cnt_init[2]), .C(state[0]), .D(n6_adj_1706), 
         .Z(n25441)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i23115_4_lut.init = 16'hdc50;
    LUT4 time_hour_low_3__bdd_4_lut (.A(time_hour_low[3]), .B(n27623), .C(n10_c), 
         .D(cnt_main[2]), .Z(n27531)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam time_hour_low_3__bdd_4_lut.init = 16'h88f0;
    PFUMX i47_adj_106 (.BLUT(n6_adj_1707), .ALUT(n25181), .C0(state[3]), 
          .Z(n24_adj_1708));
    LUT4 i1_3_lut_4_lut (.A(n27674), .B(n27656), .C(char[115]), .D(n18_c), 
         .Z(char_167__N_690[115])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hffd0;
    LUT4 i1_4_lut_adj_107 (.A(cnt_init[1]), .B(oled_dcn_N_982), .C(cnt_init[0]), 
         .D(state[0]), .Z(n6_adj_1706)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;   // c:/fpga/ds18b20/oled.v(99[7] 115[14])
    defparam i1_4_lut_adj_107.init = 16'haeaa;
    PFUMX i92 (.BLUT(n25221), .ALUT(n25209), .C0(cnt_scan[1]), .Z(n57));
    CCU2D sub_1708_add_2_17 (.A0(cnt_delay[15]), .B0(num_delay[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21699), .S1(n2420));
    defparam sub_1708_add_2_17.INIT0 = 16'h5999;
    defparam sub_1708_add_2_17.INIT1 = 16'h0000;
    defparam sub_1708_add_2_17.INJECT1_0 = "NO";
    defparam sub_1708_add_2_17.INJECT1_1 = "NO";
    LUT4 i23805_3_lut_3_lut_4_lut_4_lut (.A(n27558), .B(n27551), .C(n27575), 
         .D(n27668), .Z(sys_clk_c_enable_171)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;
    defparam i23805_3_lut_3_lut_4_lut_4_lut.init = 16'h5400;
    LUT4 i10065_3_lut_4_lut_4_lut (.A(n27558), .B(n5370), .C(n27575), 
         .D(n27668), .Z(n12380)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;
    defparam i10065_3_lut_4_lut_4_lut.init = 16'h5400;
    LUT4 i1_3_lut_4_lut_adj_108 (.A(n27674), .B(n27656), .C(y_p[1]), .D(n18_adj_1709), 
         .Z(y_p_7__N_650[1])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_108.init = 16'hffd0;
    FD1P3IX cnt_delay_i0_i4 (.D(n2422[4]), .SP(sys_clk_c_enable_170), .CD(n12386), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    LUT4 i35_4_lut_4_lut (.A(n27676), .B(\cnt_main[0] ), .C(char[21]), 
         .D(cnt_main[2]), .Z(n18_adj_1710)) /* synthesis lut_function=(A (B (D)+!B !(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i35_4_lut_4_lut.init = 16'h8803;
    LUT4 i23170_2_lut_rep_617 (.A(state[1]), .B(state[5]), .Z(n28851)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i23170_2_lut_rep_617.init = 16'heeee;
    PFUMX i24451 (.BLUT(n27488), .ALUT(n27487), .C0(state[3]), .Z(n27489));
    LUT4 i23710_2_lut_rep_436_2_lut_3_lut_4_lut (.A(cnt_main[2]), .B(n27656), 
         .C(n9), .D(n6_adj_1711), .Z(n27551)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (C))) */ ;   // c:/fpga/ds18b20/oled.v(88[8:12])
    defparam i23710_2_lut_rep_436_2_lut_3_lut_4_lut.init = 16'h0f2f;
    LUT4 time_hour_low_2__bdd_4_lut (.A(time_hour_low[2]), .B(n27623), .C(n10_adj_1712), 
         .D(cnt_main[2]), .Z(n27532)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam time_hour_low_2__bdd_4_lut.init = 16'h88f0;
    LUT4 time_min_high_0__bdd_4_lut_24661 (.A(time_min_high[0]), .B(n27623), 
         .C(n10_adj_1713), .D(cnt_main[2]), .Z(n27533)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam time_min_high_0__bdd_4_lut_24661.init = 16'h88f0;
    LUT4 i33_4_lut_adj_109 (.A(char[117]), .B(n25), .C(state[1]), .D(n17669), 
         .Z(n16_adj_1714)) /* synthesis lut_function=(!(A (C (D))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_109.init = 16'h0aba;
    FD1P3IX cnt_delay_i0_i15 (.D(n2422[15]), .SP(sys_clk_c_enable_170), 
            .CD(n12386), .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_110 (.A(state[0]), .B(char[5]), .C(n16_adj_1715), 
         .D(n27558), .Z(char_167__N_359[5])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_110.init = 16'hdc50;
    LUT4 i33_4_lut_adj_111 (.A(char[5]), .B(n25), .C(state[1]), .D(n17669), 
         .Z(n16_adj_1715)) /* synthesis lut_function=(!(A (C (D))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_111.init = 16'h0aba;
    LUT4 pwr_bdd_2_lut_24058_rep_424_4_lut (.A(n17797), .B(n18), .C(n25294), 
         .D(n26544), .Z(n27539)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A ((C+(D))+!B)) */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam pwr_bdd_2_lut_24058_rep_424_4_lut.init = 16'hff53;
    PFUMX i23912 (.BLUT(n26591), .ALUT(n26587), .C0(cnt_scan[3]), .Z(n26592));
    FD1S3AX y_p_i1 (.D(y_p_7__N_333[1]), .CK(sys_clk_c), .Q(y_p[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam y_p_i1.GSR = "ENABLED";
    LUT4 n25685_bdd_4_lut_then_4_lut (.A(char[62]), .B(char[54]), .C(num[2]), 
         .D(num[0]), .Z(n27789)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;
    defparam n25685_bdd_4_lut_then_4_lut.init = 16'ha0c0;
    LUT4 n25685_bdd_4_lut_else_4_lut (.A(char[38]), .B(num[2]), .C(char[46]), 
         .D(num[0]), .Z(n27788)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam n25685_bdd_4_lut_else_4_lut.init = 16'hc088;
    FD1S3AX y_p_i4 (.D(y_p_7__N_333[4]), .CK(sys_clk_c), .Q(y_p[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam y_p_i4.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(state[2]), .B(char_reg_7__N_858[5]), .Z(n6_adj_1685)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i23801_2_lut_rep_433_2_lut_4_lut_4_lut_4_lut (.A(state[2]), .B(state[1]), 
         .C(n27613), .D(state[0]), .Z(sys_clk_c_enable_193)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (C+(D))+!B (C+!(D))))) */ ;
    defparam i23801_2_lut_rep_433_2_lut_4_lut_4_lut_4_lut.init = 16'h030e;
    LUT4 i1_4_lut_adj_112 (.A(state[0]), .B(char[3]), .C(n16_adj_1717), 
         .D(n27558), .Z(char_167__N_359[3])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_112.init = 16'hdc50;
    LUT4 i33_4_lut_adj_113 (.A(char[3]), .B(char_167__N_690[3]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1717)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_113.init = 16'h0aca;
    LUT4 i23813_2_lut_3_lut_4_lut (.A(state[2]), .B(state[1]), .C(n27489), 
         .D(state[0]), .Z(sys_clk_c_enable_142)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23813_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_114 (.A(n27213), .B(char[3]), .C(n27610), .D(n9), 
         .Z(char_167__N_690[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_114.init = 16'heca0;
    LUT4 n4_bdd_2_lut_3_lut (.A(state[2]), .B(state[1]), .C(state_back[2]), 
         .Z(n27191)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n4_bdd_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut (.A(state[2]), .B(state[1]), .C(state_back[3]), 
         .Z(n11066)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 equal_1659_i8_2_lut_rep_553 (.A(state[2]), .B(state[1]), .C(state[0]), 
         .Z(n27668)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam equal_1659_i8_2_lut_rep_553.init = 16'hfefe;
    LUT4 i1_3_lut_4_lut_4_lut_adj_115 (.A(state[2]), .B(state[1]), .C(state[0]), 
         .D(n27619), .Z(n12385)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_115.init = 16'h0010;
    LUT4 i14570_2_lut_rep_554 (.A(state[1]), .B(state[0]), .Z(n27669)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14570_2_lut_rep_554.init = 16'heeee;
    LUT4 i15329_2_lut_3_lut (.A(state[1]), .B(state[0]), .C(sys_clk_c_enable_142), 
         .Z(n17612)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i15329_2_lut_3_lut.init = 16'he0e0;
    LUT4 i14531_2_lut_rep_555 (.A(state[5]), .B(state[4]), .Z(n27670)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14531_2_lut_rep_555.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(state[3]), 
         .D(state[1]), .Z(n25299)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 n10735_bdd_4_lut_24196 (.A(n10735), .B(cnt_write[0]), .C(state[4]), 
         .D(oled_csn_N_966), .Z(n26636)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam n10735_bdd_4_lut_24196.init = 16'h10e0;
    LUT4 i1_4_lut_adj_116 (.A(state[0]), .B(char[2]), .C(n16_adj_1718), 
         .D(n27558), .Z(char_167__N_359[2])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_116.init = 16'hdc50;
    LUT4 i33_4_lut_adj_117 (.A(char[2]), .B(char_167__N_690[2]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1718)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_117.init = 16'h0aca;
    PFUMX i24418 (.BLUT(oled_update), .ALUT(n27415), .C0(n27676), .Z(cnt_main_4__N_630[0]));
    LUT4 i1_4_lut_adj_118 (.A(n17_adj_1719), .B(char[2]), .C(n27610), 
         .D(n9), .Z(char_167__N_690[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_118.init = 16'heca0;
    LUT4 i37_4_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(\temp_unit[2] ), 
         .D(time_min_low[2]), .Z(n17_adj_1719)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;
    defparam i37_4_lut.init = 16'h6420;
    PFUMX i23399 (.BLUT(n1177), .ALUT(n1193), .C0(num[1]), .Z(n25754));
    LUT4 i14882_2_lut_rep_501_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(state[0]), 
         .D(state[1]), .Z(n27616)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i14882_2_lut_rep_501_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut (.A(n26856), .B(n564[1]), .C(n25638), .D(state[2]), 
         .Z(n6_adj_1720)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut.init = 16'hac00;
    LUT4 i1_2_lut_4_lut_adj_119 (.A(n26935), .B(n564[0]), .C(n27543), 
         .D(state[2]), .Z(n6_adj_1721)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_119.init = 16'hac00;
    LUT4 n829_bdd_2_lut_23853 (.A(n829), .B(cnt_scan[0]), .Z(n26500)) /* synthesis lut_function=(A (B)) */ ;
    defparam n829_bdd_2_lut_23853.init = 16'h8888;
    FD1S3AX y_p_i5 (.D(y_p_7__N_333[5]), .CK(sys_clk_c), .Q(y_p[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam y_p_i5.GSR = "ENABLED";
    LUT4 i23154_2_lut_rep_465_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(state[2]), 
         .D(state[3]), .Z(n27613)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23154_2_lut_rep_465_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_120 (.A(state[0]), .B(char[1]), .C(n16_adj_1722), 
         .D(n27558), .Z(char_167__N_359[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_120.init = 16'hdc50;
    LUT4 i33_4_lut_adj_121 (.A(char[1]), .B(char_167__N_690[1]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1722)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_121.init = 16'h0aca;
    LUT4 i1_4_lut_adj_122 (.A(n17_adj_1723), .B(char[1]), .C(n27610), 
         .D(n9), .Z(char_167__N_690[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_122.init = 16'heca0;
    PFUMX i24416 (.BLUT(n27413), .ALUT(n27612), .C0(cnt_init[0]), .Z(state_5__N_928[1]));
    LUT4 i37_4_lut_adj_123 (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(\temp_unit[1] ), 
         .D(time_min_low[1]), .Z(n17_adj_1723)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;
    defparam i37_4_lut_adj_123.init = 16'h6420;
    LUT4 equal_1659_i10_2_lut_rep_504_3_lut (.A(state[5]), .B(state[4]), 
         .C(state[3]), .Z(n27619)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam equal_1659_i10_2_lut_rep_504_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_500_3_lut (.A(state[5]), .B(state[4]), .C(state[1]), 
         .Z(n27615)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_500_3_lut.init = 16'hfefe;
    LUT4 state_5__I_0_317_i11_2_lut_rep_468_3_lut_4_lut (.A(state[5]), .B(state[4]), 
         .C(n27620), .D(state[3]), .Z(n27583)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam state_5__I_0_317_i11_2_lut_rep_468_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3591_2_lut_rep_556 (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n27671)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/oled.v(143[25:41])
    defparam i3591_2_lut_rep_556.init = 16'h8888;
    PFUMX i23910 (.BLUT(n26589), .ALUT(n26588), .C0(cnt_scan[2]), .Z(n26590));
    LUT4 i1_4_lut_adj_124 (.A(cnt_init[0]), .B(n11069), .C(state_back[2]), 
         .D(n27673), .Z(n16_adj_1724)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_124.init = 16'h5444;
    LUT4 i1_3_lut (.A(state_back[2]), .B(n27612), .C(oled_dcn_N_982), 
         .Z(n11069)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i1_3_lut.init = 16'h8c8c;
    LUT4 i3596_2_lut_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .Z(n2398[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/oled.v(143[25:41])
    defparam i3596_2_lut_3_lut.init = 16'h7878;
    LUT4 i3603_2_lut_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n2398[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/oled.v(143[25:41])
    defparam i3603_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2_3_lut_rep_496_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[0]), 
         .D(cnt_init[2]), .Z(n27611)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(104[8:12])
    defparam i2_3_lut_rep_496_4_lut.init = 16'hfeee;
    LUT4 i2_3_lut_rep_502_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[0]), 
         .D(n27673), .Z(n27617)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/fpga/ds18b20/oled.v(104[8:12])
    defparam i2_3_lut_rep_502_4_lut.init = 16'h0010;
    FD1P3IX cnt_i0_i0 (.D(n321[0]), .SP(sys_clk_c_enable_152), .CD(n12423), 
            .CK(sys_clk_c), .Q(cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_i0_i0.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_506_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[0]), 
         .D(n27673), .Z(n27621)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/oled.v(104[8:12])
    defparam i2_3_lut_rep_506_4_lut.init = 16'hfffe;
    LUT4 i23334_3_lut (.A(char[84]), .B(char[92]), .C(num[0]), .Z(n25689)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23334_3_lut.init = 16'hcaca;
    LUT4 cnt_init_4__I_0_338_i8_2_lut_rep_507_3_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[2]), .Z(n27622)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/fpga/ds18b20/oled.v(104[8:12])
    defparam cnt_init_4__I_0_338_i8_2_lut_rep_507_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_125 (.A(oled_update), .B(n27676), .C(cnt_main[2]), 
         .D(cnt_main[1]), .Z(n5370)) /* synthesis lut_function=(A ((C (D))+!B)+!A ((C)+!B)) */ ;
    defparam i1_4_lut_adj_125.init = 16'hf373;
    LUT4 i1_4_lut_adj_126 (.A(state[0]), .B(char[29]), .C(n16_adj_1725), 
         .D(n27558), .Z(char_167__N_359[29])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_126.init = 16'hdc50;
    LUT4 i23788_2_lut (.A(state[5]), .B(state[3]), .Z(n25651)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/oled.v(63[4] 172[11])
    defparam i23788_2_lut.init = 16'heeee;
    LUT4 i2_3_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[2]), 
         .Z(n25258)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    LUT4 mux_371_Mux_31_i125_4_lut (.A(n27755), .B(n8440), .C(n660), .D(n664), 
         .Z(n125)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/fpga/ds18b20/oled.v(132[51:79])
    defparam mux_371_Mux_31_i125_4_lut.init = 16'h3a0a;
    LUT4 i23694_2_lut_rep_469_3_lut_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[0]), .D(cnt_init[2]), .Z(n27584)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/fpga/ds18b20/oled.v(104[8:12])
    defparam i23694_2_lut_rep_469_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_adj_127 (.A(n2129), .B(n2130), .Z(n25415)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_127.init = 16'heeee;
    LUT4 i33_4_lut_adj_128 (.A(char[115]), .B(char_167__N_690[115]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1726)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_128.init = 16'h0aca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_129 (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[0]), .D(cnt_init[2]), .Z(n11344)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/oled.v(104[8:12])
    defparam i1_2_lut_3_lut_4_lut_adj_129.init = 16'hfffe;
    LUT4 i1_2_lut_adj_130 (.A(cnt_scan[4]), .B(n28518), .Z(n64)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_130.init = 16'h4444;
    LUT4 i1_2_lut_rep_558 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n27673)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_558.init = 16'hdddd;
    LUT4 i1_3_lut_rep_441_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(n27612), 
         .D(oled_dcn_N_982), .Z(n27556)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam i1_3_lut_rep_441_4_lut.init = 16'hfddd;
    LUT4 i33_4_lut_adj_131 (.A(y_p[7]), .B(n31), .C(state[1]), .D(n27613), 
         .Z(n16_adj_1727)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_131.init = 16'h0a3a;
    LUT4 i2_4_lut_adj_132 (.A(n27646), .B(n4_c), .C(y_p[7]), .D(n36), 
         .Z(n31)) /* synthesis lut_function=(A (B)+!A !((C+!(D))+!B)) */ ;
    defparam i2_4_lut_adj_132.init = 16'h8c88;
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[4]), 
         .D(cnt_init[3]), .Z(n75)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0007;
    LUT4 equal_17_i6_2_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .Z(n6_adj_1728)) /* synthesis lut_function=((B)+!A) */ ;   // c:/fpga/ds18b20/oled.v(87[8:12])
    defparam equal_17_i6_2_lut.init = 16'hdddd;
    LUT4 i3481_2_lut_rep_559 (.A(cnt_main[1]), .B(\cnt_main[0] ), .Z(n27674)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/oled.v(78[24:39])
    defparam i3481_2_lut_rep_559.init = 16'h6666;
    LUT4 i731_2_lut_rep_459_3_lut_4_lut (.A(cnt_main[2]), .B(n27656), .C(n9), 
         .D(n6_adj_1711), .Z(n27574)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // c:/fpga/ds18b20/oled.v(88[8:12])
    defparam i731_2_lut_rep_459_3_lut_4_lut.init = 16'hf0f2;
    LUT4 shift_right_66_i1241_3_lut (.A(char[96]), .B(char[104]), .C(num[0]), 
         .Z(n1241)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1241_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_rep_510_3_lut_4_lut (.A(cnt_main[1]), .B(\cnt_main[0] ), 
         .C(cnt_main[4]), .D(cnt_main[3]), .Z(n27625)) /* synthesis lut_function=(A (B+(C+(D)))+!A ((C+(D))+!B)) */ ;   // c:/fpga/ds18b20/oled.v(78[24:39])
    defparam i2_2_lut_rep_510_3_lut_4_lut.init = 16'hfff9;
    LUT4 i33_4_lut_adj_133 (.A(char[29]), .B(n25), .C(state[1]), .D(n17669), 
         .Z(n16_adj_1725)) /* synthesis lut_function=(!(A (C (D))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_133.init = 16'h0aba;
    LUT4 i23333_3_lut (.A(char[68]), .B(char[76]), .C(num[0]), .Z(n25688)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23333_3_lut.init = 16'hcaca;
    FD1P3IX cnt_delay_i0_i14 (.D(n2422[14]), .SP(sys_clk_c_enable_170), 
            .CD(n12386), .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_134 (.A(n25577), .B(num[4]), .C(n27557), .D(n2132), 
         .Z(n25098)) /* synthesis lut_function=(!(A (B+!(C+(D))))) */ ;
    defparam i2_4_lut_adj_134.init = 16'h7775;
    PFUMX i24490 (.BLUT(n27756), .ALUT(n27757), .C0(cnt_scan[1]), .Z(n4236));
    LUT4 i23225_3_lut (.A(n2133), .B(n658), .C(n2134), .Z(n25577)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23225_3_lut.init = 16'h8080;
    LUT4 i30_4_lut_3_lut (.A(state[3]), .B(state[0]), .C(state[1]), .Z(n17_adj_1729)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i30_4_lut_3_lut.init = 16'h1616;
    LUT4 n26504_bdd_2_lut (.A(n26504), .B(cnt_scan[4]), .Z(n26505)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n26504_bdd_2_lut.init = 16'h2222;
    LUT4 i23724_2_lut_rep_561 (.A(cnt_main[4]), .B(cnt_main[3]), .Z(n27676)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i23724_2_lut_rep_561.init = 16'h1111;
    LUT4 i23328_3_lut (.A(char[51]), .B(char[59]), .C(num[0]), .Z(n25683)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23328_3_lut.init = 16'hcaca;
    LUT4 i14819_2_lut_rep_434 (.A(n2131), .B(num[4]), .Z(n27549)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam i14819_2_lut_rep_434.init = 16'h2222;
    LUT4 i23327_3_lut (.A(char[35]), .B(char[43]), .C(num[0]), .Z(n25682)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23327_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_531_3_lut_4_lut (.A(cnt_main[4]), .B(cnt_main[3]), 
         .C(\cnt_main[0] ), .D(cnt_main[1]), .Z(n27646)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_2_lut_rep_531_3_lut_4_lut.init = 16'h0110;
    LUT4 i1_2_lut_rep_511_3_lut (.A(cnt_main[4]), .B(cnt_main[3]), .C(\cnt_main[0] ), 
         .Z(n27626)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_511_3_lut.init = 16'h1010;
    PFUMX i24478 (.BLUT(n27738), .ALUT(n27739), .C0(state[4]), .Z(n27740));
    LUT4 i1_4_lut_adj_135 (.A(state[0]), .B(char[21]), .C(n16_adj_1730), 
         .D(n27558), .Z(char_167__N_359[21])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_135.init = 16'hdc50;
    LUT4 i23325_3_lut (.A(char[19]), .B(char[27]), .C(num[0]), .Z(n25680)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23325_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_495_3_lut (.A(cnt_main[4]), .B(cnt_main[3]), .C(cnt_main[2]), 
         .Z(n27610)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_495_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_508_3_lut (.A(cnt_main[4]), .B(cnt_main[3]), .C(cnt_main[1]), 
         .Z(n27623)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_508_3_lut.init = 16'h1010;
    LUT4 i33_4_lut_adj_136 (.A(char[114]), .B(char_167__N_690[114]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1731)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_136.init = 16'h0aca;
    LUT4 i1_3_lut_4_lut_4_lut_adj_137 (.A(n27585), .B(state[3]), .C(state[0]), 
         .D(n9), .Z(n22112)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_137.init = 16'h0200;
    LUT4 i33_4_lut_adj_138 (.A(y_p[1]), .B(y_p_7__N_650[1]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1732)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_138.init = 16'h0aca;
    PFUMX i23907 (.BLUT(n26584), .ALUT(n26580), .C0(cnt_scan[3]), .Z(n26585));
    LUT4 i2_4_lut_adj_139 (.A(n27653), .B(n27676), .C(n27654), .D(cnt_main[2]), 
         .Z(n18_adj_1709)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i2_4_lut_adj_139.init = 16'h0c88;
    CCU2D sub_1708_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[13]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n21698), .COUT(n21699));
    defparam sub_1708_add_2_15.INIT0 = 16'h5999;
    defparam sub_1708_add_2_15.INIT1 = 16'h5999;
    defparam sub_1708_add_2_15.INJECT1_0 = "NO";
    defparam sub_1708_add_2_15.INJECT1_1 = "NO";
    LUT4 i23324_3_lut (.A(char[3]), .B(char[11]), .C(num[0]), .Z(n25679)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23324_3_lut.init = 16'hcaca;
    LUT4 i33_4_lut_adj_140 (.A(y_p[4]), .B(n17514), .C(state[1]), .D(n27613), 
         .Z(n16_adj_1733)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_140.init = 16'h0a3a;
    FD1P3IX cnt_delay_i0_i13 (.D(n2422[13]), .SP(sys_clk_c_enable_170), 
            .CD(n12386), .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_3_lut (.A(state[2]), .B(state_back[4]), .C(n1475), 
         .Z(n25179)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_3_lut.init = 16'h4040;
    FD1P3IX cnt_delay_i0_i12 (.D(n2422[12]), .SP(sys_clk_c_enable_170), 
            .CD(n12386), .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    LUT4 i15243_4_lut (.A(n27646), .B(n4_c), .C(y_p[4]), .D(n36), .Z(n17514)) /* synthesis lut_function=(A (B)+!A !((C+!(D))+!B)) */ ;
    defparam i15243_4_lut.init = 16'h8c88;
    LUT4 i1_4_lut_4_lut_adj_141 (.A(state[2]), .B(n1475), .C(n64_adj_1734), 
         .D(char_reg[7]), .Z(n12_adj_1735)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_4_lut_adj_141.init = 16'h5450;
    LUT4 i1_2_lut_4_lut_4_lut_2_lut (.A(state[2]), .B(state[1]), .Z(n27667)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1_2_lut_4_lut_4_lut_2_lut.init = 16'h1111;
    LUT4 i33_4_lut_adj_142 (.A(y_p[5]), .B(n17512), .C(state[1]), .D(n27613), 
         .Z(n16_adj_1736)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_142.init = 16'h0a3a;
    LUT4 i15241_4_lut (.A(n27646), .B(n4_c), .C(y_p[5]), .D(n36), .Z(n17512)) /* synthesis lut_function=(A (B)+!A !((C+!(D))+!B)) */ ;
    defparam i15241_4_lut.init = 16'h8c88;
    LUT4 i14818_2_lut_rep_435 (.A(n2130), .B(num[4]), .Z(n27550)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam i14818_2_lut_rep_435.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_3_lut_adj_143 (.A(state[2]), .B(state_back[0]), 
         .C(n1475), .Z(n25181)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_143.init = 16'h4040;
    LUT4 i1_2_lut_4_lut_adj_144 (.A(n26912), .B(n564[7]), .C(n25624), 
         .D(state[2]), .Z(n6_adj_1737)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_144.init = 16'hac00;
    FD1P3IX cnt_write_i0_i0 (.D(n27707), .SP(sys_clk_c_enable_166), .CD(n12408), 
            .CK(sys_clk_c), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    LUT4 i23617_3_lut_4_lut (.A(n5), .B(n3318), .C(n27581), .D(n4200), 
         .Z(sys_clk_c_enable_199)) /* synthesis lut_function=(A (B (C+(D)))+!A !((C+!(D))+!B)) */ ;
    defparam i23617_3_lut_4_lut.init = 16'h8c80;
    LUT4 i3_4_lut (.A(n25299), .B(n27602), .C(state[0]), .D(state[2]), 
         .Z(n25044)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0440;
    CCU2D sub_1708_add_2_13 (.A0(cnt_delay[11]), .B0(num_delay[11]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n21697), .COUT(n21698));
    defparam sub_1708_add_2_13.INIT0 = 16'h5999;
    defparam sub_1708_add_2_13.INIT1 = 16'h5999;
    defparam sub_1708_add_2_13.INJECT1_0 = "NO";
    defparam sub_1708_add_2_13.INJECT1_1 = "NO";
    LUT4 i2_4_lut_4_lut_adj_145 (.A(state[2]), .B(n31_adj_1738), .C(n35), 
         .D(n11044), .Z(state_back_5__N_617[1])) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;
    defparam i2_4_lut_4_lut_adj_145.init = 16'hfff4;
    FD1P3IX cnt_delay_i0_i11 (.D(n2422[11]), .SP(sys_clk_c_enable_170), 
            .CD(n12386), .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    LUT4 i2_4_lut_4_lut_adj_146 (.A(state[2]), .B(n27581), .C(n25389), 
         .D(n4236), .Z(n25130)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_4_lut_4_lut_adj_146.init = 16'h0040;
    LUT4 i23322_3_lut (.A(char[17]), .B(char[25]), .C(num[0]), .Z(n25677)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23322_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_adj_147 (.A(state[2]), .B(n1475), .C(n26505), 
         .D(char_reg[4]), .Z(n12_adj_1739)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_4_lut_adj_147.init = 16'h5450;
    LUT4 i14744_2_lut (.A(n295[0]), .B(oled_dcn_N_982), .Z(n321[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam i14744_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_else_4_lut (.A(cnt_scan[4]), .B(cnt_scan[0]), 
         .C(cnt_scan[3]), .D(cnt_scan[2]), .Z(n28854)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(137[8:13])
    defparam i1_2_lut_3_lut_4_lut_else_4_lut.init = 16'hefff;
    LUT4 i2_3_lut_rep_505_3_lut (.A(state[2]), .B(state[1]), .C(state[0]), 
         .Z(n27620)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i2_3_lut_rep_505_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_3_lut_4_lut_then_4_lut (.A(cnt_scan[4]), .B(cnt_scan[0]), 
         .C(cnt_scan[3]), .D(cnt_scan[2]), .Z(n28855)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/fpga/ds18b20/oled.v(137[8:13])
    defparam i1_2_lut_3_lut_4_lut_then_4_lut.init = 16'hffbf;
    CCU2D sub_1708_add_2_11 (.A0(cnt_delay[9]), .B0(num_delay[9]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(num_delay[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n21696), .COUT(n21697));
    defparam sub_1708_add_2_11.INIT0 = 16'h5999;
    defparam sub_1708_add_2_11.INIT1 = 16'h5999;
    defparam sub_1708_add_2_11.INJECT1_0 = "NO";
    defparam sub_1708_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1708_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[7]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n21695), .COUT(n21696));
    defparam sub_1708_add_2_9.INIT0 = 16'h5999;
    defparam sub_1708_add_2_9.INIT1 = 16'h5999;
    defparam sub_1708_add_2_9.INJECT1_0 = "NO";
    defparam sub_1708_add_2_9.INJECT1_1 = "NO";
    LUT4 n10735_bdd_4_lut_24983 (.A(n10735), .B(state[4]), .C(cnt_write[0]), 
         .D(oled_csn_N_966), .Z(n28459)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam n10735_bdd_4_lut_24983.init = 16'h4000;
    LUT4 i1_4_lut_4_lut_adj_148 (.A(state[2]), .B(n1475), .C(n64), .D(char_reg[2]), 
         .Z(n12)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_4_lut_adj_148.init = 16'h5450;
    FD1P3IX cnt_delay_i0_i10 (.D(n2422[10]), .SP(sys_clk_c_enable_170), 
            .CD(n12386), .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    LUT4 shift_right_66_i1225_3_lut (.A(char[80]), .B(char[88]), .C(num[0]), 
         .Z(n1225)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1225_3_lut.init = 16'hcaca;
    LUT4 n25719_bdd_3_lut_24376 (.A(n1205), .B(n1583), .C(cnt_scan[0]), 
         .Z(n26703)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n25719_bdd_3_lut_24376.init = 16'hcaca;
    LUT4 n25719_bdd_4_lut_24379 (.A(n827), .B(cnt_scan[1]), .C(cnt_scan[0]), 
         .D(cnt_scan[2]), .Z(n26706)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam n25719_bdd_4_lut_24379.init = 16'h8000;
    LUT4 i1_4_lut_4_lut_adj_149 (.A(state[2]), .B(n1475), .C(n64_adj_1740), 
         .D(char_reg[5]), .Z(n12_adj_1686)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_4_lut_adj_149.init = 16'h5450;
    CCU2D sub_1708_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n21694), .COUT(n21695));
    defparam sub_1708_add_2_7.INIT0 = 16'h5999;
    defparam sub_1708_add_2_7.INIT1 = 16'h5999;
    defparam sub_1708_add_2_7.INJECT1_0 = "NO";
    defparam sub_1708_add_2_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_adj_150 (.A(state[2]), .B(n1475), .C(n64_adj_1741), 
         .D(char_reg[3]), .Z(n12_adj_1683)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_4_lut_adj_150.init = 16'h5450;
    LUT4 i1_3_lut_3_lut (.A(state[2]), .B(n1475), .C(state_back[3]), .Z(n12_adj_1701)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam i1_3_lut_3_lut.init = 16'h5151;
    LUT4 i23321_3_lut (.A(char[1]), .B(char[9]), .C(num[0]), .Z(n25676)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23321_3_lut.init = 16'hcaca;
    LUT4 n10735_bdd_2_lut_24982 (.A(state[4]), .B(state_back[5]), .Z(n28458)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n10735_bdd_2_lut_24982.init = 16'h4444;
    LUT4 i1_4_lut_4_lut_adj_151 (.A(state[2]), .B(n1475), .C(n64_adj_1742), 
         .D(char_reg[6]), .Z(n12_adj_1689)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_4_lut_adj_151.init = 16'h5450;
    LUT4 n10735_bdd_3_lut_24986 (.A(n27584), .B(state[5]), .C(state[4]), 
         .Z(n28457)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n10735_bdd_3_lut_24986.init = 16'h0202;
    LUT4 i1_2_lut_3_lut_3_lut_adj_152 (.A(state[2]), .B(state_back[2]), 
         .C(n1475), .Z(n25180)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_152.init = 16'h4040;
    LUT4 i1_4_lut_4_lut_adj_153 (.A(state[2]), .B(n1475), .C(n26593), 
         .D(char_reg[0]), .Z(n12_adj_1743)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_4_lut_adj_153.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_154 (.A(state[2]), .B(n1475), .C(n26586), 
         .D(char_reg[1]), .Z(n12_adj_1744)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_4_lut_adj_154.init = 16'h5450;
    LUT4 i20_4_lut_4_lut (.A(state[2]), .B(n1475), .C(n75_adj_1745), .D(state[3]), 
         .Z(n8)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (D)))) */ ;
    defparam i20_4_lut_4_lut.init = 16'h44a0;
    CCU2D sub_1708_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n21693), .COUT(n21694));
    defparam sub_1708_add_2_5.INIT0 = 16'h5999;
    defparam sub_1708_add_2_5.INIT1 = 16'h5999;
    defparam sub_1708_add_2_5.INJECT1_0 = "NO";
    defparam sub_1708_add_2_5.INJECT1_1 = "NO";
    LUT4 mux_1884_i1_3_lut_rep_425 (.A(n17797), .B(n18), .C(n25294), .Z(n27540)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B+(C)))) */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam mux_1884_i1_3_lut_rep_425.init = 16'h5c5c;
    LUT4 i23317_3_lut (.A(char_reg[1]), .B(char_reg[0]), .C(cnt_write[1]), 
         .Z(n25672)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23317_3_lut.init = 16'hcaca;
    LUT4 n1209_bdd_3_lut_24894 (.A(n1965), .B(n2343), .C(cnt_scan[0]), 
         .Z(n28512)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1209_bdd_3_lut_24894.init = 16'hcaca;
    CCU2D sub_1708_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n21692), .COUT(n21693));
    defparam sub_1708_add_2_3.INIT0 = 16'h5999;
    defparam sub_1708_add_2_3.INIT1 = 16'h5999;
    defparam sub_1708_add_2_3.INJECT1_0 = "NO";
    defparam sub_1708_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1708_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n21692));
    defparam sub_1708_add_2_1.INIT0 = 16'h0000;
    defparam sub_1708_add_2_1.INIT1 = 16'h5999;
    defparam sub_1708_add_2_1.INJECT1_0 = "NO";
    defparam sub_1708_add_2_1.INJECT1_1 = "NO";
    LUT4 n1209_bdd_3_lut_24969 (.A(n1209), .B(n1587), .C(cnt_scan[0]), 
         .Z(n28513)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1209_bdd_3_lut_24969.init = 16'hcaca;
    LUT4 n28514_bdd_2_lut (.A(n28514), .B(cnt_scan[2]), .Z(n28515)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n28514_bdd_2_lut.init = 16'h2222;
    LUT4 i23316_3_lut (.A(char_reg[3]), .B(char_reg[2]), .C(cnt_write[1]), 
         .Z(n25671)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23316_3_lut.init = 16'hcaca;
    LUT4 n831_bdd_4_lut_24973 (.A(n831), .B(x_ph[2]), .C(cnt_scan[2]), 
         .D(cnt_scan[0]), .Z(n28516)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam n831_bdd_4_lut_24973.init = 16'ha00c;
    LUT4 led_c_bdd_2_lut_24910 (.A(n28516), .B(cnt_scan[1]), .Z(n28517)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_c_bdd_2_lut_24910.init = 16'h8888;
    LUT4 i14696_4_lut (.A(char[83]), .B(num[1]), .C(char[91]), .D(num[0]), 
         .Z(n1540)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam i14696_4_lut.init = 16'hc088;
    FD1P3IX cnt_init_i0_i1 (.D(n259[1]), .SP(sys_clk_c_enable_62), .CD(n12510), 
            .CK(sys_clk_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_155 (.A(n27626), .B(n16_adj_1698), .C(n17224), .D(char[114]), 
         .Z(char_167__N_690[114])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_155.init = 16'hcf0a;
    PFUMX i23905 (.BLUT(n26582), .ALUT(n26581), .C0(cnt_scan[2]), .Z(n26583));
    FD1P3IX cnt_init_i0_i2 (.D(n259[2]), .SP(sys_clk_c_enable_62), .CD(n12510), 
            .CK(sys_clk_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i3 (.D(n259[3]), .SP(sys_clk_c_enable_62), .CD(n12510), 
            .CK(sys_clk_c), .Q(cnt_init[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_init_i0_i3.GSR = "ENABLED";
    PFUMX i92_adj_156 (.BLUT(n25220), .ALUT(n25210), .C0(cnt_scan[1]), 
          .Z(n57_adj_1746));
    FD1P3IX cnt_init_i0_i4 (.D(n259[4]), .SP(sys_clk_c_enable_62), .CD(n12510), 
            .CK(sys_clk_c), .Q(cnt_init[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_init_i0_i4.GSR = "ENABLED";
    LUT4 n1208_bdd_3_lut_24737 (.A(n1208), .B(n1586), .C(cnt_scan[0]), 
         .Z(n26715)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1208_bdd_3_lut_24737.init = 16'hcaca;
    LUT4 n1208_bdd_3_lut_23995 (.A(n1964), .B(n2342), .C(cnt_scan[0]), 
         .Z(n26714)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1208_bdd_3_lut_23995.init = 16'hcaca;
    FD1P3IX cnt_scan_i0_i1 (.D(cnt_scan_4__N_640[1]), .SP(sys_clk_c_enable_194), 
            .CD(n12507), .CK(sys_clk_c), .Q(cnt_scan[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_scan_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_scan_i0_i2 (.D(cnt_scan_4__N_640[2]), .SP(sys_clk_c_enable_194), 
            .CD(n12507), .CK(sys_clk_c), .Q(cnt_scan[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_scan_i0_i2.GSR = "ENABLED";
    LUT4 led_c_bdd_2_lut_25053 (.A(n28715), .B(state[2]), .Z(n28716)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_c_bdd_2_lut_25053.init = 16'h8888;
    LUT4 i10095_3_lut (.A(sys_clk_c_enable_166), .B(n2396), .C(n11), .Z(n12408)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam i10095_3_lut.init = 16'ha8a8;
    LUT4 n830_bdd_4_lut_24736 (.A(n830), .B(cnt_scan[1]), .C(cnt_scan[0]), 
         .D(cnt_scan[2]), .Z(n26718)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam n830_bdd_4_lut_24736.init = 16'h8000;
    LUT4 i1_3_lut_adj_157 (.A(cnt_write[0]), .B(oled_csn_N_966), .C(n10735), 
         .Z(n2396)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(50[42:51])
    defparam i1_3_lut_adj_157.init = 16'hc8c8;
    LUT4 i1_2_lut_rep_480 (.A(cnt_scan[3]), .B(n10741), .Z(n27595)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_480.init = 16'hdddd;
    LUT4 i2_3_lut_adj_158 (.A(cnt_write[3]), .B(cnt_write[2]), .C(cnt_write[1]), 
         .Z(n10735)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/fpga/ds18b20/oled.v(144[7] 164[14])
    defparam i2_3_lut_adj_158.init = 16'hfefe;
    L6MUX21 i24302 (.D0(n27226), .D1(n27223), .SD(num[3]), .Z(n2133));
    PFUMX i24300 (.BLUT(n27225), .ALUT(n27224), .C0(num[1]), .Z(n27226));
    FD1P3IX cnt_delay_i0_i9 (.D(n2422[9]), .SP(sys_clk_c_enable_170), .CD(n12386), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    LUT4 oled_dcn_N_982_bdd_4_lut (.A(oled_dcn_N_982), .B(n27602), .C(n11344), 
         .D(state[4]), .Z(n28715)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B+!(C+!(D)))) */ ;
    defparam oled_dcn_N_982_bdd_4_lut.init = 16'hcf44;
    LUT4 oled_dcn_N_982_bdd_4_lut_25024 (.A(cnt_scan[4]), .B(state[2]), 
         .C(cnt_scan[3]), .D(cnt_scan[2]), .Z(n28714)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam oled_dcn_N_982_bdd_4_lut_25024.init = 16'h0111;
    LUT4 i1_4_lut_adj_159 (.A(n27669), .B(n25228), .C(n27667), .D(n4_adj_1747), 
         .Z(n12510)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_159.init = 16'hc4c0;
    LUT4 i23579_3_lut_4_lut (.A(n27601), .B(n27662), .C(state[5]), .D(n21_adj_1696), 
         .Z(n23)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i23579_3_lut_4_lut.init = 16'hf101;
    FD1P3IX cnt_delay_i0_i8 (.D(n2422[8]), .SP(sys_clk_c_enable_170), .CD(n12386), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i7 (.D(n2422[7]), .SP(sys_clk_c_enable_170), .CD(n12386), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    FD1P3IX x_ph_i0_i2 (.D(x_ph_7__N_658[2]), .SP(sys_clk_c_enable_171), 
            .CD(n12385), .CK(sys_clk_c), .Q(x_ph[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam x_ph_i0_i2.GSR = "ENABLED";
    LUT4 i3517_2_lut (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n259[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i3517_2_lut.init = 16'h6666;
    FD1P3IX cnt_scan_i0_i3 (.D(cnt_scan_4__N_640[3]), .SP(sys_clk_c_enable_194), 
            .CD(n12507), .CK(sys_clk_c), .Q(cnt_scan[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_scan_i0_i3.GSR = "ENABLED";
    PFUMX i24298 (.BLUT(n27222), .ALUT(n1573), .C0(num[2]), .Z(n27223));
    LUT4 i23315_3_lut (.A(char_reg[5]), .B(char_reg[4]), .C(cnt_write[1]), 
         .Z(n25670)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23315_3_lut.init = 16'hcaca;
    CCU2D add_106_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21652), .S0(n2422[15]));   // c:/fpga/ds18b20/oled.v(169[29:45])
    defparam add_106_17.INIT0 = 16'h5aaa;
    defparam add_106_17.INIT1 = 16'h0000;
    defparam add_106_17.INJECT1_0 = "NO";
    defparam add_106_17.INJECT1_1 = "NO";
    LUT4 i23314_3_lut (.A(char_reg[7]), .B(char_reg[6]), .C(cnt_write[1]), 
         .Z(n25669)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23314_3_lut.init = 16'hcaca;
    CCU2D add_106_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21651), .COUT(n21652), .S0(n2422[13]), 
          .S1(n2422[14]));   // c:/fpga/ds18b20/oled.v(169[29:45])
    defparam add_106_15.INIT0 = 16'h5aaa;
    defparam add_106_15.INIT1 = 16'h5aaa;
    defparam add_106_15.INJECT1_0 = "NO";
    defparam add_106_15.INJECT1_1 = "NO";
    CCU2D add_106_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21650), .COUT(n21651), .S0(n2422[11]), 
          .S1(n2422[12]));   // c:/fpga/ds18b20/oled.v(169[29:45])
    defparam add_106_13.INIT0 = 16'h5aaa;
    defparam add_106_13.INIT1 = 16'h5aaa;
    defparam add_106_13.INJECT1_0 = "NO";
    defparam add_106_13.INJECT1_1 = "NO";
    LUT4 mux_64_i2_4_lut (.A(n460), .B(n469[1]), .C(n27595), .D(n27601), 
         .Z(cnt_scan_4__N_640[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(121[16] 122[40])
    defparam mux_64_i2_4_lut.init = 16'hca0a;
    LUT4 i3553_2_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n469[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/oled.v(122[24:39])
    defparam i3553_2_lut.init = 16'h6666;
    LUT4 i7_4_lut (.A(num[0]), .B(n14), .C(n10_adj_1748), .D(num[6]), 
         .Z(n460)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/oled.v(119[11:14])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(num[3]), .B(num[1]), .C(num[5]), .D(num[7]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/oled.v(119[11:14])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i33_4_lut_adj_160 (.A(char[21]), .B(n27613), .C(state[1]), .D(n25117), 
         .Z(n16_adj_1730)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i33_4_lut_adj_160.init = 16'h3a0a;
    LUT4 i2_2_lut (.A(num[2]), .B(num[4]), .Z(n10_adj_1748)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/oled.v(119[11:14])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 mux_64_i3_4_lut (.A(n460), .B(n469[2]), .C(n27595), .D(n27601), 
         .Z(cnt_scan_4__N_640[2])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/fpga/ds18b20/oled.v(121[16] 122[40])
    defparam mux_64_i3_4_lut.init = 16'hc505;
    LUT4 i18214_3_lut (.A(cnt_scan[2]), .B(cnt_scan[1]), .C(cnt_scan[0]), 
         .Z(n469[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(50[32:40])
    defparam i18214_3_lut.init = 16'h6a6a;
    LUT4 mux_64_i4_4_lut (.A(n460), .B(n469[3]), .C(n27595), .D(n27601), 
         .Z(cnt_scan_4__N_640[3])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/fpga/ds18b20/oled.v(121[16] 122[40])
    defparam mux_64_i4_4_lut.init = 16'hc505;
    LUT4 i1_4_lut_adj_161 (.A(cnt_main[1]), .B(char[21]), .C(n18_adj_1710), 
         .D(n21_adj_1749), .Z(n25117)) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (C+(D)))) */ ;
    defparam i1_4_lut_adj_161.init = 16'h8caf;
    PFUMX i24488 (.BLUT(n27753), .ALUT(n27754), .C0(n2129), .Z(n27755));
    PFUMX i24294 (.BLUT(n27212), .ALUT(n27211), .C0(cnt_main[1]), .Z(n27213));
    LUT4 i14955_2_lut (.A(cnt_main[2]), .B(cnt_main[1]), .Z(n17224)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14955_2_lut.init = 16'heeee;
    PFUMX i23406 (.BLUT(n1179), .ALUT(n1195), .C0(num[1]), .Z(n25761));
    CCU2D add_106_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21649), .COUT(n21650), .S0(n2422[9]), .S1(n2422[10]));   // c:/fpga/ds18b20/oled.v(169[29:45])
    defparam add_106_11.INIT0 = 16'h5aaa;
    defparam add_106_11.INIT1 = 16'h5aaa;
    defparam add_106_11.INJECT1_0 = "NO";
    defparam add_106_11.INJECT1_1 = "NO";
    LUT4 shift_right_66_i1230_3_lut (.A(char[85]), .B(char[93]), .C(num[0]), 
         .Z(n1230)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1230_3_lut.init = 16'hcaca;
    LUT4 shift_right_66_i1214_3_lut (.A(char[69]), .B(char[77]), .C(num[0]), 
         .Z(n1214)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1214_3_lut.init = 16'hcaca;
    CCU2D add_106_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21648), .COUT(n21649), .S0(n2422[7]), .S1(n2422[8]));   // c:/fpga/ds18b20/oled.v(169[29:45])
    defparam add_106_9.INIT0 = 16'h5aaa;
    defparam add_106_9.INIT1 = 16'h5aaa;
    defparam add_106_9.INJECT1_0 = "NO";
    defparam add_106_9.INJECT1_1 = "NO";
    PFUMX i23398 (.BLUT(n1145), .ALUT(n1161), .C0(num[1]), .Z(n25753));
    CCU2D add_106_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21647), .COUT(n21648), .S0(n2422[5]), .S1(n2422[6]));   // c:/fpga/ds18b20/oled.v(169[29:45])
    defparam add_106_7.INIT0 = 16'h5aaa;
    defparam add_106_7.INIT1 = 16'h5aaa;
    defparam add_106_7.INJECT1_0 = "NO";
    defparam add_106_7.INJECT1_1 = "NO";
    CCU2D add_106_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21646), .COUT(n21647), .S0(n2422[3]), .S1(n2422[4]));   // c:/fpga/ds18b20/oled.v(169[29:45])
    defparam add_106_5.INIT0 = 16'h5aaa;
    defparam add_106_5.INIT1 = 16'h5aaa;
    defparam add_106_5.INJECT1_0 = "NO";
    defparam add_106_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_then_4_lut (.A(cnt_scan[2]), .B(n1962), .C(n2340), .D(cnt_scan[0]), 
         .Z(n27745)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_2_lut_then_4_lut.init = 16'h5044;
    PFUMX i23305 (.BLUT(n25656), .ALUT(n25657), .C0(num[1]), .Z(n25660));
    LUT4 i1_2_lut_4_lut_adj_162 (.A(n26903), .B(n564[6]), .C(n25624), 
         .D(state[2]), .Z(n6_adj_1688)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_162.init = 16'hac00;
    LUT4 n26807_bdd_3_lut_4_lut (.A(oled_dcn_N_982), .B(n27621), .C(char_reg[5]), 
         .D(n26807), .Z(char_reg_7__N_858[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/fpga/ds18b20/oled.v(99[7] 115[14])
    defparam n26807_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i23283_3_lut_4_lut (.A(oled_dcn_N_982), .B(n27621), .C(cnt[3]), 
         .D(cnt[4]), .Z(n25638)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/fpga/ds18b20/oled.v(99[7] 115[14])
    defparam i23283_3_lut_4_lut.init = 16'h0100;
    PFUMX i23306 (.BLUT(n25658), .ALUT(n25659), .C0(num[1]), .Z(n25661));
    LUT4 i14981_2_lut (.A(n295[1]), .B(oled_dcn_N_982), .Z(n321[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam i14981_2_lut.init = 16'h2222;
    LUT4 i14980_2_lut (.A(n295[2]), .B(oled_dcn_N_982), .Z(n321[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam i14980_2_lut.init = 16'h2222;
    PFUMX i24282 (.BLUT(n27192), .ALUT(n27191), .C0(state[5]), .Z(n27193));
    LUT4 i2_4_lut_adj_163 (.A(cnt_scan[4]), .B(n28856), .C(n11_adj_1750), 
         .D(n5723), .Z(n25124)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i2_4_lut_adj_163.init = 16'h0408;
    FD1P3IX cnt_i0_i1 (.D(n321[1]), .SP(sys_clk_c_enable_152), .CD(n12423), 
            .CK(sys_clk_c), .Q(cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_i0_i2 (.D(n321[2]), .SP(sys_clk_c_enable_152), .CD(n12423), 
            .CK(sys_clk_c), .Q(cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_i0_i2.GSR = "ENABLED";
    CCU2D add_106_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21645), .COUT(n21646), .S0(n2422[1]), .S1(n2422[2]));   // c:/fpga/ds18b20/oled.v(169[29:45])
    defparam add_106_3.INIT0 = 16'h5aaa;
    defparam add_106_3.INIT1 = 16'h5aaa;
    defparam add_106_3.INJECT1_0 = "NO";
    defparam add_106_3.INJECT1_1 = "NO";
    FD1P3AX cnt_scan_i0_i4 (.D(n25124), .SP(sys_clk_c_enable_194), .CK(sys_clk_c), 
            .Q(cnt_scan[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_scan_i0_i4.GSR = "ENABLED";
    LUT4 i14979_2_lut (.A(n295[3]), .B(oled_dcn_N_982), .Z(n321[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam i14979_2_lut.init = 16'h2222;
    LUT4 i23742_2_lut (.A(sys_clk_c_enable_169), .B(state[3]), .Z(n12496)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i23742_2_lut.init = 16'h2222;
    LUT4 i14978_2_lut (.A(n295[4]), .B(oled_dcn_N_982), .Z(n321[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam i14978_2_lut.init = 16'h2222;
    LUT4 i23269_3_lut_4_lut (.A(oled_dcn_N_982), .B(n27621), .C(cnt[3]), 
         .D(cnt[4]), .Z(n25624)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/fpga/ds18b20/oled.v(99[7] 115[14])
    defparam i23269_3_lut_4_lut.init = 16'h0010;
    LUT4 i14977_2_lut (.A(n295[5]), .B(oled_dcn_N_982), .Z(n321[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam i14977_2_lut.init = 16'h2222;
    LUT4 mux_95_Mux_7_i31_3_lut_4_lut (.A(oled_dcn_N_982), .B(n27621), .C(char_reg[7]), 
         .D(n27232), .Z(n564[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/fpga/ds18b20/oled.v(99[7] 115[14])
    defparam mux_95_Mux_7_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_adj_164 (.A(state[0]), .B(char[20]), .C(n16_adj_1751), 
         .D(n27558), .Z(char_167__N_359[20])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_164.init = 16'hdc50;
    LUT4 i14976_2_lut (.A(n295[6]), .B(oled_dcn_N_982), .Z(n321[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam i14976_2_lut.init = 16'h2222;
    LUT4 mux_95_Mux_0_i31_3_lut_4_lut (.A(oled_dcn_N_982), .B(n27621), .C(char_reg[0]), 
         .D(n26737), .Z(n564[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // c:/fpga/ds18b20/oled.v(99[7] 115[14])
    defparam mux_95_Mux_0_i31_3_lut_4_lut.init = 16'he0f1;
    LUT4 i14822_2_lut (.A(n2134), .B(num[4]), .Z(n659)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam i14822_2_lut.init = 16'h2222;
    FD1P3IX cnt_i0_i3 (.D(n321[3]), .SP(sys_clk_c_enable_152), .CD(n12423), 
            .CK(sys_clk_c), .Q(cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_i0_i3.GSR = "ENABLED";
    LUT4 i14823_4_lut (.A(n27790), .B(num[4]), .C(n25662), .D(num[3]), 
         .Z(n658)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam i14823_4_lut.init = 16'h3022;
    FD1P3IX num_2268__i1 (.D(n37[1]), .SP(sys_clk_c_enable_169), .CD(n12496), 
            .CK(sys_clk_c), .Q(num[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam num_2268__i1.GSR = "ENABLED";
    FD1P3IX num_2268__i3 (.D(n37[3]), .SP(sys_clk_c_enable_169), .CD(n12496), 
            .CK(sys_clk_c), .Q(num[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam num_2268__i3.GSR = "ENABLED";
    LUT4 i37_4_lut_adj_165 (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(n27541), 
         .D(time_hour_low[1]), .Z(n17_adj_1754)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;
    defparam i37_4_lut_adj_165.init = 16'h6420;
    LUT4 i23362_3_lut (.A(n25715), .B(n25716), .C(num[3]), .Z(n2132)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23362_3_lut.init = 16'hcaca;
    FD1P3IX num_2268__i5 (.D(n37[5]), .SP(sys_clk_c_enable_169), .CD(n12496), 
            .CK(sys_clk_c), .Q(num[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam num_2268__i5.GSR = "ENABLED";
    FD1P3IX num_2268__i6 (.D(n37[6]), .SP(sys_clk_c_enable_169), .CD(n12496), 
            .CK(sys_clk_c), .Q(num[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam num_2268__i6.GSR = "ENABLED";
    FD1P3IX cnt_i0_i4 (.D(n321[4]), .SP(sys_clk_c_enable_152), .CD(n12423), 
            .CK(sys_clk_c), .Q(cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i3 (.D(n2422[3]), .SP(sys_clk_c_enable_170), .CD(n12386), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i1 (.D(n27674), .SP(sys_clk_c_enable_193), .CD(n12380), 
            .CK(sys_clk_c), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    FD1P3IX num_2268__i7 (.D(n37[7]), .SP(sys_clk_c_enable_169), .CD(n12496), 
            .CK(sys_clk_c), .Q(num[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam num_2268__i7.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i2 (.D(cnt_main_4__N_630[2]), .SP(sys_clk_c_enable_193), 
            .CD(n12385), .CK(sys_clk_c), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_i0_i5 (.D(n321[5]), .SP(sys_clk_c_enable_152), .CD(n12423), 
            .CK(sys_clk_c), .Q(cnt_c[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_i0_i5.GSR = "ENABLED";
    LUT4 n10267_bdd_3_lut (.A(n10267), .B(n16_adj_1698), .C(state[1]), 
         .Z(n26770)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n10267_bdd_3_lut.init = 16'h2020;
    LUT4 n10267_bdd_3_lut_24036 (.A(n4_adj_1755), .B(state[3]), .C(state[1]), 
         .Z(n26769)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n10267_bdd_3_lut_24036.init = 16'h0808;
    LUT4 mux_1884_i2_3_lut_rep_426 (.A(n17797), .B(n18), .C(n25294), .Z(n27541)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam mux_1884_i2_3_lut_rep_426.init = 16'hacac;
    LUT4 mux_95_Mux_6_i31_3_lut_4_lut (.A(oled_dcn_N_982), .B(n27621), .C(char_reg[6]), 
         .D(n27349), .Z(n564[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/fpga/ds18b20/oled.v(99[7] 115[14])
    defparam mux_95_Mux_6_i31_3_lut_4_lut.init = 16'hf1e0;
    CCU2D add_106_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n21645), .S1(n2422[0]));   // c:/fpga/ds18b20/oled.v(169[29:45])
    defparam add_106_1.INIT0 = 16'hF000;
    defparam add_106_1.INIT1 = 16'h5555;
    defparam add_106_1.INJECT1_0 = "NO";
    defparam add_106_1.INJECT1_1 = "NO";
    PFUMX i23371 (.BLUT(n1214), .ALUT(n1230), .C0(num[1]), .Z(n25726));
    LUT4 i10172_2_lut (.A(sys_clk_c_enable_142), .B(state[0]), .Z(n12487)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam i10172_2_lut.init = 16'h8888;
    LUT4 i14614_2_lut_rep_575 (.A(state[4]), .B(state[3]), .Z(n27690)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14614_2_lut_rep_575.init = 16'heeee;
    CCU2D add_32_17 (.A0(cnt_c[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n21644), 
          .S0(n295[15]));   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam add_32_17.INIT0 = 16'h5aaa;
    defparam add_32_17.INIT1 = 16'h0000;
    defparam add_32_17.INJECT1_0 = "NO";
    defparam add_32_17.INJECT1_1 = "NO";
    LUT4 n27193_bdd_2_lut_3_lut (.A(state[4]), .B(state[3]), .C(n27193), 
         .Z(n27194)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n27193_bdd_2_lut_3_lut.init = 16'h1010;
    LUT4 i6681_4_lut_then_4_lut (.A(num[4]), .B(n2130), .C(n2132), .D(n2133), 
         .Z(n27736)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/fpga/ds18b20/oled.v(132[51:79])
    defparam i6681_4_lut_then_4_lut.init = 16'h0004;
    FD1P3IX cnt_i0_i6 (.D(n321[6]), .SP(sys_clk_c_enable_152), .CD(n12423), 
            .CK(sys_clk_c), .Q(cnt_c[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_i0_i6.GSR = "ENABLED";
    LUT4 cnt_0__bdd_4_lut_24104 (.A(cnt[0]), .B(cnt[3]), .C(cnt[2]), .D(cnt[4]), 
         .Z(n26806)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C)+!B (D)))) */ ;
    defparam cnt_0__bdd_4_lut_24104.init = 16'h041d;
    CCU2D add_32_15 (.A0(cnt_c[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_c[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21643), .COUT(n21644), .S0(n295[13]), .S1(n295[14]));   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam add_32_15.INIT0 = 16'h5aaa;
    defparam add_32_15.INIT1 = 16'h5aaa;
    defparam add_32_15.INJECT1_0 = "NO";
    defparam add_32_15.INJECT1_1 = "NO";
    CCU2D add_32_13 (.A0(cnt_c[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_c[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21642), .COUT(n21643), .S0(n295[11]), .S1(n295[12]));   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam add_32_13.INIT0 = 16'h5aaa;
    defparam add_32_13.INIT1 = 16'h5aaa;
    defparam add_32_13.INJECT1_0 = "NO";
    defparam add_32_13.INJECT1_1 = "NO";
    CCU2D add_32_11 (.A0(cnt_c[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_c[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21641), .COUT(n21642), .S0(n295[9]), .S1(n295[10]));   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam add_32_11.INIT0 = 16'h5aaa;
    defparam add_32_11.INIT1 = 16'h5aaa;
    defparam add_32_11.INJECT1_0 = "NO";
    defparam add_32_11.INJECT1_1 = "NO";
    CCU2D add_32_9 (.A0(cnt_c[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_c[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n21640), 
          .COUT(n21641), .S0(n295[7]), .S1(n295[8]));   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam add_32_9.INIT0 = 16'h5aaa;
    defparam add_32_9.INIT1 = 16'h5aaa;
    defparam add_32_9.INJECT1_0 = "NO";
    defparam add_32_9.INJECT1_1 = "NO";
    CCU2D add_32_7 (.A0(cnt_c[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_c[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n21639), 
          .COUT(n21640), .S0(n295[5]), .S1(n295[6]));   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam add_32_7.INIT0 = 16'h5aaa;
    defparam add_32_7.INIT1 = 16'h5aaa;
    defparam add_32_7.INJECT1_0 = "NO";
    defparam add_32_7.INJECT1_1 = "NO";
    CCU2D add_32_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n21638), 
          .COUT(n21639), .S0(n295[3]), .S1(n295[4]));   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam add_32_5.INIT0 = 16'h5aaa;
    defparam add_32_5.INIT1 = 16'h5aaa;
    defparam add_32_5.INJECT1_0 = "NO";
    defparam add_32_5.INJECT1_1 = "NO";
    CCU2D add_32_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n21637), 
          .COUT(n21638), .S0(n295[1]), .S1(n295[2]));   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam add_32_3.INIT0 = 16'h5aaa;
    defparam add_32_3.INIT1 = 16'h5aaa;
    defparam add_32_3.INJECT1_0 = "NO";
    defparam add_32_3.INJECT1_1 = "NO";
    LUT4 cnt_0__bdd_3_lut_24080 (.A(cnt[3]), .B(cnt[2]), .C(cnt[4]), .Z(n26805)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam cnt_0__bdd_3_lut_24080.init = 16'h0404;
    LUT4 i6681_4_lut_else_4_lut (.A(num[4]), .B(n2130), .C(n2132), .D(n2133), 
         .Z(n27735)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/fpga/ds18b20/oled.v(132[51:79])
    defparam i6681_4_lut_else_4_lut.init = 16'h1000;
    PFUMX i23885 (.BLUT(n26551), .ALUT(n26550), .C0(num[1]), .Z(n26552));
    FD1P3IX state_i0_i2 (.D(n27194), .SP(sys_clk_c_enable_142), .CD(n12487), 
            .CK(sys_clk_c), .Q(state[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam state_i0_i2.GSR = "ENABLED";
    LUT4 i33_4_lut_adj_166 (.A(char[112]), .B(char_167__N_690[112]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1756)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_166.init = 16'h0aca;
    LUT4 i2_4_lut_adj_167 (.A(n26771), .B(n27690), .C(n11066), .D(state[5]), 
         .Z(n39_adj_1757)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/fpga/ds18b20/oled.v(63[4] 172[11])
    defparam i2_4_lut_adj_167.init = 16'h3022;
    CCU2D add_32_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n21637), 
          .S1(n295[0]));   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam add_32_1.INIT0 = 16'hF000;
    defparam add_32_1.INIT1 = 16'h5555;
    defparam add_32_1.INJECT1_0 = "NO";
    defparam add_32_1.INJECT1_1 = "NO";
    LUT4 i23099_3_lut_4_lut (.A(state[3]), .B(state[2]), .C(state[4]), 
         .D(state[0]), .Z(n25423)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23099_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_3_lut_4_lut (.A(n2130), .B(n2131), .C(num[4]), .D(n2132), 
         .Z(n8440)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/fpga/ds18b20/oled.v(132[51:79])
    defparam i1_3_lut_3_lut_4_lut.init = 16'hfeff;
    FD1P3IX state_i0_i3 (.D(n39_adj_1757), .SP(sys_clk_c_enable_142), .CD(n12487), 
            .CK(sys_clk_c), .Q(state[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam state_i0_i3.GSR = "ENABLED";
    PFUMX i23856 (.BLUT(n26503), .ALUT(n26499), .C0(cnt_scan[3]), .Z(n26504));
    LUT4 i23411_3_lut (.A(n25764), .B(n25765), .C(num[3]), .Z(n2131)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23411_3_lut.init = 16'hcaca;
    CCU2D num_2268_add_4_9 (.A0(cnt_scan[3]), .B0(n10741), .C0(num[7]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21636), .S0(n37[7]));   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam num_2268_add_4_9.INIT0 = 16'he1e1;
    defparam num_2268_add_4_9.INIT1 = 16'h0000;
    defparam num_2268_add_4_9.INJECT1_0 = "NO";
    defparam num_2268_add_4_9.INJECT1_1 = "NO";
    FD1P3IX state_i0_i4 (.D(n22604), .SP(sys_clk_c_enable_142), .CD(n17612), 
            .CK(sys_clk_c), .Q(state[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam state_i0_i4.GSR = "ENABLED";
    PFUMX i23854 (.BLUT(n26501), .ALUT(n26500), .C0(cnt_scan[2]), .Z(n26502));
    FD1P3IX state_i0_i5 (.D(n28462), .SP(sys_clk_c_enable_142), .CD(n17612), 
            .CK(sys_clk_c), .Q(state[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam state_i0_i5.GSR = "ENABLED";
    CCU2D num_2268_add_4_7 (.A0(cnt_scan[3]), .B0(n10741), .C0(num[5]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n10741), .C1(num[6]), 
          .D1(GND_net), .CIN(n21635), .COUT(n21636), .S0(n37[5]), .S1(n37[6]));   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam num_2268_add_4_7.INIT0 = 16'he1e1;
    defparam num_2268_add_4_7.INIT1 = 16'he1e1;
    defparam num_2268_add_4_7.INJECT1_0 = "NO";
    defparam num_2268_add_4_7.INJECT1_1 = "NO";
    PFUMX i23369 (.BLUT(n1150), .ALUT(n1166), .C0(num[1]), .Z(n25724));
    FD1P3AX state_i0_i1 (.D(n22318), .SP(sys_clk_c_enable_142), .CK(sys_clk_c), 
            .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam state_i0_i1.GSR = "ENABLED";
    LUT4 i29_3_lut_4_lut (.A(oled_dcn_N_982), .B(n27621), .C(state[2]), 
         .D(n4236), .Z(n12314)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/fpga/ds18b20/oled.v(99[7] 115[14])
    defparam i29_3_lut_4_lut.init = 16'hefe0;
    LUT4 i23231_4_lut_then_4_lut (.A(cnt_init[4]), .B(cnt_init[3]), .C(cnt_init[1]), 
         .D(cnt_init[0]), .Z(n27751)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23231_4_lut_then_4_lut.init = 16'hfffe;
    LUT4 i23275_2_lut_rep_428_3_lut (.A(oled_dcn_N_982), .B(n27621), .C(cnt[4]), 
         .Z(n27543)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/fpga/ds18b20/oled.v(99[7] 115[14])
    defparam i23275_2_lut_rep_428_3_lut.init = 16'h0101;
    LUT4 char_49__bdd_4_lut_4_lut (.A(num[0]), .B(num[1]), .C(n1178), 
         .D(char[49]), .Z(n27537)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)+!B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam char_49__bdd_4_lut_4_lut.init = 16'h7430;
    LUT4 n1197_bdd_3_lut_3_lut (.A(num[0]), .B(num[2]), .C(char[36]), 
         .Z(n27225)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam n1197_bdd_3_lut_3_lut.init = 16'h4040;
    LUT4 char_112__bdd_4_lut_4_lut (.A(num[0]), .B(num[1]), .C(n1241), 
         .D(char[112]), .Z(n27536)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)+!B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam char_112__bdd_4_lut_4_lut.init = 16'h7430;
    LUT4 n1197_bdd_4_lut_4_lut (.A(num[0]), .B(char[20]), .C(num[2]), 
         .D(n1197), .Z(n27224)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam n1197_bdd_4_lut_4_lut.init = 16'hf404;
    LUT4 char_117__bdd_4_lut_4_lut (.A(num[0]), .B(num[1]), .C(n1246), 
         .D(char[117]), .Z(n27535)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)+!B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam char_117__bdd_4_lut_4_lut.init = 16'h7430;
    LUT4 i33_4_lut_adj_168 (.A(char[20]), .B(char_167__N_690[20]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1751)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_168.init = 16'h0aca;
    LUT4 i23231_4_lut_else_4_lut (.A(cnt_init[4]), .B(cnt_init[3]), .Z(n27750)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i23231_4_lut_else_4_lut.init = 16'heeee;
    LUT4 i15384_3_lut_4_lut (.A(cnt_main[2]), .B(n27676), .C(n27674), 
         .D(n27613), .Z(n17669)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i15384_3_lut_4_lut.init = 16'hff80;
    LUT4 i1_4_lut_adj_169 (.A(n16_adj_1758), .B(char[20]), .C(n27676), 
         .D(n27625), .Z(char_167__N_690[20])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_169.init = 16'heca0;
    LUT4 i1_3_lut_4_lut_adj_170 (.A(cnt_main[2]), .B(n27676), .C(\temp_ten[2] ), 
         .D(\cnt_main[0] ), .Z(n4_adj_1759)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_170.init = 16'h8088;
    LUT4 shift_right_66_i1572_4_lut_4_lut (.A(num[0]), .B(char[115]), .C(num[1]), 
         .D(char[107]), .Z(n1572)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam shift_right_66_i1572_4_lut_4_lut.init = 16'h4a40;
    FD1P3IX cnt_main_i0_i3 (.D(n1[3]), .SP(sys_clk_c_enable_193), .CD(n12380), 
            .CK(sys_clk_c), .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    LUT4 mux_95_Mux_3_i31_3_lut_4_lut (.A(oled_dcn_N_982), .B(n27621), .C(char_reg[3]), 
         .D(n17689), .Z(n564[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // c:/fpga/ds18b20/oled.v(99[7] 115[14])
    defparam mux_95_Mux_3_i31_3_lut_4_lut.init = 16'he0f1;
    LUT4 i2121_2_lut_rep_587 (.A(cnt_init[0]), .B(cnt_init[1]), .Z(n27702)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/oled.v(99[7] 115[14])
    defparam i2121_2_lut_rep_587.init = 16'h8888;
    LUT4 i3531_2_lut_3_lut_4_lut (.A(cnt_init[0]), .B(cnt_init[1]), .C(cnt_init[3]), 
         .D(cnt_init[2]), .Z(n259[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/oled.v(99[7] 115[14])
    defparam i3531_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i3524_2_lut_3_lut (.A(cnt_init[0]), .B(cnt_init[1]), .C(cnt_init[2]), 
         .Z(n259[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/oled.v(99[7] 115[14])
    defparam i3524_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_4_lut_then_4_lut (.A(n28851), .B(state[2]), .C(state[3]), 
         .D(state[0]), .Z(n27739)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0001;
    FD1S3AX num_delay_i15 (.D(num_delay_15__N_563[15]), .CK(sys_clk_c), 
            .Q(num_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam num_delay_i15.GSR = "ENABLED";
    FD1S3AX num_delay_i14 (.D(num_delay_15__N_563[14]), .CK(sys_clk_c), 
            .Q(num_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam num_delay_i14.GSR = "ENABLED";
    FD1S3AX num_delay_i13 (.D(num_delay_15__N_563[13]), .CK(sys_clk_c), 
            .Q(num_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam num_delay_i13.GSR = "ENABLED";
    FD1S3AX num_delay_i12 (.D(num_delay_15__N_563[12]), .CK(sys_clk_c), 
            .Q(num_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam num_delay_i12.GSR = "ENABLED";
    FD1S3AX num_delay_i11 (.D(num_delay_15__N_563[11]), .CK(sys_clk_c), 
            .Q(num_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam num_delay_i11.GSR = "ENABLED";
    FD1S3AX num_delay_i10 (.D(num_delay_15__N_563[10]), .CK(sys_clk_c), 
            .Q(num_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam num_delay_i10.GSR = "ENABLED";
    FD1S3AX num_delay_i9 (.D(num_delay_15__N_563[9]), .CK(sys_clk_c), .Q(num_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam num_delay_i9.GSR = "ENABLED";
    FD1S3AX num_delay_i8 (.D(num_delay_15__N_563[8]), .CK(sys_clk_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam num_delay_i8.GSR = "ENABLED";
    FD1S3AX num_delay_i7 (.D(num_delay_15__N_563[7]), .CK(sys_clk_c), .Q(num_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam num_delay_i7.GSR = "ENABLED";
    FD1P3IX cnt_i0_i7 (.D(n321[7]), .SP(sys_clk_c_enable_152), .CD(n12423), 
            .CK(sys_clk_c), .Q(cnt_c[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_i0_i7.GSR = "ENABLED";
    FD1S3AX num_delay_i6 (.D(num_delay_15__N_563[6]), .CK(sys_clk_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam num_delay_i6.GSR = "ENABLED";
    FD1S3AX num_delay_i5 (.D(num_delay_15__N_563[5]), .CK(sys_clk_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam num_delay_i5.GSR = "ENABLED";
    FD1S3AX num_delay_i4 (.D(num_delay_15__N_563[4]), .CK(sys_clk_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam num_delay_i4.GSR = "ENABLED";
    FD1S3AX num_delay_i3 (.D(num_delay_15__N_563[3]), .CK(sys_clk_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam num_delay_i3.GSR = "ENABLED";
    FD1S3AY num_delay_i2 (.D(num_delay_15__N_563[2]), .CK(sys_clk_c), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam num_delay_i2.GSR = "ENABLED";
    FD1S3AX num_delay_i1 (.D(num_delay_15__N_563[1]), .CK(sys_clk_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam num_delay_i1.GSR = "ENABLED";
    FD1S3AX state_back_i5 (.D(state_back_5__N_617[5]), .CK(sys_clk_c), .Q(state_back[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam state_back_i5.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_171 (.A(n27670), .B(n27657), .C(n28717), .D(n18_adj_1761), 
         .Z(n22604)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // c:/fpga/ds18b20/oled.v(52[13:18])
    defparam i1_4_lut_adj_171.init = 16'h7350;
    FD1S3AX state_back_i4 (.D(state_back_5__N_617[4]), .CK(sys_clk_c), .Q(state_back[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam state_back_i4.GSR = "ENABLED";
    FD1S3AX state_back_i3 (.D(state_back_5__N_617[3]), .CK(sys_clk_c), .Q(state_back[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam state_back_i3.GSR = "ENABLED";
    FD1S3AX state_back_i2 (.D(state_back_5__N_617[2]), .CK(sys_clk_c), .Q(state_back[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam state_back_i2.GSR = "ENABLED";
    FD1S3AX state_back_i1 (.D(state_back_5__N_617[1]), .CK(sys_clk_c), .Q(state_back[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam state_back_i1.GSR = "ENABLED";
    FD1S3AX char_reg_i7 (.D(char_reg_7__N_535[7]), .CK(sys_clk_c), .Q(char_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_reg_i7.GSR = "ENABLED";
    FD1S3AX char_reg_i6 (.D(char_reg_7__N_535[6]), .CK(sys_clk_c), .Q(char_reg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_reg_i6.GSR = "ENABLED";
    FD1S3AX char_reg_i5 (.D(char_reg_7__N_535[5]), .CK(sys_clk_c), .Q(char_reg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_reg_i5.GSR = "ENABLED";
    FD1S3AX char_reg_i4 (.D(char_reg_7__N_535[4]), .CK(sys_clk_c), .Q(char_reg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_reg_i4.GSR = "ENABLED";
    FD1S3AX char_reg_i3 (.D(char_reg_7__N_535[3]), .CK(sys_clk_c), .Q(char_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_reg_i3.GSR = "ENABLED";
    FD1S3AX char_reg_i2 (.D(char_reg_7__N_535[2]), .CK(sys_clk_c), .Q(char_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_reg_i2.GSR = "ENABLED";
    FD1S3AX char_reg_i1 (.D(char_reg_7__N_535[1]), .CK(sys_clk_c), .Q(char_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_reg_i1.GSR = "ENABLED";
    FD1S3AX char_i126 (.D(char_167__N_359[126]), .CK(sys_clk_c), .Q(char[126])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i126.GSR = "ENABLED";
    LUT4 i34_4_lut (.A(state_back[4]), .B(n2396), .C(state[4]), .D(state[5]), 
         .Z(n18_adj_1761)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A (B+((D)+!C)))) */ ;   // c:/fpga/ds18b20/oled.v(52[13:18])
    defparam i34_4_lut.init = 16'h0a30;
    FD1P3IX cnt_i0_i8 (.D(n321[8]), .SP(sys_clk_c_enable_152), .CD(n12423), 
            .CK(sys_clk_c), .Q(cnt_c[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_i0_i8.GSR = "ENABLED";
    FD1P3IX cnt_i0_i9 (.D(n321[9]), .SP(sys_clk_c_enable_152), .CD(n12423), 
            .CK(sys_clk_c), .Q(cnt_c[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_i0_i9.GSR = "ENABLED";
    FD1P3IX cnt_i0_i10 (.D(n321[10]), .SP(sys_clk_c_enable_152), .CD(n12423), 
            .CK(sys_clk_c), .Q(cnt_c[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_i0_i10.GSR = "ENABLED";
    FD1P3IX cnt_i0_i11 (.D(n321[11]), .SP(sys_clk_c_enable_152), .CD(n12423), 
            .CK(sys_clk_c), .Q(cnt_c[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_i0_i11.GSR = "ENABLED";
    LUT4 i1_4_lut_else_4_lut (.A(n28851), .B(state[2]), .C(state[3]), 
         .D(state[0]), .Z(n27738)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h0114;
    FD1P3IX cnt_i0_i12 (.D(n321[12]), .SP(sys_clk_c_enable_152), .CD(n12423), 
            .CK(sys_clk_c), .Q(cnt_c[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_i0_i12.GSR = "ENABLED";
    FD1P3IX cnt_i0_i13 (.D(n321[13]), .SP(sys_clk_c_enable_152), .CD(n12423), 
            .CK(sys_clk_c), .Q(cnt_c[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_i0_i13.GSR = "ENABLED";
    FD1P3IX cnt_i0_i14 (.D(n321[14]), .SP(sys_clk_c_enable_152), .CD(n12423), 
            .CK(sys_clk_c), .Q(cnt_c[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_i0_i14.GSR = "ENABLED";
    FD1P3IX cnt_i0_i15 (.D(n321[15]), .SP(sys_clk_c_enable_152), .CD(n12423), 
            .CK(sys_clk_c), .Q(cnt_c[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_i0_i15.GSR = "ENABLED";
    FD1S3AX char_i124 (.D(char_167__N_359[124]), .CK(sys_clk_c), .Q(char[124])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i124.GSR = "ENABLED";
    FD1S3AX char_i122 (.D(char_167__N_359[122]), .CK(sys_clk_c), .Q(char[122])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i122.GSR = "ENABLED";
    FD1S3AX char_i118 (.D(char_167__N_359[118]), .CK(sys_clk_c), .Q(char[118])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i118.GSR = "ENABLED";
    FD1S3AX char_i117 (.D(char_167__N_359[117]), .CK(sys_clk_c), .Q(char[117])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i117.GSR = "ENABLED";
    FD1S3AX char_i115 (.D(char_167__N_359[115]), .CK(sys_clk_c), .Q(char[115])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i115.GSR = "ENABLED";
    FD1S3AX char_i114 (.D(char_167__N_359[114]), .CK(sys_clk_c), .Q(char[114])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i114.GSR = "ENABLED";
    FD1S3AX char_i112 (.D(char_167__N_359[112]), .CK(sys_clk_c), .Q(char[112])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i112.GSR = "ENABLED";
    FD1S3AX char_i110 (.D(char_167__N_359[110]), .CK(sys_clk_c), .Q(char[110])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i110.GSR = "ENABLED";
    FD1S3AX char_i109 (.D(char_167__N_359[109]), .CK(sys_clk_c), .Q(char[109])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i109.GSR = "ENABLED";
    FD1S3AX char_i107 (.D(char_167__N_359[107]), .CK(sys_clk_c), .Q(char[107])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i107.GSR = "ENABLED";
    FD1S3AX char_i106 (.D(char_167__N_359[106]), .CK(sys_clk_c), .Q(char[106])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i106.GSR = "ENABLED";
    FD1S3AX char_i104 (.D(char_167__N_359[104]), .CK(sys_clk_c), .Q(char[104])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i104.GSR = "ENABLED";
    FD1S3AX char_i102 (.D(char_167__N_359[102]), .CK(sys_clk_c), .Q(char[102])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i102.GSR = "ENABLED";
    FD1S3AX char_i101 (.D(char_167__N_359[101]), .CK(sys_clk_c), .Q(char[101])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i101.GSR = "ENABLED";
    FD1S3AX char_i100 (.D(char_167__N_359[100]), .CK(sys_clk_c), .Q(char[100])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i100.GSR = "ENABLED";
    FD1S3AX char_i98 (.D(char_167__N_359[98]), .CK(sys_clk_c), .Q(char[98])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i98.GSR = "ENABLED";
    FD1S3AX char_i97 (.D(char_167__N_359[97]), .CK(sys_clk_c), .Q(char[97])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i97.GSR = "ENABLED";
    FD1S3AX char_i96 (.D(char_167__N_359[96]), .CK(sys_clk_c), .Q(char[96])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i96.GSR = "ENABLED";
    FD1S3AX char_i94 (.D(char_167__N_359[94]), .CK(sys_clk_c), .Q(char[94])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i94.GSR = "ENABLED";
    FD1S3AX char_i93 (.D(char_167__N_359[93]), .CK(sys_clk_c), .Q(char[93])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i93.GSR = "ENABLED";
    FD1S3AX char_i92 (.D(char_167__N_359[92]), .CK(sys_clk_c), .Q(char[92])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i92.GSR = "ENABLED";
    FD1S3AX char_i91 (.D(char_167__N_359[91]), .CK(sys_clk_c), .Q(char[91])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i91.GSR = "ENABLED";
    FD1S3AX char_i90 (.D(char_167__N_359[90]), .CK(sys_clk_c), .Q(char[90])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i90.GSR = "ENABLED";
    FD1S3AX char_i89 (.D(char_167__N_359[89]), .CK(sys_clk_c), .Q(char[89])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i89.GSR = "ENABLED";
    FD1S3AX char_i88 (.D(char_167__N_359[88]), .CK(sys_clk_c), .Q(char[88])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i88.GSR = "ENABLED";
    FD1S3AX char_i86 (.D(char_167__N_359[86]), .CK(sys_clk_c), .Q(char[86])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i86.GSR = "ENABLED";
    FD1S3AX char_i85 (.D(char_167__N_359[85]), .CK(sys_clk_c), .Q(char[85])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i85.GSR = "ENABLED";
    FD1S3AX char_i84 (.D(char_167__N_359[84]), .CK(sys_clk_c), .Q(char[84])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i84.GSR = "ENABLED";
    FD1S3AX char_i83 (.D(char_167__N_359[83]), .CK(sys_clk_c), .Q(char[83])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i83.GSR = "ENABLED";
    FD1S3AX char_i81 (.D(char_167__N_359[81]), .CK(sys_clk_c), .Q(char[81])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i81.GSR = "ENABLED";
    FD1S3AX char_i80 (.D(char_167__N_359[80]), .CK(sys_clk_c), .Q(char[80])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i80.GSR = "ENABLED";
    FD1S3AX char_i78 (.D(char_167__N_359[78]), .CK(sys_clk_c), .Q(char[78])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i78.GSR = "ENABLED";
    FD1S3AX char_i77 (.D(char_167__N_359[77]), .CK(sys_clk_c), .Q(char[77])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i77.GSR = "ENABLED";
    FD1S3AX char_i76 (.D(char_167__N_359[76]), .CK(sys_clk_c), .Q(char[76])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i76.GSR = "ENABLED";
    FD1S3AX char_i73 (.D(char_167__N_359[73]), .CK(sys_clk_c), .Q(char[73])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i73.GSR = "ENABLED";
    FD1S3AX char_i72 (.D(char_167__N_359[72]), .CK(sys_clk_c), .Q(char[72])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i72.GSR = "ENABLED";
    FD1S3AX char_i70 (.D(char_167__N_359[70]), .CK(sys_clk_c), .Q(char[70])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i70.GSR = "ENABLED";
    FD1S3AX char_i69 (.D(char_167__N_359[69]), .CK(sys_clk_c), .Q(char[69])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i69.GSR = "ENABLED";
    FD1S3AX char_i68 (.D(char_167__N_359[68]), .CK(sys_clk_c), .Q(char[68])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i68.GSR = "ENABLED";
    FD1S3AX char_i66 (.D(char_167__N_359[66]), .CK(sys_clk_c), .Q(char[66])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i66.GSR = "ENABLED";
    FD1S3AX char_i62 (.D(char_167__N_359[62]), .CK(sys_clk_c), .Q(char[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i62.GSR = "ENABLED";
    FD1S3AX char_i61 (.D(char_167__N_359[61]), .CK(sys_clk_c), .Q(char[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i61.GSR = "ENABLED";
    FD1S3AX char_i60 (.D(char_167__N_359[60]), .CK(sys_clk_c), .Q(char[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i60.GSR = "ENABLED";
    FD1S3AX char_i59 (.D(char_167__N_359[59]), .CK(sys_clk_c), .Q(char[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i59.GSR = "ENABLED";
    FD1S3AX char_i58 (.D(char_167__N_359[58]), .CK(sys_clk_c), .Q(char[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i58.GSR = "ENABLED";
    FD1S3AX char_i56 (.D(char_167__N_359[56]), .CK(sys_clk_c), .Q(char[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i56.GSR = "ENABLED";
    FD1S3AX char_i54 (.D(char_167__N_359[54]), .CK(sys_clk_c), .Q(char[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i54.GSR = "ENABLED";
    FD1S3AX char_i53 (.D(char_167__N_359[53]), .CK(sys_clk_c), .Q(char[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i53.GSR = "ENABLED";
    FD1S3AX char_i52 (.D(char_167__N_359[52]), .CK(sys_clk_c), .Q(char[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i52.GSR = "ENABLED";
    FD1S3AX char_i51 (.D(char_167__N_359[51]), .CK(sys_clk_c), .Q(char[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i51.GSR = "ENABLED";
    FD1S3AX char_i49 (.D(char_167__N_359[49]), .CK(sys_clk_c), .Q(char[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i49.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i1 (.D(n2398[1]), .SP(sys_clk_c_enable_166), .CD(n12408), 
            .CK(sys_clk_c), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    FD1S3AX char_i48 (.D(char_167__N_359[48]), .CK(sys_clk_c), .Q(char[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i48.GSR = "ENABLED";
    FD1S3AX char_i46 (.D(char_167__N_359[46]), .CK(sys_clk_c), .Q(char[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i46.GSR = "ENABLED";
    FD1S3AX char_i45 (.D(char_167__N_359[45]), .CK(sys_clk_c), .Q(char[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i45.GSR = "ENABLED";
    FD1S3AX char_i43 (.D(char_167__N_359[43]), .CK(sys_clk_c), .Q(char[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i43.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i2 (.D(n2398[2]), .SP(sys_clk_c_enable_166), .CD(n12408), 
            .CK(sys_clk_c), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    FD1S3AX char_i42 (.D(char_167__N_359[42]), .CK(sys_clk_c), .Q(char[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i42.GSR = "ENABLED";
    FD1S3AX char_i41 (.D(char_167__N_359[41]), .CK(sys_clk_c), .Q(char[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i41.GSR = "ENABLED";
    FD1S3AX char_i40 (.D(char_167__N_359[40]), .CK(sys_clk_c), .Q(char[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i40.GSR = "ENABLED";
    FD1S3AX char_i38 (.D(char_167__N_359[38]), .CK(sys_clk_c), .Q(char[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i38.GSR = "ENABLED";
    FD1S3AX char_i37 (.D(char_167__N_359[37]), .CK(sys_clk_c), .Q(char[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i37.GSR = "ENABLED";
    FD1S3AX char_i36 (.D(char_167__N_359[36]), .CK(sys_clk_c), .Q(char[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i36.GSR = "ENABLED";
    FD1S3AX char_i35 (.D(char_167__N_359[35]), .CK(sys_clk_c), .Q(char[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i35.GSR = "ENABLED";
    FD1S3AX char_i34 (.D(char_167__N_359[34]), .CK(sys_clk_c), .Q(char[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i34.GSR = "ENABLED";
    FD1S3AX char_i33 (.D(char_167__N_359[33]), .CK(sys_clk_c), .Q(char[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i33.GSR = "ENABLED";
    FD1S3AX char_i32 (.D(char_167__N_359[32]), .CK(sys_clk_c), .Q(char[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam char_i32.GSR = "ENABLED";
    LUT4 i11596_1_lut_rep_592 (.A(cnt_write[0]), .Z(n27707)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam i11596_1_lut_rep_592.init = 16'h5555;
    LUT4 i2_4_lut_4_lut_adj_172 (.A(cnt_write[0]), .B(state[4]), .C(oled_csn_N_966), 
         .D(n10735), .Z(n10_adj_1762)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam i2_4_lut_4_lut_adj_172.init = 16'h0440;
    FD1P3IX cnt_write_i0_i3 (.D(n2398[3]), .SP(sys_clk_c_enable_166), .CD(n12408), 
            .CK(sys_clk_c), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    PFUMX i23400 (.BLUT(n1209_adj_1763), .ALUT(n1225), .C0(num[1]), .Z(n25755));
    FD1P3IX cnt_write_i0_i4 (.D(n2398[4]), .SP(sys_clk_c_enable_166), .CD(n12408), 
            .CK(sys_clk_c), .Q(oled_csn_N_966)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_173 (.A(cnt_init[2]), .B(n27672), .C(cnt_init[0]), 
         .D(state_back[2]), .Z(n19)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_173.init = 16'hec00;
    LUT4 i1_2_lut_4_lut_adj_174 (.A(cnt_init[2]), .B(n27672), .C(cnt_init[0]), 
         .D(state_back[4]), .Z(n19_adj_1764)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_174.init = 16'hec00;
    FD1P3IX cnt_delay_i0_i2 (.D(n2422[2]), .SP(sys_clk_c_enable_170), .CD(n12386), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_175 (.A(cnt_init[2]), .B(n27672), .C(cnt_init[0]), 
         .D(state_back[0]), .Z(n19_adj_1765)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_175.init = 16'hec00;
    LUT4 i73_3_lut_4_lut (.A(cnt_init[2]), .B(n27672), .C(cnt_init[0]), 
         .D(n27556), .Z(n75_adj_1745)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!(C+!(D)))) */ ;
    defparam i73_3_lut_4_lut.init = 16'hefec;
    FD1P3AX num_2268__i4 (.D(n47[4]), .SP(sys_clk_c_enable_169), .CK(sys_clk_c), 
            .Q(num[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam num_2268__i4.GSR = "ENABLED";
    FD1P3AX num_2268__i2 (.D(n47[2]), .SP(sys_clk_c_enable_169), .CK(sys_clk_c), 
            .Q(num[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam num_2268__i2.GSR = "ENABLED";
    CCU2D num_2268_add_4_5 (.A0(cnt_scan[3]), .B0(n10741), .C0(num[3]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n10741), .C1(num[4]), 
          .D1(GND_net), .CIN(n21634), .COUT(n21635), .S0(n37[3]), .S1(n37[4]));   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam num_2268_add_4_5.INIT0 = 16'he1e1;
    defparam num_2268_add_4_5.INIT1 = 16'he1e1;
    defparam num_2268_add_4_5.INJECT1_0 = "NO";
    defparam num_2268_add_4_5.INJECT1_1 = "NO";
    PFUMX i74 (.BLUT(n34), .ALUT(n41_adj_1766), .C0(state[5]), .Z(n50));
    FD1P3IX cnt_delay_i0_i1 (.D(n2422[1]), .SP(sys_clk_c_enable_170), .CD(n12386), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    FD1P3IX x_ph_i0_i4 (.D(n27551), .SP(sys_clk_c_enable_171), .CD(n12385), 
            .CK(sys_clk_c), .Q(x_ph[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam x_ph_i0_i4.GSR = "ENABLED";
    LUT4 led_c_bdd_2_lut_24000_2_lut (.A(cnt_scan[2]), .B(n26716), .Z(n26717)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam led_c_bdd_2_lut_24000_2_lut.init = 16'h4444;
    LUT4 led_c_bdd_2_lut_23994_2_lut (.A(cnt_scan[2]), .B(n26704), .Z(n26705)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam led_c_bdd_2_lut_23994_2_lut.init = 16'h4444;
    LUT4 n25702_bdd_2_lut_23935_4_lut_4_lut (.A(cnt_scan[2]), .B(cnt_scan[1]), 
         .C(n25701), .D(n25700), .Z(n26587)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam n25702_bdd_2_lut_23935_4_lut_4_lut.init = 16'h5140;
    FD1P3IX cnt_main_i0_i4 (.D(n1[4]), .SP(sys_clk_c_enable_193), .CD(n12380), 
            .CK(sys_clk_c), .Q(cnt_main[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_main_i0_i4.GSR = "ENABLED";
    LUT4 i2_3_lut_adj_176 (.A(n26), .B(state[1]), .C(state[4]), .Z(n22318)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/fpga/ds18b20/oled.v(63[4] 172[11])
    defparam i2_3_lut_adj_176.init = 16'h0202;
    LUT4 i5_4_lut (.A(n15), .B(n27086), .C(n27586), .D(n22_adj_1697), 
         .Z(n17797)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i5_4_lut.init = 16'h8880;
    LUT4 n25705_bdd_2_lut_23927_4_lut_4_lut (.A(cnt_scan[2]), .B(cnt_scan[1]), 
         .C(n25704), .D(n25703), .Z(n26580)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam n25705_bdd_2_lut_23927_4_lut_4_lut.init = 16'h5140;
    LUT4 mux_95_Mux_2_i31_3_lut_4_lut (.A(oled_dcn_N_982), .B(n27621), .C(char_reg[2]), 
         .D(n27220), .Z(n564[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/fpga/ds18b20/oled.v(99[7] 115[14])
    defparam mux_95_Mux_2_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n25711_bdd_2_lut_23919_4_lut_4_lut (.A(cnt_scan[2]), .B(cnt_scan[1]), 
         .C(n25710), .D(n25709), .Z(n26499)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam n25711_bdd_2_lut_23919_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_177 (.A(cnt_scan[2]), .B(cnt_scan[1]), .C(n25224), 
         .D(n48), .Z(n61)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_177.init = 16'h5140;
    LUT4 i33_4_lut_adj_178 (.A(num_delay[15]), .B(num_delay_15__N_874[15]), 
         .C(state[2]), .D(n25299), .Z(n16_adj_1768)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_178.init = 16'h0aca;
    LUT4 i33_4_lut_adj_179 (.A(num_delay[14]), .B(num_delay_15__N_874[14]), 
         .C(state[2]), .D(n25299), .Z(n16_adj_1769)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_179.init = 16'h0aca;
    LUT4 i1_4_lut_adj_180 (.A(n27584), .B(num_delay[14]), .C(n16_adj_1770), 
         .D(n27611), .Z(num_delay_15__N_874[14])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_180.init = 16'hfefa;
    LUT4 i2101_2_lut_3_lut_4_lut (.A(n27670), .B(n27657), .C(state[1]), 
         .D(state[0]), .Z(n4200)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2101_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i33_4_lut_adj_181 (.A(num_delay[13]), .B(num_delay_15__N_874[13]), 
         .C(state[2]), .D(n25299), .Z(n16_adj_1771)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_181.init = 16'h0aca;
    LUT4 i1_4_lut_adj_182 (.A(n27584), .B(num_delay[13]), .C(n16_adj_1772), 
         .D(n27611), .Z(num_delay_15__N_874[13])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_182.init = 16'hfefa;
    FD1P3IX cnt_scan_i0_i0 (.D(cnt_scan_4__N_640[0]), .SP(sys_clk_c_enable_194), 
            .CD(n12507), .CK(sys_clk_c), .Q(cnt_scan[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam cnt_scan_i0_i0.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_467_4_lut (.A(n27670), .B(n27657), .C(state[1]), 
         .D(state[0]), .Z(n27582)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_rep_467_4_lut.init = 16'h0110;
    LUT4 mux_371_Mux_31_i109_then_4_lut (.A(n2130), .B(num[4]), .C(n2131), 
         .D(n2132), .Z(n27754)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam mux_371_Mux_31_i109_then_4_lut.init = 16'h0020;
    LUT4 i33_4_lut_adj_183 (.A(num_delay[12]), .B(num_delay_15__N_874[12]), 
         .C(state[2]), .D(n25299), .Z(n16_adj_1773)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_183.init = 16'h0aca;
    LUT4 i23657_3_lut_rep_494_4_lut (.A(n27660), .B(n27658), .C(cnt_scan[4]), 
         .D(state[2]), .Z(n27609)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;   // c:/fpga/ds18b20/oled.v(50[32:40])
    defparam i23657_3_lut_rep_494_4_lut.init = 16'h0007;
    LUT4 mux_95_Mux_1_i31_3_lut_4_lut (.A(oled_dcn_N_982), .B(n27621), .C(char_reg[1]), 
         .D(n27229), .Z(n564[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/fpga/ds18b20/oled.v(99[7] 115[14])
    defparam mux_95_Mux_1_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 cnt_3__bdd_4_lut_24124 (.A(cnt[3]), .B(cnt[0]), .C(cnt[2]), .D(cnt[1]), 
         .Z(n26884)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam cnt_3__bdd_4_lut_24124.init = 16'h1a09;
    LUT4 n833_bdd_2_lut_23936_2_lut (.A(cnt_scan[0]), .B(x_ph[0]), .Z(n26589)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n833_bdd_2_lut_23936_2_lut.init = 16'h4444;
    LUT4 mux_64_i1_4_lut_4_lut (.A(cnt_scan[0]), .B(n27601), .C(n27595), 
         .D(n460), .Z(cnt_scan_4__N_640[0])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam mux_64_i1_4_lut_4_lut.init = 16'h4f40;
    LUT4 i3_4_lut_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), .C(cnt_scan[4]), 
         .D(cnt_scan[2]), .Z(n10741)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i3_4_lut_4_lut.init = 16'hfff7;
    LUT4 i33_4_lut_adj_184 (.A(num_delay[11]), .B(num_delay_15__N_874[11]), 
         .C(state[2]), .D(n25299), .Z(n16_adj_1774)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_184.init = 16'h0aca;
    LUT4 n832_bdd_2_lut_23928_2_lut (.A(cnt_scan[0]), .B(x_ph[1]), .Z(n26582)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n832_bdd_2_lut_23928_2_lut.init = 16'h4444;
    LUT4 n829_bdd_2_lut_23920_2_lut (.A(cnt_scan[0]), .B(x_ph[4]), .Z(n26501)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n829_bdd_2_lut_23920_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_adj_185 (.A(cnt_scan[0]), .B(cnt_scan[2]), .C(n828), 
         .Z(n25210)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_185.init = 16'h8080;
    LUT4 i2_3_lut_4_lut_adj_186 (.A(cnt_scan[0]), .B(cnt_scan[2]), .C(n25098), 
         .D(n664), .Z(n25209)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_186.init = 16'h0008;
    LUT4 i23660_2_lut_rep_603 (.A(cnt_scan[2]), .B(cnt_scan[0]), .Z(n27718)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i23660_2_lut_rep_603.init = 16'h1111;
    LUT4 i1_2_lut_3_lut_adj_187 (.A(cnt_scan[2]), .B(cnt_scan[0]), .C(y_p[5]), 
         .Z(n25220)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_187.init = 16'h1010;
    LUT4 i33_4_lut_adj_188 (.A(num_delay[10]), .B(num_delay_15__N_874[10]), 
         .C(state[2]), .D(n25299), .Z(n16_adj_1775)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_188.init = 16'h0aca;
    LUT4 i33_4_lut_adj_189 (.A(num_delay[9]), .B(num_delay_15__N_874[9]), 
         .C(state[2]), .D(n25299), .Z(n16_adj_1776)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_189.init = 16'h0aca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_190 (.A(n27670), .B(n27669), .C(n3318), 
         .D(n27661), .Z(n25269)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_190.init = 16'he0f0;
    LUT4 n25219_bdd_3_lut_23924_4_lut (.A(y_p[4]), .B(n27718), .C(cnt_scan[1]), 
         .D(n26502), .Z(n26503)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n25219_bdd_3_lut_23924_4_lut.init = 16'hf808;
    LUT4 i1_2_lut_3_lut_adj_191 (.A(cnt_scan[2]), .B(cnt_scan[0]), .C(y_p[7]), 
         .Z(n25221)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_191.init = 16'h1010;
    LUT4 i1_2_lut_rep_487_4_lut_4_lut (.A(cnt_init[0]), .B(cnt_init[2]), 
         .C(cnt_init[1]), .D(n27672), .Z(n27602)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_2_lut_rep_487_4_lut_4_lut.init = 16'h0004;
    LUT4 i33_4_lut_adj_192 (.A(num_delay[8]), .B(num_delay_15__N_874[8]), 
         .C(state[2]), .D(n25299), .Z(n16_adj_1777)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_192.init = 16'h0aca;
    LUT4 i1_4_lut_4_lut_adj_193 (.A(cnt_init[0]), .B(n27611), .C(n27556), 
         .D(num_delay[15]), .Z(num_delay_15__N_874[15])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_4_lut_4_lut_adj_193.init = 16'hdc00;
    LUT4 i1_4_lut_adj_194 (.A(n27584), .B(num_delay[8]), .C(n16_adj_1778), 
         .D(n27611), .Z(num_delay_15__N_874[8])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_194.init = 16'hfefa;
    LUT4 i1_2_lut_4_lut_adj_195 (.A(n27673), .B(cnt_init[0]), .C(n27672), 
         .D(state[2]), .Z(n4_adj_1747)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_4_lut_adj_195.init = 16'h0400;
    LUT4 i1_4_lut_4_lut_adj_196 (.A(cnt_init[0]), .B(n27611), .C(n27556), 
         .D(num_delay[10]), .Z(num_delay_15__N_874[10])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_4_lut_4_lut_adj_196.init = 16'hdc00;
    LUT4 i1_4_lut_4_lut_adj_197 (.A(cnt_init[0]), .B(n27611), .C(n27556), 
         .D(num_delay[1]), .Z(num_delay_15__N_874[1])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_4_lut_4_lut_adj_197.init = 16'hdc00;
    LUT4 i33_4_lut_adj_198 (.A(num_delay[7]), .B(num_delay_15__N_874[7]), 
         .C(state[2]), .D(n25299), .Z(n16_adj_1779)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_198.init = 16'h0aca;
    LUT4 i3610_3_lut_4_lut (.A(cnt_write[2]), .B(n27671), .C(cnt_write[3]), 
         .D(oled_csn_N_966), .Z(n2398[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/fpga/ds18b20/oled.v(143[25:41])
    defparam i3610_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_4_lut_adj_199 (.A(n27584), .B(num_delay[7]), .C(n16_adj_1780), 
         .D(n27611), .Z(num_delay_15__N_874[7])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_199.init = 16'hfefa;
    LUT4 i1_4_lut_4_lut_adj_200 (.A(cnt_init[0]), .B(n27611), .C(n27556), 
         .D(num_delay[11]), .Z(num_delay_15__N_874[11])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_4_lut_4_lut_adj_200.init = 16'hdc00;
    LUT4 i1_3_lut_3_lut_adj_201 (.A(cnt_init[0]), .B(n27556), .C(num_delay[14]), 
         .Z(n16_adj_1770)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_3_lut_3_lut_adj_201.init = 16'h4040;
    LUT4 n25218_bdd_3_lut_23932_4_lut (.A(y_p[1]), .B(n27718), .C(cnt_scan[1]), 
         .D(n26583), .Z(n26584)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n25218_bdd_3_lut_23932_4_lut.init = 16'hf808;
    LUT4 i14975_2_lut (.A(n295[7]), .B(oled_dcn_N_982), .Z(n321[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam i14975_2_lut.init = 16'h2222;
    LUT4 i2_3_lut_4_lut_adj_202 (.A(state[0]), .B(n27667), .C(n27670), 
         .D(state[3]), .Z(n11_adj_1750)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/fpga/ds18b20/oled.v(141[5:10])
    defparam i2_3_lut_4_lut_adj_202.init = 16'hfbff;
    LUT4 i1_3_lut_4_lut_4_lut_adj_203 (.A(cnt_init[0]), .B(n11344), .C(oled_dcn_N_982), 
         .D(n27612), .Z(n4_adj_1755)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_3_lut_4_lut_4_lut_adj_203.init = 16'h7333;
    LUT4 mux_371_Mux_31_i109_else_4_lut (.A(n2130), .B(num[4]), .C(n2131), 
         .D(n2132), .Z(n27753)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam mux_371_Mux_31_i109_else_4_lut.init = 16'h0200;
    LUT4 i1_3_lut_3_lut_adj_204 (.A(cnt_init[0]), .B(n27556), .C(num_delay[13]), 
         .Z(n16_adj_1772)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_3_lut_3_lut_adj_204.init = 16'h4040;
    LUT4 i1_4_lut_4_lut_adj_205 (.A(cnt_init[0]), .B(n25448), .C(n19_adj_1765), 
         .D(state[2]), .Z(n6_adj_1707)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_4_lut_4_lut_adj_205.init = 16'hf400;
    LUT4 i33_4_lut_adj_206 (.A(num_delay[6]), .B(num_delay_15__N_874[6]), 
         .C(state[2]), .D(n25299), .Z(n16_adj_1781)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_206.init = 16'h0aca;
    LUT4 i1_4_lut_4_lut_adj_207 (.A(cnt_init[0]), .B(n27611), .C(n27556), 
         .D(num_delay[12]), .Z(num_delay_15__N_874[12])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_4_lut_4_lut_adj_207.init = 16'hdc00;
    LUT4 i23764_3_lut_3_lut_4_lut (.A(n9), .B(n27585), .C(n27603), .D(n27575), 
         .Z(n21980)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam i23764_3_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_3_lut_3_lut_adj_208 (.A(cnt_init[0]), .B(n27556), .C(num_delay[7]), 
         .Z(n16_adj_1780)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_3_lut_3_lut_adj_208.init = 16'h4040;
    LUT4 i1_4_lut_4_lut_adj_209 (.A(cnt_init[0]), .B(n27611), .C(n27556), 
         .D(num_delay[6]), .Z(num_delay_15__N_874[6])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_4_lut_4_lut_adj_209.init = 16'hdc00;
    LUT4 i33_4_lut_adj_210 (.A(num_delay[5]), .B(num_delay_15__N_874[5]), 
         .C(state[2]), .D(n25299), .Z(n16_adj_1782)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_210.init = 16'h0aca;
    LUT4 i2_4_lut_4_lut_adj_211 (.A(cnt_init[0]), .B(n27556), .C(num_delay[5]), 
         .D(n4_adj_1783), .Z(num_delay_15__N_874[5])) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i2_4_lut_4_lut_adj_211.init = 16'hff40;
    LUT4 i2_2_lut_rep_486_3_lut_4_lut (.A(cnt_scan[2]), .B(cnt_scan[3]), 
         .C(cnt_scan[4]), .D(n27660), .Z(n27601)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam i2_2_lut_rep_486_3_lut_4_lut.init = 16'hfff7;
    LUT4 i1_4_lut_4_lut_adj_212 (.A(cnt_init[0]), .B(n27611), .C(n27556), 
         .D(num_delay[4]), .Z(num_delay_15__N_874[4])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_4_lut_4_lut_adj_212.init = 16'hdc00;
    LUT4 i1_3_lut_3_lut_adj_213 (.A(cnt_init[0]), .B(n27556), .C(num_delay[3]), 
         .Z(n16_adj_1784)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_3_lut_3_lut_adj_213.init = 16'h4040;
    LUT4 i33_4_lut_adj_214 (.A(num_delay[4]), .B(num_delay_15__N_874[4]), 
         .C(state[2]), .D(n25299), .Z(n16_adj_1785)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_214.init = 16'h0aca;
    LUT4 i1_3_lut_3_lut_adj_215 (.A(cnt_init[0]), .B(n27556), .C(state_back[1]), 
         .Z(n16_adj_1786)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_3_lut_3_lut_adj_215.init = 16'h4040;
    LUT4 i1_4_lut_4_lut_adj_216 (.A(cnt_init[0]), .B(n27611), .C(n27556), 
         .D(num_delay[9]), .Z(num_delay_15__N_874[9])) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_4_lut_4_lut_adj_216.init = 16'hdc00;
    LUT4 i1_4_lut_4_lut_adj_217 (.A(cnt_init[0]), .B(n25450), .C(n19_adj_1764), 
         .D(state[2]), .Z(n6_adj_1703)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_4_lut_4_lut_adj_217.init = 16'hf400;
    LUT4 i1_3_lut_3_lut_adj_218 (.A(cnt_init[0]), .B(n27556), .C(num_delay[8]), 
         .Z(n16_adj_1778)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_3_lut_3_lut_adj_218.init = 16'h4040;
    LUT4 i1_2_lut_2_lut (.A(cnt_init[0]), .B(cnt_init[1]), .Z(n4_adj_1787)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i33_4_lut_adj_219 (.A(num_delay[3]), .B(num_delay_15__N_874[3]), 
         .C(state[2]), .D(n25299), .Z(n16_adj_1788)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_219.init = 16'h0aca;
    LUT4 i1_2_lut_adj_220 (.A(cnt_scan[4]), .B(n26719), .Z(n64_adj_1741)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_220.init = 16'h4444;
    LUT4 i1_4_lut_adj_221 (.A(n27584), .B(num_delay[3]), .C(n16_adj_1784), 
         .D(n27611), .Z(num_delay_15__N_874[3])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_221.init = 16'hfefa;
    LUT4 i1_2_lut_4_lut_adj_222 (.A(n26884), .B(n564[3]), .C(n27543), 
         .D(state[2]), .Z(n6_adj_1682)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_222.init = 16'hac00;
    LUT4 i1_4_lut_4_lut_adj_223 (.A(state[0]), .B(n27558), .C(n16_adj_1789), 
         .D(char[33]), .Z(char_167__N_359[33])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_223.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_224 (.A(state[0]), .B(n27558), .C(n16_adj_1790), 
         .D(char[48]), .Z(char_167__N_359[48])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_224.init = 16'hdc50;
    LUT4 n25217_bdd_3_lut_23940_4_lut (.A(y_p[0]), .B(n27718), .C(cnt_scan[1]), 
         .D(n26590), .Z(n26591)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n25217_bdd_3_lut_23940_4_lut.init = 16'hf808;
    LUT4 i1_4_lut_4_lut_adj_225 (.A(state[0]), .B(n27558), .C(n16_adj_1733), 
         .D(y_p[4]), .Z(y_p_7__N_333[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_225.init = 16'hdc50;
    PFUMX i24486 (.BLUT(n27750), .ALUT(n27751), .C0(cnt_init[2]), .Z(n27752));
    L6MUX21 i23404 (.D0(n25757), .D1(n25758), .SD(num[3]), .Z(n2129));
    LUT4 i1_4_lut_4_lut_adj_226 (.A(state[0]), .B(n27), .C(n16_adj_1777), 
         .D(num_delay[8]), .Z(num_delay_15__N_563[8])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_226.init = 16'hdc50;
    LUT4 i1_2_lut_3_lut_4_lut_adj_227 (.A(state[3]), .B(n27670), .C(n27667), 
         .D(state[0]), .Z(n25228)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/fpga/ds18b20/oled.v(98[5:9])
    defparam i1_2_lut_3_lut_4_lut_adj_227.init = 16'h1101;
    LUT4 i1_4_lut_4_lut_adj_228 (.A(state[0]), .B(n27), .C(n16_adj_1769), 
         .D(num_delay[14]), .Z(num_delay_15__N_563[14])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_228.init = 16'hdc50;
    LUT4 i41_4_lut (.A(num_delay[2]), .B(n25299), .C(state[2]), .D(n25125), 
         .Z(n24_adj_1791)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i41_4_lut.init = 16'h3505;
    LUT4 i33_4_lut_adj_229 (.A(char[110]), .B(n25), .C(state[1]), .D(n17669), 
         .Z(n16_adj_1792)) /* synthesis lut_function=(!(A (C (D))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_229.init = 16'h0aba;
    LUT4 i1_4_lut_4_lut_adj_230 (.A(state[0]), .B(n27), .C(n16_adj_1768), 
         .D(num_delay[15]), .Z(num_delay_15__N_563[15])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_230.init = 16'hdc50;
    LUT4 i23397_3_lut (.A(n25750), .B(n26552), .C(num[3]), .Z(n2130)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23397_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_3_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[4]), .C(cnt_main[1]), 
         .D(cnt_main[2]), .Z(n21_adj_1793)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(88[8:12])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfeee;
    LUT4 i1_4_lut_adj_231 (.A(cnt_init[0]), .B(num_delay[2]), .C(n15_adj_1794), 
         .D(n27611), .Z(n25125)) /* synthesis lut_function=(!(A (B (D))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_231.init = 16'h23af;
    LUT4 i1_4_lut_adj_232 (.A(num_delay[2]), .B(n27673), .C(n27612), .D(oled_dcn_N_982), 
         .Z(n15_adj_1794)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_adj_232.init = 16'ha8f8;
    LUT4 i1_4_lut_4_lut_adj_233 (.A(state[0]), .B(n27558), .C(n16_adj_1756), 
         .D(char[112]), .Z(char_167__N_359[112])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_233.init = 16'hdc50;
    LUT4 equal_18_i8_2_lut_rep_512_3_lut (.A(cnt_main[3]), .B(cnt_main[4]), 
         .C(cnt_main[2]), .Z(n27627)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/fpga/ds18b20/oled.v(88[8:12])
    defparam equal_18_i8_2_lut_rep_512_3_lut.init = 16'hefef;
    LUT4 i33_4_lut_adj_234 (.A(num_delay[1]), .B(num_delay_15__N_874[1]), 
         .C(state[2]), .D(n25299), .Z(n16_adj_1795)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_234.init = 16'h0aca;
    LUT4 i1_4_lut_4_lut_adj_235 (.A(state[0]), .B(n27558), .C(n16_adj_1796), 
         .D(char[122]), .Z(char_167__N_359[122])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_235.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_236 (.A(state[0]), .B(n27558), .C(n16_adj_1726), 
         .D(char[115]), .Z(char_167__N_359[115])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_236.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_237 (.A(state[0]), .B(n27558), .C(n16_adj_1797), 
         .D(char[42]), .Z(char_167__N_359[42])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_237.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_238 (.A(state[0]), .B(n27558), .C(n16_adj_1798), 
         .D(char[91]), .Z(char_167__N_359[91])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_238.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_239 (.A(state[0]), .B(n27558), .C(n16_adj_1799), 
         .D(char[49]), .Z(char_167__N_359[49])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_239.init = 16'hdc50;
    LUT4 i1_4_lut_adj_240 (.A(state_back[5]), .B(n27_adj_1800), .C(n27616), 
         .D(n8), .Z(state_back_5__N_617[5])) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // c:/fpga/ds18b20/oled.v(52[13:18])
    defparam i1_4_lut_adj_240.init = 16'h8a88;
    LUT4 i1_4_lut_4_lut_adj_241 (.A(state[0]), .B(n27558), .C(n16_adj_1727), 
         .D(y_p[7]), .Z(y_p_7__N_333[7])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_241.init = 16'hdc50;
    LUT4 i10121_2_lut_3_lut_4_lut (.A(state[3]), .B(n27670), .C(sys_clk_c_enable_152), 
         .D(n27620), .Z(n12423)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(98[5:9])
    defparam i10121_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1_4_lut_adj_242 (.A(n24_adj_1704), .B(state_back[4]), .C(n27616), 
         .D(n27_adj_1800), .Z(state_back_5__N_617[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_242.init = 16'hce0a;
    LUT4 i2_3_lut_4_lut_adj_243 (.A(state[3]), .B(n27670), .C(state[0]), 
         .D(n27667), .Z(n12507)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/fpga/ds18b20/oled.v(98[5:9])
    defparam i2_3_lut_4_lut_adj_243.init = 16'h1000;
    LUT4 i1_4_lut_4_lut_adj_244 (.A(state[0]), .B(n27558), .C(n16_adj_1801), 
         .D(char[98]), .Z(char_167__N_359[98])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_244.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_245 (.A(state[0]), .B(n27558), .C(n16_adj_1802), 
         .D(char[66]), .Z(char_167__N_359[66])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_245.init = 16'hdc50;
    LUT4 i1_4_lut_adj_246 (.A(n24_adj_1702), .B(state_back[3]), .C(n27616), 
         .D(n27_adj_1800), .Z(state_back_5__N_617[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_246.init = 16'hce0a;
    LUT4 i1_4_lut_4_lut_adj_247 (.A(state[0]), .B(n27), .C(n16_adj_1776), 
         .D(num_delay[9]), .Z(num_delay_15__N_563[9])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_247.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_248 (.A(state[0]), .B(n27558), .C(n16_adj_1736), 
         .D(y_p[5]), .Z(y_p_7__N_333[5])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_248.init = 16'hdc50;
    LUT4 i2_3_lut_4_lut_adj_249 (.A(state[3]), .B(n27670), .C(state[1]), 
         .D(n21_adj_1803), .Z(n27)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/oled.v(98[5:9])
    defparam i2_3_lut_4_lut_adj_249.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut_adj_250 (.A(state[0]), .B(n27558), .C(n16_adj_1804), 
         .D(char[36]), .Z(char_167__N_359[36])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_250.init = 16'hdc50;
    LUT4 i2_3_lut_4_lut_adj_251 (.A(cnt_main[3]), .B(cnt_main[4]), .C(cnt_main[2]), 
         .D(\cnt_main[0] ), .Z(n36)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;   // c:/fpga/ds18b20/oled.v(88[8:12])
    defparam i2_3_lut_4_lut_adj_251.init = 16'hfeef;
    LUT4 i1_4_lut_adj_252 (.A(n24_adj_1695), .B(state_back[2]), .C(n27616), 
         .D(n27_adj_1800), .Z(state_back_5__N_617[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_252.init = 16'hce0a;
    LUT4 i1_4_lut_4_lut_adj_253 (.A(state[0]), .B(n27), .C(n16_adj_1775), 
         .D(num_delay[10]), .Z(num_delay_15__N_563[10])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_253.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_254 (.A(state[0]), .B(n27558), .C(n16_adj_1732), 
         .D(y_p[1]), .Z(y_p_7__N_333[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_254.init = 16'hdc50;
    LUT4 i1_4_lut_adj_255 (.A(state[0]), .B(n25299), .C(n12_adj_1805), 
         .D(state[2]), .Z(n11044)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_255.init = 16'h3022;
    LUT4 i1_4_lut_4_lut_adj_256 (.A(state[0]), .B(n27558), .C(n16_adj_1806), 
         .D(char[40]), .Z(char_167__N_359[40])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_256.init = 16'hdc50;
    LUT4 i1_4_lut_adj_257 (.A(state_back[1]), .B(n27615), .C(n24_adj_1807), 
         .D(state[0]), .Z(n35)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_257.init = 16'haaa8;
    LUT4 i50_4_lut (.A(state_back[1]), .B(n1475), .C(state[3]), .D(n27616), 
         .Z(n31_adj_1738)) /* synthesis lut_function=(!((B (C (D))+!B (C))+!A)) */ ;
    defparam i50_4_lut.init = 16'h0a8a;
    LUT4 i1_4_lut_4_lut_adj_258 (.A(state[0]), .B(n27), .C(n16_adj_1774), 
         .D(num_delay[11]), .Z(num_delay_15__N_563[11])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_258.init = 16'hdc50;
    CCU2D num_2268_add_4_3 (.A0(cnt_scan[3]), .B0(n10741), .C0(num[1]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n10741), .C1(num[2]), 
          .D1(GND_net), .CIN(n21633), .COUT(n21634), .S0(n37[1]), .S1(n37[2]));   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam num_2268_add_4_3.INIT0 = 16'he1e1;
    defparam num_2268_add_4_3.INIT1 = 16'he1e1;
    defparam num_2268_add_4_3.INJECT1_0 = "NO";
    defparam num_2268_add_4_3.INJECT1_1 = "NO";
    LUT4 i12_1_lut_2_lut_4_lut (.A(n17797), .B(n18), .C(n25294), .D(n26544), 
         .Z(\uart_data_120__N_1005[5] )) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((C+(D))+!B))) */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam i12_1_lut_2_lut_4_lut.init = 16'h00ac;
    LUT4 i1_2_lut_adj_259 (.A(state[3]), .B(state[2]), .Z(n24_adj_1807)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_259.init = 16'h8888;
    LUT4 i14603_2_lut (.A(state[4]), .B(state_back[0]), .Z(n41_adj_1766)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i14603_2_lut.init = 16'h1111;
    LUT4 i1_4_lut_adj_260 (.A(state[4]), .B(state[0]), .C(n10735), .D(n2396), 
         .Z(n34)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // c:/fpga/ds18b20/oled.v(63[4] 172[11])
    defparam i1_4_lut_adj_260.init = 16'h0a22;
    LUT4 i1_4_lut_4_lut_adj_261 (.A(state[0]), .B(n27558), .C(n16_adj_1808), 
         .D(char[41]), .Z(char_167__N_359[41])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_261.init = 16'hdc50;
    LUT4 n11_bdd_4_lut_4_lut (.A(n27667), .B(n27619), .C(n27668), .D(n11_adj_1809), 
         .Z(sys_clk_c_enable_170)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam n11_bdd_4_lut_4_lut.init = 16'h20fc;
    LUT4 i33_4_lut_adj_262 (.A(char[109]), .B(n25), .C(state[1]), .D(n17669), 
         .Z(n16_adj_1810)) /* synthesis lut_function=(!(A (C (D))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_262.init = 16'h0aba;
    LUT4 n8_bdd_4_lut_4_lut (.A(n27667), .B(n27619), .C(n11_adj_1750), 
         .D(n27668), .Z(sys_clk_c_enable_194)) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A (B (C)+!B (C+!(D))))) */ ;
    defparam n8_bdd_4_lut_4_lut.init = 16'h2f0c;
    LUT4 i1_4_lut_adj_263 (.A(n24_adj_1811), .B(char_reg[7]), .C(n27616), 
         .D(n27_adj_1800), .Z(char_reg_7__N_535[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_263.init = 16'hce0a;
    LUT4 n11_bdd_4_lut_4_lut_adj_264 (.A(n27667), .B(n27619), .C(n27668), 
         .D(n11), .Z(sys_clk_c_enable_166)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam n11_bdd_4_lut_4_lut_adj_264.init = 16'h20fc;
    LUT4 equal_17_i9_2_lut_rep_488_3_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[4]), 
         .C(n6_adj_1728), .D(cnt_main[2]), .Z(n27603)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/fpga/ds18b20/oled.v(88[8:12])
    defparam equal_17_i9_2_lut_rep_488_3_lut_4_lut.init = 16'hfeff;
    LUT4 i4232_2_lut_rep_439_4_lut (.A(n27673), .B(cnt_init[0]), .C(n27672), 
         .D(oled_dcn_N_982), .Z(n27554)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/oled.v(113[8:12])
    defparam i4232_2_lut_rep_439_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut_adj_265 (.A(state[0]), .B(n27558), .C(n16_adj_1812), 
         .D(char[45]), .Z(char_167__N_359[45])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_265.init = 16'hdc50;
    LUT4 i1_4_lut_adj_266 (.A(n24_adj_1690), .B(char_reg[6]), .C(n27616), 
         .D(n27_adj_1800), .Z(char_reg_7__N_535[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_266.init = 16'hce0a;
    LUT4 i1_4_lut_4_lut_adj_267 (.A(state[0]), .B(n27), .C(n16_adj_1773), 
         .D(num_delay[12]), .Z(num_delay_15__N_563[12])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_267.init = 16'hdc50;
    LUT4 i1_4_lut_adj_268 (.A(n24_adj_1687), .B(char_reg[5]), .C(n27616), 
         .D(n27_adj_1800), .Z(char_reg_7__N_535[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_268.init = 16'hce0a;
    LUT4 i23821_2_lut_2_lut_4_lut (.A(n27613), .B(state[0]), .C(state[1]), 
         .D(n27585), .Z(n25525)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/fpga/ds18b20/oled.v(72[5:9])
    defparam i23821_2_lut_2_lut_4_lut.init = 16'h0010;
    LUT4 i1_4_lut_adj_269 (.A(n24_adj_1813), .B(char_reg[4]), .C(n27616), 
         .D(n27_adj_1800), .Z(char_reg_7__N_535[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_269.init = 16'hce0a;
    LUT4 i1_4_lut_4_lut_adj_270 (.A(state[0]), .B(n27558), .C(n16_adj_1814), 
         .D(char[51]), .Z(char_167__N_359[51])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_270.init = 16'hdc50;
    LUT4 i1_4_lut_adj_271 (.A(n24_adj_1684), .B(char_reg[3]), .C(n27616), 
         .D(n27_adj_1800), .Z(char_reg_7__N_535[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_271.init = 16'hce0a;
    LUT4 i1_4_lut_4_lut_adj_272 (.A(state[0]), .B(n27558), .C(n16_adj_1815), 
         .D(char[53]), .Z(char_167__N_359[53])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_272.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_273 (.A(state[0]), .B(n27558), .C(n16_adj_1816), 
         .D(char[124]), .Z(char_167__N_359[124])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_273.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_274 (.A(state[0]), .B(n27558), .C(n16_adj_1817), 
         .D(char[126]), .Z(char_167__N_359[126])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_274.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_275 (.A(state[0]), .B(n27611), .C(state_back[1]), 
         .D(n16_adj_1786), .Z(n12_adj_1805)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_275.init = 16'h5540;
    LUT4 i1_4_lut_4_lut_adj_276 (.A(state[0]), .B(n27), .C(n16_adj_1795), 
         .D(num_delay[1]), .Z(num_delay_15__N_563[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_276.init = 16'hdc50;
    PFUMX i24476 (.BLUT(n27735), .ALUT(n27736), .C0(n2131), .Z(n27737));
    LUT4 i23642_4_lut_4_lut (.A(state[0]), .B(n27), .C(n24_adj_1791), 
         .D(num_delay[2]), .Z(num_delay_15__N_563[2])) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;
    defparam i23642_4_lut_4_lut.init = 16'haf23;
    LUT4 i1_4_lut_adj_277 (.A(n24), .B(char_reg[2]), .C(n27616), .D(n27_adj_1800), 
         .Z(char_reg_7__N_535[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_277.init = 16'hce0a;
    LUT4 i1_4_lut_4_lut_adj_278 (.A(state[0]), .B(n27558), .C(n16_adj_1818), 
         .D(char[54]), .Z(char_167__N_359[54])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_278.init = 16'hdc50;
    LUT4 i1_4_lut_adj_279 (.A(n24_adj_1819), .B(char_reg[1]), .C(n27616), 
         .D(n27_adj_1800), .Z(char_reg_7__N_535[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_279.init = 16'hce0a;
    LUT4 i1_4_lut_4_lut_adj_280 (.A(state[0]), .B(n27), .C(n16_adj_1788), 
         .D(num_delay[3]), .Z(num_delay_15__N_563[3])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_280.init = 16'hdc50;
    PFUMX i24056 (.BLUT(n26806), .ALUT(n26805), .C0(cnt[1]), .Z(n26807));
    LUT4 i1_4_lut_4_lut_adj_281 (.A(state[0]), .B(n27), .C(n16_adj_1785), 
         .D(num_delay[4]), .Z(num_delay_15__N_563[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_281.init = 16'hdc50;
    LUT4 i33_4_lut_adj_282 (.A(char[107]), .B(n25), .C(state[1]), .D(n17669), 
         .Z(n16_adj_1820)) /* synthesis lut_function=(!(A (C (D))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_282.init = 16'h0aba;
    LUT4 i2_3_lut_4_lut_adj_283 (.A(cnt_main[3]), .B(cnt_main[4]), .C(\cnt_main[0] ), 
         .D(cnt_main[2]), .Z(n21_adj_1749)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(88[8:12])
    defparam i2_3_lut_4_lut_adj_283.init = 16'hfeee;
    LUT4 i1_4_lut_4_lut_adj_284 (.A(state[0]), .B(n27), .C(n16_adj_1782), 
         .D(num_delay[5]), .Z(num_delay_15__N_563[5])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_284.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_285 (.A(state[0]), .B(n27), .C(n16_adj_1781), 
         .D(num_delay[6]), .Z(num_delay_15__N_563[6])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_285.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_286 (.A(state[0]), .B(n27), .C(n16_adj_1779), 
         .D(num_delay[7]), .Z(num_delay_15__N_563[7])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_286.init = 16'hdc50;
    CCU2D num_2268_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n10741), .C1(num[0]), 
          .D1(GND_net), .COUT(n21633), .S1(n37[0]));   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam num_2268_add_4_1.INIT0 = 16'hF000;
    defparam num_2268_add_4_1.INIT1 = 16'he1e1;
    defparam num_2268_add_4_1.INJECT1_0 = "NO";
    defparam num_2268_add_4_1.INJECT1_1 = "NO";
    LUT4 i23639_4_lut_4_lut (.A(state[0]), .B(n27667), .C(n27619), .D(n25044), 
         .Z(sys_clk_c_enable_152)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;
    defparam i23639_4_lut_4_lut.init = 16'hff08;
    LUT4 i33_4_lut_adj_287 (.A(char[106]), .B(char_167__N_690[106]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1821)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_287.init = 16'h0aca;
    LUT4 i1_4_lut_4_lut_adj_288 (.A(state[0]), .B(n27558), .C(n16_adj_1822), 
         .D(char[58]), .Z(char_167__N_359[58])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_288.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_289 (.A(state[0]), .B(n27558), .C(n16_adj_1823), 
         .D(char[60]), .Z(char_167__N_359[60])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_289.init = 16'hdc50;
    LUT4 i33_4_lut_adj_290 (.A(char[126]), .B(n25), .C(state[1]), .D(n17669), 
         .Z(n16_adj_1817)) /* synthesis lut_function=(!(A (C (D))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_290.init = 16'h0aba;
    LUT4 i45_4_lut_3_lut (.A(state[0]), .B(state_5__N_928[1]), .C(state[2]), 
         .Z(n28)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i45_4_lut_3_lut.init = 16'h4a4a;
    LUT4 i1_4_lut_4_lut_adj_291 (.A(state[0]), .B(n27558), .C(n16_adj_1824), 
         .D(char[90]), .Z(char_167__N_359[90])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_291.init = 16'hdc50;
    FD1P3AX oled_dat_312 (.D(n25138), .SP(sys_clk_c_enable_197), .CK(sys_clk_c), 
            .Q(oled_dat_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam oled_dat_312.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_292 (.A(state[0]), .B(n27558), .C(n16_adj_1825), 
         .D(char[94]), .Z(char_167__N_359[94])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_292.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_293 (.A(state[0]), .B(n27558), .C(n16_adj_1821), 
         .D(char[106]), .Z(char_167__N_359[106])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_293.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_294 (.A(state[0]), .B(n27558), .C(n16_adj_1820), 
         .D(char[107]), .Z(char_167__N_359[107])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_294.init = 16'hdc50;
    LUT4 i33_4_lut_adj_295 (.A(char[104]), .B(state[1]), .C(n17669), .D(n25), 
         .Z(n16_adj_1826)) /* synthesis lut_function=(!(A (B (C))+!A ((C+(D))+!B))) */ ;
    defparam i33_4_lut_adj_295.init = 16'h2a2e;
    LUT4 i14974_2_lut (.A(n295[8]), .B(oled_dcn_N_982), .Z(n321[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam i14974_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_4_lut_adj_296 (.A(state[0]), .B(n27558), .C(n16_adj_1810), 
         .D(char[109]), .Z(char_167__N_359[109])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_296.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_297 (.A(state[0]), .B(n27558), .C(n16_adj_1714), 
         .D(char[117]), .Z(char_167__N_359[117])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_297.init = 16'hdc50;
    LUT4 i1_2_lut_4_lut_adj_298 (.A(n22), .B(n564[2]), .C(n25638), .D(state[2]), 
         .Z(n6_adj_1681)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_298.init = 16'hac00;
    LUT4 i35_4_lut_4_lut_adj_299 (.A(cnt_main[1]), .B(n27676), .C(char[13]), 
         .D(cnt_main[2]), .Z(n18_adj_1828)) /* synthesis lut_function=(A (B (D))+!A !(C+(D))) */ ;
    defparam i35_4_lut_4_lut_adj_299.init = 16'h8805;
    LUT4 i1_4_lut_4_lut_adj_300 (.A(state[0]), .B(n27558), .C(n16_adj_1829), 
         .D(char[38]), .Z(char_167__N_359[38])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_300.init = 16'hdc50;
    LUT4 i14973_2_lut (.A(n295[9]), .B(oled_dcn_N_982), .Z(n321[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam i14973_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_4_lut_adj_301 (.A(state[0]), .B(n27558), .C(n16_adj_1830), 
         .D(char[69]), .Z(char_167__N_359[69])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_301.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_302 (.A(state[0]), .B(n27558), .C(n16_adj_1831), 
         .D(char[93]), .Z(char_167__N_359[93])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_302.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_303 (.A(state[0]), .B(n27558), .C(n16_adj_1792), 
         .D(char[110]), .Z(char_167__N_359[110])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_303.init = 16'hdc50;
    LUT4 i14972_2_lut (.A(n295[10]), .B(oled_dcn_N_982), .Z(n321[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam i14972_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_4_lut_adj_304 (.A(state[0]), .B(n27558), .C(n16_adj_1731), 
         .D(char[114]), .Z(char_167__N_359[114])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_304.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_305 (.A(state[0]), .B(n27558), .C(n16_adj_1832), 
         .D(char[72]), .Z(char_167__N_359[72])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_305.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_306 (.A(state[0]), .B(n27), .C(n16_adj_1771), 
         .D(num_delay[13]), .Z(num_delay_15__N_563[13])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_306.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_307 (.A(state[0]), .B(n27558), .C(n16_adj_1826), 
         .D(char[104]), .Z(char_167__N_359[104])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_307.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_308 (.A(state[0]), .B(n27558), .C(n16_adj_1833), 
         .D(char[102]), .Z(char_167__N_359[102])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_308.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_309 (.A(state[0]), .B(n27558), .C(n16_adj_1834), 
         .D(char[101]), .Z(char_167__N_359[101])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_309.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_310 (.A(state[0]), .B(n27558), .C(n16_adj_1835), 
         .D(char[100]), .Z(char_167__N_359[100])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_310.init = 16'hdc50;
    LUT4 i19422_2_lut (.A(char[72]), .B(num[0]), .Z(n1209_adj_1763)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam i19422_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_adj_311 (.A(state[0]), .B(n27558), .C(n16_adj_1836), 
         .D(char[97]), .Z(char_167__N_359[97])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_311.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_312 (.A(state[0]), .B(n27558), .C(n16_adj_1837), 
         .D(char[96]), .Z(char_167__N_359[96])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_312.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_313 (.A(state[0]), .B(n27558), .C(n16_adj_1838), 
         .D(char[92]), .Z(char_167__N_359[92])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_313.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_314 (.A(state[0]), .B(n27558), .C(n16_adj_1839), 
         .D(char[89]), .Z(char_167__N_359[89])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_314.init = 16'hdc50;
    LUT4 i14971_2_lut (.A(n295[11]), .B(oled_dcn_N_982), .Z(n321[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam i14971_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_4_lut_adj_315 (.A(state[0]), .B(n27558), .C(n16_adj_1840), 
         .D(char[88]), .Z(char_167__N_359[88])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_315.init = 16'hdc50;
    LUT4 i14970_2_lut (.A(n295[12]), .B(oled_dcn_N_982), .Z(n321[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam i14970_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_4_lut_adj_316 (.A(state[0]), .B(n27558), .C(n16_adj_1841), 
         .D(char[86]), .Z(char_167__N_359[86])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_316.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_317 (.A(state[0]), .B(n27558), .C(n16_adj_1842), 
         .D(char[85]), .Z(char_167__N_359[85])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_317.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_318 (.A(state[0]), .B(n27558), .C(n16_adj_1843), 
         .D(char[84]), .Z(char_167__N_359[84])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_318.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_319 (.A(state[0]), .B(n27558), .C(n16_adj_1844), 
         .D(char[83]), .Z(char_167__N_359[83])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_319.init = 16'hdc50;
    PFUMX i24037 (.BLUT(n26770), .ALUT(n26769), .C0(state[2]), .Z(n26771));
    LUT4 shift_right_66_i1166_3_lut (.A(char[21]), .B(char[29]), .C(num[0]), 
         .Z(n1166)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1166_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_320 (.A(state[0]), .B(char[19]), .C(n16_adj_1845), 
         .D(n27558), .Z(char_167__N_359[19])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_320.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_321 (.A(state[0]), .B(n27558), .C(n16_adj_1846), 
         .D(char[81]), .Z(char_167__N_359[81])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_321.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_322 (.A(state[0]), .B(n27558), .C(n16_adj_1847), 
         .D(char[80]), .Z(char_167__N_359[80])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_322.init = 16'hdc50;
    LUT4 equal_18_i9_2_lut_rep_470_3_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[4]), 
         .C(n6_adj_1711), .D(cnt_main[2]), .Z(n27585)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/fpga/ds18b20/oled.v(88[8:12])
    defparam equal_18_i9_2_lut_rep_470_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_4_lut_4_lut_adj_323 (.A(state[0]), .B(n27558), .C(n16_adj_1848), 
         .D(char[78]), .Z(char_167__N_359[78])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_323.init = 16'hdc50;
    LUT4 i1_2_lut_2_lut_adj_324 (.A(cnt_main[1]), .B(char[27]), .Z(n10_c)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/fpga/ds18b20/oled.v(88[8:12])
    defparam i1_2_lut_2_lut_adj_324.init = 16'h4444;
    LUT4 shift_right_66_i1193_3_lut (.A(char[48]), .B(char[56]), .C(num[0]), 
         .Z(n1193)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1193_3_lut.init = 16'hcaca;
    LUT4 i33_4_lut_adj_325 (.A(char[19]), .B(char_167__N_690[19]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1845)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_325.init = 16'h0aca;
    LUT4 i1_4_lut_4_lut_adj_326 (.A(state[0]), .B(n27558), .C(n16_adj_1849), 
         .D(char[77]), .Z(char_167__N_359[77])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_326.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_327 (.A(state[0]), .B(n27558), .C(n16_adj_1850), 
         .D(char[76]), .Z(char_167__N_359[76])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_327.init = 16'hdc50;
    LUT4 i3569_2_lut_3_lut_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n5723)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam i3569_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_4_lut_adj_328 (.A(state[0]), .B(n27558), .C(n16_adj_1851), 
         .D(char[73]), .Z(char_167__N_359[73])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_328.init = 16'hdc50;
    LUT4 pwr_bdd_2_lut_24454_3_lut_4_lut (.A(cnt_scan[2]), .B(cnt_scan[3]), 
         .C(n27486), .D(n27660), .Z(n27487)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam pwr_bdd_2_lut_24454_3_lut_4_lut.init = 16'hf0f8;
    LUT4 i14969_2_lut (.A(n295[13]), .B(oled_dcn_N_982), .Z(n321[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam i14969_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_4_lut_adj_329 (.A(state[0]), .B(n27558), .C(n16_adj_1852), 
         .D(char[70]), .Z(char_167__N_359[70])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_329.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_330 (.A(state[0]), .B(n27558), .C(n16_adj_1853), 
         .D(char[68]), .Z(char_167__N_359[68])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_330.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_331 (.A(state[0]), .B(n27558), .C(n16_adj_1854), 
         .D(char[62]), .Z(char_167__N_359[62])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_331.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_332 (.A(state[0]), .B(n27558), .C(n16_adj_1855), 
         .D(char[61]), .Z(char_167__N_359[61])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_332.init = 16'hdc50;
    FD1P3AY oled_clk_311 (.D(n24690), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .Q(oled_clk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam oled_clk_311.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_333 (.A(n27674), .B(n27656), .C(char[38]), 
         .D(n18_adj_1709), .Z(char_167__N_690[38])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_333.init = 16'hffd0;
    LUT4 i14968_2_lut (.A(n295[14]), .B(oled_dcn_N_982), .Z(n321[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam i14968_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_543 (.A(cnt_scan[2]), .B(cnt_scan[3]), .Z(n27658)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam i1_2_lut_rep_543.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_adj_334 (.A(state[0]), .B(n27558), .C(n16_adj_1856), 
         .D(char[59]), .Z(char_167__N_359[59])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_334.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_335 (.A(state[0]), .B(n27558), .C(n16_adj_1857), 
         .D(char[56]), .Z(char_167__N_359[56])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_335.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_336 (.A(state[0]), .B(n27558), .C(n16_adj_1858), 
         .D(char[52]), .Z(char_167__N_359[52])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_336.init = 16'hdc50;
    LUT4 shift_right_66_i1150_3_lut (.A(char[5]), .B(char[13]), .C(num[0]), 
         .Z(n1150)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1150_3_lut.init = 16'hcaca;
    FD1P3AY oled_rst_309 (.D(n3210[0]), .SP(sys_clk_c_enable_199), .CK(sys_clk_c), 
            .Q(oled_rst_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=99 */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam oled_rst_309.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_337 (.A(n17_adj_1859), .B(char[19]), .C(n27610), 
         .D(n20), .Z(char_167__N_690[19])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_337.init = 16'heca0;
    LUT4 i37_3_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(\temp_ten[3] ), 
         .Z(n17_adj_1859)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;
    defparam i37_3_lut.init = 16'h6464;
    LUT4 i33_4_lut_adj_338 (.A(char[102]), .B(n25), .C(state[1]), .D(n17669), 
         .Z(n16_adj_1833)) /* synthesis lut_function=(!(A (C (D))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_338.init = 16'h0aba;
    LUT4 i1_4_lut_4_lut_adj_339 (.A(state[0]), .B(n27558), .C(n16_adj_1860), 
         .D(char[46]), .Z(char_167__N_359[46])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_339.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_340 (.A(state[0]), .B(n27558), .C(n16_adj_1861), 
         .D(char[43]), .Z(char_167__N_359[43])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_340.init = 16'hdc50;
    LUT4 i1_3_lut_4_lut_adj_341 (.A(n27674), .B(n27656), .C(char[41]), 
         .D(n18_adj_1709), .Z(char_167__N_690[41])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_341.init = 16'hffd0;
    LUT4 i14967_2_lut (.A(n295[15]), .B(oled_dcn_N_982), .Z(n321[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(109[19:29])
    defparam i14967_2_lut.init = 16'h2222;
    LUT4 i1_3_lut_4_lut_adj_342 (.A(n27674), .B(n27656), .C(char[42]), 
         .D(n18_adj_1862), .Z(char_167__N_690[42])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_342.init = 16'hffd0;
    LUT4 i1_4_lut_4_lut_adj_343 (.A(state[0]), .B(n27558), .C(n16_adj_1863), 
         .D(char[37]), .Z(char_167__N_359[37])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_343.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_344 (.A(state[0]), .B(n27558), .C(n16_adj_1864), 
         .D(char[35]), .Z(char_167__N_359[35])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_344.init = 16'hdc50;
    PFUMX i23318 (.BLUT(n25669), .ALUT(n25670), .C0(cnt_write[2]), .Z(n25673));
    LUT4 i1_4_lut_4_lut_adj_345 (.A(state[0]), .B(n27558), .C(n16_adj_1865), 
         .D(char[34]), .Z(char_167__N_359[34])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_345.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_346 (.A(state[0]), .B(n27558), .C(n16_adj_1866), 
         .D(char[32]), .Z(char_167__N_359[32])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_346.init = 16'hdc50;
    LUT4 num_2268_mux_6_i5_4_lut_4_lut (.A(state[0]), .B(n4_adj_1699), .C(state[3]), 
         .D(n37[4]), .Z(n47[4])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam num_2268_mux_6_i5_4_lut_4_lut.init = 16'hf404;
    LUT4 i1_4_lut_4_lut_adj_347 (.A(state[0]), .B(n27558), .C(n16_adj_1867), 
         .D(char[118]), .Z(char_167__N_359[118])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_347.init = 16'hdc50;
    LUT4 i33_4_lut_adj_348 (.A(char[124]), .B(state[1]), .C(n17669), .D(n25), 
         .Z(n16_adj_1816)) /* synthesis lut_function=(!(A (B (C))+!A ((C+(D))+!B))) */ ;
    defparam i33_4_lut_adj_348.init = 16'h2a2e;
    LUT4 i1_3_lut_4_lut_adj_349 (.A(n27674), .B(n27656), .C(char[43]), 
         .D(n18_adj_1709), .Z(char_167__N_690[43])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_349.init = 16'hffd0;
    LUT4 shift_right_66_i1177_3_lut (.A(char[32]), .B(char[40]), .C(num[0]), 
         .Z(n1177)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1177_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_350 (.A(n27674), .B(n27656), .C(char[46]), 
         .D(n18_adj_1862), .Z(char_167__N_690[46])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_350.init = 16'hffd0;
    LUT4 i1_3_lut_4_lut_adj_351 (.A(n27674), .B(n27656), .C(char[48]), 
         .D(n18_adj_1709), .Z(char_167__N_690[48])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_351.init = 16'hffd0;
    LUT4 i1_3_lut_4_lut_adj_352 (.A(n27674), .B(n27656), .C(char[51]), 
         .D(n18_adj_1709), .Z(char_167__N_690[51])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_352.init = 16'hffd0;
    LUT4 i1_4_lut_adj_353 (.A(state[0]), .B(char[24]), .C(n16_adj_1868), 
         .D(n27558), .Z(char_167__N_359[24])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_353.init = 16'hdc50;
    LUT4 i33_4_lut_adj_354 (.A(char[24]), .B(char_167__N_690[24]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1868)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_354.init = 16'h0aca;
    LUT4 i1_4_lut_adj_355 (.A(n17_adj_1869), .B(char[24]), .C(n27610), 
         .D(n9), .Z(char_167__N_690[24])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_355.init = 16'heca0;
    LUT4 i37_4_lut_adj_356 (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(n27540), 
         .D(time_hour_low[0]), .Z(n17_adj_1869)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;
    defparam i37_4_lut_adj_356.init = 16'h6420;
    LUT4 i1_3_lut_4_lut_adj_357 (.A(n27674), .B(n27656), .C(char[54]), 
         .D(n18_adj_1862), .Z(char_167__N_690[54])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_357.init = 16'hffd0;
    LUT4 i1_3_lut_4_lut_adj_358 (.A(n27674), .B(n27656), .C(char[58]), 
         .D(n18_adj_1862), .Z(char_167__N_690[58])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_358.init = 16'hffd0;
    LUT4 i1_3_lut_4_lut_adj_359 (.A(n27674), .B(n27656), .C(char[59]), 
         .D(n18_adj_1709), .Z(char_167__N_690[59])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_359.init = 16'hffd0;
    LUT4 i33_4_lut_adj_360 (.A(char[122]), .B(n25), .C(state[1]), .D(n17669), 
         .Z(n16_adj_1796)) /* synthesis lut_function=(!(A (C (D))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_360.init = 16'h0aba;
    LUT4 i1_3_lut_4_lut_adj_361 (.A(n27674), .B(n27656), .C(char[62]), 
         .D(n18_adj_1862), .Z(char_167__N_690[62])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_361.init = 16'hffd0;
    LUT4 i1_3_lut_4_lut_adj_362 (.A(n27674), .B(n27656), .C(char[72]), 
         .D(n18_adj_1862), .Z(char_167__N_690[72])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_362.init = 16'hffd0;
    LUT4 i23811_4_lut (.A(n17_adj_1729), .B(state[2]), .C(n22112), .D(n27670), 
         .Z(sys_clk_c_enable_169)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i23811_4_lut.init = 16'h0002;
    LUT4 i1_3_lut_4_lut_adj_363 (.A(n27674), .B(n27656), .C(char[73]), 
         .D(n18_adj_1709), .Z(char_167__N_690[73])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_363.init = 16'hffd0;
    LUT4 i1_3_lut_4_lut_adj_364 (.A(n27674), .B(n27656), .C(char[76]), 
         .D(n18_adj_1709), .Z(char_167__N_690[76])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_364.init = 16'hffd0;
    LUT4 num_2268_mux_6_i1_4_lut (.A(state[0]), .B(n37[0]), .C(state[3]), 
         .D(n27585), .Z(n47[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam num_2268_mux_6_i1_4_lut.init = 16'hc0c5;
    LUT4 i1_3_lut_4_lut_adj_365 (.A(n27674), .B(n27656), .C(char[78]), 
         .D(n18_adj_1862), .Z(char_167__N_690[78])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_365.init = 16'hffd0;
    LUT4 i33_4_lut_adj_366 (.A(char[118]), .B(n25), .C(state[1]), .D(n17669), 
         .Z(n16_adj_1867)) /* synthesis lut_function=(!(A (C (D))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_366.init = 16'h0aba;
    LUT4 i1_3_lut_4_lut_adj_367 (.A(n27674), .B(n27656), .C(char[80]), 
         .D(n18_adj_1709), .Z(char_167__N_690[80])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_367.init = 16'hffd0;
    LUT4 char_97__bdd_4_lut_23884 (.A(num[2]), .B(num[0]), .C(char[81]), 
         .D(char[89]), .Z(n26550)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;
    defparam char_97__bdd_4_lut_23884.init = 16'h5410;
    LUT4 i1_3_lut_4_lut_adj_368 (.A(n27674), .B(n27656), .C(char[83]), 
         .D(n18_adj_1709), .Z(char_167__N_690[83])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_368.init = 16'hffd0;
    LUT4 i1_3_lut_4_lut_adj_369 (.A(n27674), .B(n27656), .C(char[86]), 
         .D(n18_adj_1862), .Z(char_167__N_690[86])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_369.init = 16'hffd0;
    LUT4 i14820_2_lut_rep_427 (.A(n2132), .B(num[4]), .Z(n27542)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam i14820_2_lut_rep_427.init = 16'h2222;
    LUT4 i33_4_lut_adj_370 (.A(char[101]), .B(n25), .C(state[1]), .D(n17669), 
         .Z(n16_adj_1834)) /* synthesis lut_function=(!(A (C (D))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_370.init = 16'h0aba;
    LUT4 i1_3_lut_4_lut_adj_371 (.A(n27674), .B(n27656), .C(char[96]), 
         .D(n18_c), .Z(char_167__N_690[96])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_371.init = 16'hffd0;
    LUT4 char_97__bdd_4_lut (.A(char[97]), .B(num[2]), .C(num[0]), .D(char[73]), 
         .Z(n26551)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam char_97__bdd_4_lut.init = 16'h3808;
    LUT4 i3567_2_lut_3_lut_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n469[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam i3567_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 equal_18_i6_2_lut (.A(\cnt_main[0] ), .B(cnt_main[1]), .Z(n6_adj_1711)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/fpga/ds18b20/oled.v(88[8:12])
    defparam equal_18_i6_2_lut.init = 16'hbbbb;
    LUT4 i1_3_lut_4_lut_adj_372 (.A(n27674), .B(n27656), .C(char[97]), 
         .D(n18_adj_1709), .Z(char_167__N_690[97])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_372.init = 16'hffd0;
    L6MUX21 i23375 (.D0(n25728), .D1(n25729), .SD(num[3]), .Z(n2134));
    LUT4 i1_3_lut_4_lut_adj_373 (.A(n27674), .B(n27656), .C(char[100]), 
         .D(n18_adj_1862), .Z(char_167__N_690[100])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_373.init = 16'hffd0;
    LUT4 i33_4_lut_adj_374 (.A(char[100]), .B(char_167__N_690[100]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1835)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_374.init = 16'h0aca;
    LUT4 i4_4_lut_4_lut (.A(n2132), .B(num[4]), .C(n25415), .D(n7), 
         .Z(n21916)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam i4_4_lut_4_lut.init = 16'hfffd;
    LUT4 i1_4_lut_adj_375 (.A(n27667), .B(n25228), .C(n27669), .D(n4_adj_1870), 
         .Z(sys_clk_c_enable_62)) /* synthesis lut_function=(A (B)+!A !((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_375.init = 16'h8c88;
    LUT4 i33_4_lut_adj_376 (.A(char[98]), .B(char_167__N_690[98]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1801)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_376.init = 16'h0aca;
    LUT4 i1_4_lut_adj_377 (.A(n27623), .B(n16_adj_1698), .C(n17218), .D(char[98]), 
         .Z(char_167__N_690[98])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_377.init = 16'hcf0a;
    LUT4 i14949_2_lut (.A(cnt_main[2]), .B(\cnt_main[0] ), .Z(n17218)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14949_2_lut.init = 16'heeee;
    LUT4 i33_4_lut_adj_378 (.A(char[97]), .B(char_167__N_690[97]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1836)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_378.init = 16'h0aca;
    LUT4 i1_4_lut_adj_379 (.A(state[2]), .B(n27617), .C(n27554), .D(n75), 
         .Z(n4_adj_1870)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_379.init = 16'ha888;
    LUT4 shift_right_66_i1246_3_lut (.A(char[101]), .B(char[109]), .C(num[0]), 
         .Z(n1246)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1246_3_lut.init = 16'hcaca;
    LUT4 i33_4_lut_adj_380 (.A(char[96]), .B(char_167__N_690[96]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1837)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_380.init = 16'h0aca;
    LUT4 i1_4_lut_adj_381 (.A(state[0]), .B(char[18]), .C(n16_adj_1871), 
         .D(n27558), .Z(char_167__N_359[18])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_381.init = 16'hdc50;
    LUT4 i33_4_lut_adj_382 (.A(char[18]), .B(char_167__N_690[18]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1871)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_382.init = 16'h0aca;
    L6MUX21 i23402 (.D0(n25753), .D1(n25754), .SD(num[2]), .Z(n25757));
    LUT4 i23304_3_lut (.A(char[118]), .B(char[126]), .C(num[0]), .Z(n25659)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23304_3_lut.init = 16'hcaca;
    L6MUX21 i23403 (.D0(n25755), .D1(n27536), .SD(num[2]), .Z(n25758));
    LUT4 i33_4_lut_adj_383 (.A(char[94]), .B(char_167__N_690[94]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1825)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_383.init = 16'h0aca;
    L6MUX21 i23409 (.D0(n25760), .D1(n25761), .SD(num[2]), .Z(n25764));
    LUT4 i1_4_lut_adj_384 (.A(cnt_main[1]), .B(char[18]), .C(n4_adj_1759), 
         .D(n20_adj_1872), .Z(char_167__N_690[18])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_384.init = 16'hdc50;
    LUT4 i23303_3_lut (.A(char[102]), .B(char[110]), .C(num[0]), .Z(n25658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23303_3_lut.init = 16'hcaca;
    PFUMX i23410 (.BLUT(n25762), .ALUT(n25763), .C0(num[2]), .Z(n25765));
    LUT4 i1_4_lut_adj_385 (.A(n27626), .B(n16_adj_1698), .C(n17224), .D(char[94]), 
         .Z(char_167__N_690[94])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_385.init = 16'hcf0a;
    LUT4 i2_4_lut_adj_386 (.A(\cnt_main[0] ), .B(n27656), .C(cnt_main[2]), 
         .D(cnt_main[1]), .Z(n20_adj_1872)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+!(D))) */ ;
    defparam i2_4_lut_adj_386.init = 16'hecdd;
    LUT4 i33_4_lut_adj_387 (.A(char[93]), .B(state[1]), .C(n17669), .D(n25), 
         .Z(n16_adj_1831)) /* synthesis lut_function=(!(A (B (C))+!A ((C+(D))+!B))) */ ;
    defparam i33_4_lut_adj_387.init = 16'h2a2e;
    LUT4 i23302_3_lut (.A(char[86]), .B(char[94]), .C(num[0]), .Z(n25657)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23302_3_lut.init = 16'hcaca;
    LUT4 i23301_3_lut (.A(char[70]), .B(char[78]), .C(num[0]), .Z(n25656)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23301_3_lut.init = 16'hcaca;
    LUT4 shift_right_66_i1161_3_lut (.A(char[16]), .B(char[24]), .C(num[0]), 
         .Z(n1161)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1161_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_adj_388 (.A(n10), .B(n25286), .C(n27560), .D(n4), 
         .Z(n6)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_388.init = 16'hc800;
    LUT4 i33_4_lut_adj_389 (.A(char[92]), .B(char_167__N_690[92]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1838)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_389.init = 16'h0aca;
    LUT4 shift_right_66_i1145_3_lut (.A(char[0]), .B(char[8]), .C(num[0]), 
         .Z(n1145)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1145_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_adj_390 (.A(n10), .B(n11269), .C(n27561), .D(n15_adj_2), 
         .Z(n25231)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_390.init = 16'hc800;
    LUT4 i1_4_lut_adj_391 (.A(n27623), .B(n16_adj_1698), .C(n17218), .D(char[92]), 
         .Z(char_167__N_690[92])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_391.init = 16'hcf0a;
    LUT4 shift_right_66_i1259_3_lut (.A(char[114]), .B(char[122]), .C(num[0]), 
         .Z(n1259)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1259_3_lut.init = 16'hcaca;
    PFUMX i23319 (.BLUT(n25671), .ALUT(n25672), .C0(cnt_write[2]), .Z(n25674));
    LUT4 shift_right_66_i1243_3_lut (.A(char[98]), .B(char[106]), .C(num[0]), 
         .Z(n1243)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1243_3_lut.init = 16'hcaca;
    LUT4 i23364_3_lut (.A(n1961), .B(n2339), .C(cnt_scan[0]), .Z(n25719)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23364_3_lut.init = 16'hcaca;
    LUT4 i23473_3_lut (.A(n1243), .B(n1259), .C(num[1]), .Z(n25763)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23473_3_lut.init = 16'hcaca;
    LUT4 i19435_2_lut (.A(char[58]), .B(num[0]), .Z(n1195)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam i19435_2_lut.init = 16'h8888;
    PFUMX i25025 (.BLUT(n28716), .ALUT(n28714), .C0(state[3]), .Z(n28717));
    LUT4 i33_4_lut_adj_392 (.A(char[91]), .B(char_167__N_690[91]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1798)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_392.init = 16'h0aca;
    LUT4 i1_4_lut_adj_393 (.A(n27623), .B(n16_adj_1698), .C(n17218), .D(char[91]), 
         .Z(char_167__N_690[91])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_393.init = 16'hcf0a;
    LUT4 i1_4_lut_adj_394 (.A(state[0]), .B(char[17]), .C(n16_adj_1877), 
         .D(n27558), .Z(char_167__N_359[17])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_394.init = 16'hdc50;
    LUT4 shift_right_66_i1179_3_lut (.A(char[34]), .B(char[42]), .C(num[0]), 
         .Z(n1179)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1179_3_lut.init = 16'hcaca;
    LUT4 i33_4_lut_adj_395 (.A(char[17]), .B(char_167__N_690[17]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1877)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_395.init = 16'h0aca;
    LUT4 i1_4_lut_adj_396 (.A(char[17]), .B(n38_adj_1878), .C(n27653), 
         .D(n27656), .Z(char_167__N_690[17])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_396.init = 16'heeec;
    LUT4 n4_bdd_4_lut_24888 (.A(n4_adj_1755), .B(n10267), .C(state[1]), 
         .D(state[2]), .Z(n27192)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A (B+((D)+!C)))) */ ;
    defparam n4_bdd_4_lut_24888.init = 16'h0a30;
    LUT4 i33_4_lut_adj_397 (.A(char[90]), .B(char_167__N_690[90]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1824)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_397.init = 16'h0aca;
    LUT4 i1_4_lut_adj_398 (.A(n27626), .B(n16_adj_1698), .C(n17224), .D(char[90]), 
         .Z(char_167__N_690[90])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_398.init = 16'hcf0a;
    LUT4 i2_4_lut_adj_399 (.A(n27583), .B(cnt_init[0]), .C(n27752), .D(n27554), 
         .Z(n25114)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_4_lut_adj_399.init = 16'h0100;
    LUT4 i1_4_lut_adj_400 (.A(state[0]), .B(char[16]), .C(n16_adj_1879), 
         .D(n27558), .Z(char_167__N_359[16])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_400.init = 16'hdc50;
    LUT4 n13_bdd_2_lut_24424 (.A(\cnt_main[0] ), .B(time_min_low[3]), .Z(n27211)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n13_bdd_2_lut_24424.init = 16'h4444;
    LUT4 i33_4_lut_adj_401 (.A(char[16]), .B(char_167__N_690[16]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1879)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_401.init = 16'h0aca;
    LUT4 i1_4_lut_adj_402 (.A(n17_adj_1880), .B(char[16]), .C(n27626), 
         .D(n20_adj_1881), .Z(char_167__N_690[16])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_402.init = 16'heca0;
    LUT4 i37_3_lut_adj_403 (.A(cnt_main[1]), .B(\uart_data_120__N_1204[0] ), 
         .C(cnt_main[2]), .Z(n17_adj_1880)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i37_3_lut_adj_403.init = 16'h4a4a;
    LUT4 i33_4_lut_adj_404 (.A(char[89]), .B(char_167__N_690[89]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1839)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_404.init = 16'h0aca;
    LUT4 i1_4_lut_adj_405 (.A(n27623), .B(n16_adj_1698), .C(n17218), .D(char[89]), 
         .Z(char_167__N_690[89])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_405.init = 16'hcf0a;
    LUT4 i23355_3_lut (.A(n1963), .B(n2341), .C(cnt_scan[0]), .Z(n25710)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23355_3_lut.init = 16'hcaca;
    L6MUX21 i23395 (.D0(n25678), .D1(n27537), .SD(num[2]), .Z(n25750));
    L6MUX21 i23307 (.D0(n25660), .D1(n25661), .SD(num[2]), .Z(n25662));
    LUT4 i2_4_lut_adj_406 (.A(cnt_main[2]), .B(n27656), .C(\cnt_main[0] ), 
         .D(cnt_main[1]), .Z(n20_adj_1881)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C (D)+!C !(D)))) */ ;
    defparam i2_4_lut_adj_406.init = 16'hfccd;
    LUT4 i33_4_lut_adj_407 (.A(char[88]), .B(char_167__N_690[88]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1840)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_407.init = 16'h0aca;
    PFUMX i23998 (.BLUT(n26718), .ALUT(n26717), .C0(cnt_scan[3]), .Z(n26719));
    L6MUX21 i23360 (.D0(n25681), .D1(n25684), .SD(num[2]), .Z(n25715));
    LUT4 i1_4_lut_adj_408 (.A(n27626), .B(n16_adj_1698), .C(n17224), .D(char[88]), 
         .Z(char_167__N_690[88])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_408.init = 16'hcf0a;
    LUT4 i1_4_lut_adj_409 (.A(state[0]), .B(char[13]), .C(n16_adj_1882), 
         .D(n27558), .Z(char_167__N_359[13])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_409.init = 16'hdc50;
    LUT4 i33_4_lut_adj_410 (.A(char[13]), .B(n27613), .C(state[1]), .D(n25143), 
         .Z(n16_adj_1882)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i33_4_lut_adj_410.init = 16'h3a0a;
    LUT4 i1_4_lut_adj_411 (.A(\cnt_main[0] ), .B(char[13]), .C(n18_adj_1828), 
         .D(n21_adj_1793), .Z(n25143)) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (C+(D)))) */ ;
    defparam i1_4_lut_adj_411.init = 16'h8caf;
    LUT4 i33_4_lut_adj_412 (.A(char[86]), .B(char_167__N_690[86]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1841)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_412.init = 16'h0aca;
    LUT4 n832_bdd_2_lut_23904 (.A(n832), .B(cnt_scan[0]), .Z(n26581)) /* synthesis lut_function=(A (B)) */ ;
    defparam n832_bdd_2_lut_23904.init = 16'h8888;
    LUT4 i23354_3_lut (.A(n1207), .B(n1585), .C(cnt_scan[0]), .Z(n25709)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23354_3_lut.init = 16'hcaca;
    LUT4 i33_4_lut_adj_413 (.A(char[85]), .B(n25), .C(state[1]), .D(n17669), 
         .Z(n16_adj_1842)) /* synthesis lut_function=(!(A (C (D))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_413.init = 16'h0aba;
    LUT4 n25688_bdd_3_lut (.A(n25688), .B(n25689), .C(num[1]), .Z(n27222)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n25688_bdd_3_lut.init = 16'hcaca;
    LUT4 i3502_3_lut_4_lut (.A(cnt_main[2]), .B(n27653), .C(cnt_main[3]), 
         .D(cnt_main[4]), .Z(n1[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/fpga/ds18b20/oled.v(78[24:39])
    defparam i3502_3_lut_4_lut.init = 16'h7f80;
    LUT4 i10091_3_lut (.A(sys_clk_c_enable_170), .B(n11_adj_1809), .C(n2420), 
         .Z(n12386)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam i10091_3_lut.init = 16'ha8a8;
    L6MUX21 i23320 (.D0(n25673), .D1(n25674), .SD(cnt_write[3]), .Z(oled_dat_N_1004));
    LUT4 i33_4_lut_adj_414 (.A(char[84]), .B(char_167__N_690[84]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1843)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_414.init = 16'h0aca;
    LUT4 i1_4_lut_adj_415 (.A(n27626), .B(n16_adj_1698), .C(n17224), .D(char[84]), 
         .Z(char_167__N_690[84])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_415.init = 16'hcf0a;
    LUT4 i33_4_lut_adj_416 (.A(char[83]), .B(char_167__N_690[83]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1844)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_416.init = 16'h0aca;
    LUT4 i23349_3_lut (.A(n1966), .B(n2344), .C(cnt_scan[0]), .Z(n25704)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23349_3_lut.init = 16'hcaca;
    LUT4 i33_4_lut_adj_417 (.A(char[81]), .B(char_167__N_690[81]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1846)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_417.init = 16'h0aca;
    LUT4 i1_4_lut_adj_418 (.A(n27626), .B(n16_adj_1698), .C(n17224), .D(char[81]), 
         .Z(char_167__N_690[81])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_418.init = 16'hcf0a;
    LUT4 i23348_3_lut (.A(n1210), .B(n1588), .C(cnt_scan[0]), .Z(n25703)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23348_3_lut.init = 16'hcaca;
    LUT4 i33_4_lut_adj_419 (.A(char[80]), .B(char_167__N_690[80]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1847)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_419.init = 16'h0aca;
    LUT4 i23346_3_lut (.A(n1967), .B(n2345), .C(cnt_scan[0]), .Z(n25701)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23346_3_lut.init = 16'hcaca;
    LUT4 i23345_3_lut (.A(n1211), .B(n1589), .C(cnt_scan[0]), .Z(n25700)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23345_3_lut.init = 16'hcaca;
    LUT4 i33_4_lut_adj_420 (.A(char[78]), .B(char_167__N_690[78]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1848)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_420.init = 16'h0aca;
    LUT4 i33_4_lut_adj_421 (.A(char[77]), .B(n25), .C(state[1]), .D(n17669), 
         .Z(n16_adj_1849)) /* synthesis lut_function=(!(A (C (D))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_421.init = 16'h0aba;
    LUT4 i33_4_lut_adj_422 (.A(char[76]), .B(char_167__N_690[76]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1850)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_422.init = 16'h0aca;
    LUT4 i33_4_lut_adj_423 (.A(char[73]), .B(char_167__N_690[73]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1851)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_423.init = 16'h0aca;
    LUT4 i33_4_lut_adj_424 (.A(char[72]), .B(char_167__N_690[72]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1832)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_424.init = 16'h0aca;
    LUT4 i33_4_lut_adj_425 (.A(char[70]), .B(char_167__N_690[70]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1852)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_425.init = 16'h0aca;
    LUT4 i1_4_lut_adj_426 (.A(cnt_scan[4]), .B(n57_adj_1746), .C(n27746), 
         .D(cnt_scan[3]), .Z(n64_adj_1740)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_426.init = 16'h5044;
    LUT4 i1_4_lut_adj_427 (.A(n27626), .B(n16_adj_1698), .C(n17224), .D(char[70]), 
         .Z(char_167__N_690[70])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_427.init = 16'hcf0a;
    LUT4 i33_4_lut_adj_428 (.A(char[69]), .B(n25), .C(state[1]), .D(n17669), 
         .Z(n16_adj_1830)) /* synthesis lut_function=(!(A (C (D))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_428.init = 16'h0aba;
    LUT4 i33_4_lut_adj_429 (.A(char[68]), .B(char_167__N_690[68]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1853)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_429.init = 16'h0aca;
    LUT4 i1_4_lut_adj_430 (.A(n27626), .B(n16_adj_1698), .C(n17224), .D(char[68]), 
         .Z(char_167__N_690[68])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_430.init = 16'hcf0a;
    PFUMX i23361 (.BLUT(n1540), .ALUT(n1572), .C0(num[2]), .Z(n25716));
    LUT4 n8_bdd_4_lut (.A(n27627), .B(n27574), .C(\cnt_main[0] ), .D(cnt_main[1]), 
         .Z(x_ph_7__N_658[2])) /* synthesis lut_function=(!(A+(B (C+!(D))+!B ((D)+!C)))) */ ;
    defparam n8_bdd_4_lut.init = 16'h0410;
    PFUMX i25092 (.BLUT(n28854), .ALUT(n28855), .C0(cnt_scan[1]), .Z(n28856));
    LUT4 i33_4_lut_adj_431 (.A(char[66]), .B(char_167__N_690[66]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1802)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_431.init = 16'h0aca;
    PFUMX i24897 (.BLUT(n28517), .ALUT(n28515), .C0(cnt_scan[3]), .Z(n28518));
    LUT4 i1_4_lut_adj_432 (.A(n27626), .B(n16_adj_1698), .C(n17224), .D(char[66]), 
         .Z(char_167__N_690[66])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_432.init = 16'hcf0a;
    PFUMX i24895 (.BLUT(n28513), .ALUT(n28512), .C0(cnt_scan[1]), .Z(n28514));
    PFUMX i23996 (.BLUT(n26715), .ALUT(n26714), .C0(cnt_scan[1]), .Z(n26716));
    LUT4 i33_4_lut_adj_433 (.A(char[62]), .B(char_167__N_690[62]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1854)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_433.init = 16'h0aca;
    LUT4 i33_4_lut_adj_434 (.A(char[61]), .B(char_167__N_690[61]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1855)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_434.init = 16'h0aca;
    LUT4 i1_4_lut_adj_435 (.A(state[0]), .B(char[11]), .C(n16_adj_1883), 
         .D(n27558), .Z(char_167__N_359[11])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_435.init = 16'hdc50;
    L6MUX21 i23373 (.D0(n25724), .D1(n25725), .SD(num[2]), .Z(n25728));
    L6MUX21 i23374 (.D0(n25726), .D1(n27535), .SD(num[2]), .Z(n25729));
    LUT4 i33_4_lut_adj_436 (.A(char[60]), .B(char_167__N_690[60]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1823)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_436.init = 16'h0aca;
    LUT4 i1_4_lut_adj_437 (.A(n27626), .B(n16_adj_1698), .C(n17224), .D(char[60]), 
         .Z(char_167__N_690[60])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_437.init = 16'hcf0a;
    LUT4 i33_4_lut_adj_438 (.A(char[59]), .B(char_167__N_690[59]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1856)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_438.init = 16'h0aca;
    PFUMX i24870 (.BLUT(n28459), .ALUT(n28458), .C0(state[5]), .Z(n28460));
    LUT4 i33_4_lut_adj_439 (.A(char[58]), .B(char_167__N_690[58]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1822)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_439.init = 16'h0aca;
    PFUMX i23990 (.BLUT(n26706), .ALUT(n26705), .C0(cnt_scan[3]), .Z(n26707));
    LUT4 i33_4_lut_adj_440 (.A(char[56]), .B(char_167__N_690[56]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1857)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_440.init = 16'h0aca;
    PFUMX i23323 (.BLUT(n25676), .ALUT(n25677), .C0(num[1]), .Z(n25678));
    LUT4 i1_4_lut_adj_441 (.A(n27626), .B(n16_adj_1698), .C(n17224), .D(char[56]), 
         .Z(char_167__N_690[56])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_441.init = 16'hcf0a;
    LUT4 shift_right_66_i1163_3_lut (.A(char[18]), .B(char[26]), .C(num[0]), 
         .Z(n1163)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1163_3_lut.init = 16'hcaca;
    LUT4 i33_4_lut_adj_442 (.A(char[54]), .B(char_167__N_690[54]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1818)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_442.init = 16'h0aca;
    LUT4 i33_4_lut_adj_443 (.A(char[11]), .B(char_167__N_690[11]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1883)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_443.init = 16'h0aca;
    LUT4 i33_4_lut_adj_444 (.A(char[53]), .B(n25), .C(state[1]), .D(n17669), 
         .Z(n16_adj_1815)) /* synthesis lut_function=(!(A (C (D))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_444.init = 16'h0aba;
    LUT4 i33_4_lut_adj_445 (.A(char[52]), .B(char_167__N_690[52]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1858)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_445.init = 16'h0aca;
    LUT4 i1_4_lut_adj_446 (.A(n27626), .B(n16_adj_1698), .C(n17224), .D(char[52]), 
         .Z(char_167__N_690[52])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_446.init = 16'hcf0a;
    LUT4 i45_4_lut_4_lut (.A(cnt_main[1]), .B(char[17]), .C(cnt_main[2]), 
         .D(n27623), .Z(n24_adj_1884)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(88[8:12])
    defparam i45_4_lut_4_lut.init = 16'hf404;
    LUT4 i2_4_lut_adj_447 (.A(n27654), .B(n27656), .C(n27653), .D(cnt_main[2]), 
         .Z(n9)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C+!(D)))) */ ;
    defparam i2_4_lut_adj_447.init = 16'hfcdd;
    LUT4 i33_4_lut_adj_448 (.A(char[51]), .B(char_167__N_690[51]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1814)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_448.init = 16'h0aca;
    LUT4 i1_4_lut_adj_449 (.A(n17_adj_1885), .B(char[11]), .C(n27610), 
         .D(n25), .Z(char_167__N_690[11])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_449.init = 16'heca0;
    LUT4 i33_4_lut_adj_450 (.A(char[49]), .B(char_167__N_690[49]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1799)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_450.init = 16'h0aca;
    LUT4 i1_4_lut_adj_451 (.A(n27626), .B(n16_adj_1698), .C(n17224), .D(char[49]), 
         .Z(char_167__N_690[49])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_451.init = 16'hcf0a;
    LUT4 i3589_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n2398[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/oled.v(143[25:41])
    defparam i3589_2_lut.init = 16'h6666;
    LUT4 i33_4_lut_adj_452 (.A(char[48]), .B(char_167__N_690[48]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1790)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_452.init = 16'h0aca;
    LUT4 i33_4_lut_adj_453 (.A(char[46]), .B(char_167__N_690[46]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1860)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_453.init = 16'h0aca;
    LUT4 i33_4_lut_adj_454 (.A(char[45]), .B(n25), .C(state[1]), .D(n17669), 
         .Z(n16_adj_1812)) /* synthesis lut_function=(!(A (C (D))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_454.init = 16'h0aba;
    LUT4 i2_3_lut_4_lut_then_4_lut (.A(cnt_scan[2]), .B(cnt_scan[3]), .C(cnt_scan[4]), 
         .D(cnt_scan[0]), .Z(n27757)) /* synthesis lut_function=(A (B+(C))+!A (B (C)+!B (C+(D)))) */ ;   // c:/fpga/ds18b20/oled.v(50[32:40])
    defparam i2_3_lut_4_lut_then_4_lut.init = 16'hf9f8;
    LUT4 i33_4_lut_adj_455 (.A(char[43]), .B(char_167__N_690[43]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1861)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_455.init = 16'h0aca;
    PFUMX i23987 (.BLUT(n26703), .ALUT(n25719), .C0(cnt_scan[1]), .Z(n26704));
    LUT4 i37_3_lut_adj_456 (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(time_min_high[3]), 
         .Z(n17_adj_1885)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;
    defparam i37_3_lut_adj_456.init = 16'h6262;
    LUT4 shift_right_66_i1147_3_lut (.A(char[2]), .B(char[10]), .C(num[0]), 
         .Z(n1147)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1147_3_lut.init = 16'hcaca;
    LUT4 i33_4_lut_adj_457 (.A(char[42]), .B(char_167__N_690[42]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1797)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_457.init = 16'h0aca;
    LUT4 i33_4_lut_adj_458 (.A(char[41]), .B(char_167__N_690[41]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1808)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_458.init = 16'h0aca;
    LUT4 i2_3_lut_4_lut_else_4_lut (.A(cnt_scan[2]), .B(cnt_scan[3]), .C(cnt_scan[4]), 
         .Z(n27756)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/fpga/ds18b20/oled.v(50[32:40])
    defparam i2_3_lut_4_lut_else_4_lut.init = 16'hf8f8;
    PFUMX i23326 (.BLUT(n25679), .ALUT(n25680), .C0(num[1]), .Z(n25681));
    LUT4 i33_4_lut_adj_459 (.A(char[40]), .B(char_167__N_690[40]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1806)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_459.init = 16'h0aca;
    LUT4 i1_4_lut_adj_460 (.A(n27626), .B(n16_adj_1698), .C(n17224), .D(char[40]), 
         .Z(char_167__N_690[40])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_460.init = 16'hcf0a;
    LUT4 i33_4_lut_adj_461 (.A(char[38]), .B(char_167__N_690[38]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1829)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_461.init = 16'h0aca;
    LUT4 i33_4_lut_adj_462 (.A(char[37]), .B(state[1]), .C(n17669), .D(n25), 
         .Z(n16_adj_1863)) /* synthesis lut_function=(!(A (B (C))+!A ((C+(D))+!B))) */ ;
    defparam i33_4_lut_adj_462.init = 16'h2a2e;
    LUT4 i33_4_lut_adj_463 (.A(char[36]), .B(char_167__N_690[36]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1804)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_463.init = 16'h0aca;
    LUT4 i1_4_lut_adj_464 (.A(n27626), .B(n16_adj_1698), .C(n17224), .D(char[36]), 
         .Z(char_167__N_690[36])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_464.init = 16'hcf0a;
    LUT4 i33_4_lut_adj_465 (.A(char[35]), .B(char_167__N_690[35]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1864)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_465.init = 16'h0aca;
    LUT4 i1_4_lut_adj_466 (.A(n17_adj_1693), .B(char[35]), .C(n27676), 
         .D(n20_adj_1886), .Z(char_167__N_690[35])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_466.init = 16'heca0;
    LUT4 i33_4_lut_adj_467 (.A(char[34]), .B(char_167__N_690[34]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1865)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_467.init = 16'h0aca;
    LUT4 i1_4_lut_adj_468 (.A(n21), .B(char[34]), .C(n27676), .D(n27625), 
         .Z(char_167__N_690[34])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_468.init = 16'heca0;
    LUT4 n26585_bdd_2_lut (.A(n26585), .B(cnt_scan[4]), .Z(n26586)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n26585_bdd_2_lut.init = 16'h2222;
    PFUMX i24482 (.BLUT(n27744), .ALUT(n27745), .C0(cnt_scan[1]), .Z(n27746));
    LUT4 i33_4_lut_adj_469 (.A(char[33]), .B(char_167__N_690[33]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1789)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_469.init = 16'h0aca;
    PFUMX i23329 (.BLUT(n25682), .ALUT(n25683), .C0(num[1]), .Z(n25684));
    LUT4 i1_4_lut_adj_470 (.A(n17), .B(char[33]), .C(n27676), .D(n20_adj_1886), 
         .Z(char_167__N_690[33])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_470.init = 16'heca0;
    LUT4 i1_4_lut_adj_471 (.A(state[0]), .B(char[10]), .C(n16_adj_1887), 
         .D(n27558), .Z(char_167__N_359[10])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_471.init = 16'hdc50;
    LUT4 i3538_3_lut_4_lut (.A(cnt_init[2]), .B(n27702), .C(cnt_init[3]), 
         .D(cnt_init[4]), .Z(n259[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/fpga/ds18b20/oled.v(100[49:64])
    defparam i3538_3_lut_4_lut.init = 16'h7f80;
    LUT4 i33_4_lut_adj_472 (.A(char[32]), .B(char_167__N_690[32]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1866)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_472.init = 16'h0aca;
    LUT4 i33_4_lut_adj_473 (.A(char[10]), .B(char_167__N_690[10]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1887)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_473.init = 16'h0aca;
    LUT4 i1_4_lut_adj_474 (.A(n21_adj_1691), .B(char[32]), .C(n27676), 
         .D(n27625), .Z(char_167__N_690[32])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_474.init = 16'heca0;
    LUT4 i1_4_lut_adj_475 (.A(n17_adj_1888), .B(char[10]), .C(n27610), 
         .D(n25), .Z(char_167__N_690[10])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_475.init = 16'heca0;
    LUT4 i37_3_lut_adj_476 (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(time_min_high[2]), 
         .Z(n17_adj_1888)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;
    defparam i37_3_lut_adj_476.init = 16'h6262;
    LUT4 i1_3_lut_rep_443_4_lut (.A(state[2]), .B(n27619), .C(state[0]), 
         .D(state[1]), .Z(n27558)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i1_3_lut_rep_443_4_lut.init = 16'hfeee;
    LUT4 shift_right_66_i1198_3_lut (.A(char[53]), .B(char[61]), .C(num[0]), 
         .Z(n1198)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1198_3_lut.init = 16'hcaca;
    LUT4 num_2268_mux_6_i3_4_lut (.A(x_ph_7__N_658[2]), .B(n37[2]), .C(state[3]), 
         .D(state[0]), .Z(n47[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(80[7] 96[14])
    defparam num_2268_mux_6_i3_4_lut.init = 16'hc0ca;
    LUT4 n8_bdd_4_lut_adj_477 (.A(n27622), .B(state[1]), .C(n27612), .D(oled_dcn_N_982), 
         .Z(n27413)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;
    defparam n8_bdd_4_lut_adj_477.init = 16'hc444;
    LUT4 i1_4_lut_adj_478 (.A(state[0]), .B(char[9]), .C(n16_adj_1889), 
         .D(n27558), .Z(char_167__N_359[9])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_478.init = 16'hdc50;
    LUT4 n833_bdd_2_lut_23909 (.A(n833), .B(cnt_scan[0]), .Z(n26588)) /* synthesis lut_function=(A (B)) */ ;
    defparam n833_bdd_2_lut_23909.init = 16'h8888;
    LUT4 shift_right_66_i1182_3_lut (.A(char[37]), .B(char[45]), .C(num[0]), 
         .Z(n1182)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam shift_right_66_i1182_3_lut.init = 16'hcaca;
    LUT4 i33_4_lut_adj_479 (.A(char[9]), .B(char_167__N_690[9]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1889)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_479.init = 16'h0aca;
    LUT4 i1_4_lut_adj_480 (.A(n17_adj_1890), .B(char[9]), .C(n27610), 
         .D(n25), .Z(char_167__N_690[9])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_480.init = 16'heca0;
    LUT4 i2_3_lut_rep_460_4_lut (.A(state[2]), .B(n27619), .C(state[1]), 
         .D(state[0]), .Z(n27575)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_460_4_lut.init = 16'hffef;
    LUT4 i37_3_lut_adj_481 (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(time_min_high[1]), 
         .Z(n17_adj_1890)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;
    defparam i37_3_lut_adj_481.init = 16'h6262;
    LUT4 i1_4_lut_adj_482 (.A(state[0]), .B(y_p[0]), .C(n16_adj_1891), 
         .D(n27558), .Z(y_p_7__N_333[0])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_482.init = 16'hdc50;
    LUT4 i33_4_lut_adj_483 (.A(y_p[0]), .B(y_p_7__N_650[0]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1891)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_483.init = 16'h0aca;
    LUT4 i2_3_lut_adj_484 (.A(cnt_main[2]), .B(n4_adj_1692), .C(n13), 
         .Z(y_p_7__N_650[0])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i2_3_lut_adj_484.init = 16'hecec;
    LUT4 i14519_2_lut_rep_542 (.A(state[3]), .B(state[2]), .Z(n27657)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14519_2_lut_rep_542.init = 16'heeee;
    LUT4 i30_4_lut (.A(\cnt_main[0] ), .B(y_p[0]), .C(cnt_main[1]), .D(n27676), 
         .Z(n13)) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;
    defparam i30_4_lut.init = 16'h8580;
    LUT4 cnt_main_0__bdd_4_lut_24625 (.A(\cnt_main[0] ), .B(oled_update), 
         .C(cnt_main[2]), .D(cnt_main[1]), .Z(n27415)) /* synthesis lut_function=(A (B (C (D)))+!A (B+!(C))) */ ;
    defparam cnt_main_0__bdd_4_lut_24625.init = 16'hc545;
    LUT4 i1_4_lut_adj_485 (.A(state[0]), .B(char[0]), .C(n16_adj_1892), 
         .D(n27558), .Z(char_167__N_359[0])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_485.init = 16'hdc50;
    LUT4 i33_4_lut_adj_486 (.A(char[0]), .B(char_167__N_690[0]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1892)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_486.init = 16'h0aca;
    LUT4 i1_4_lut_adj_487 (.A(n17_adj_1893), .B(char[0]), .C(n27610), 
         .D(n9), .Z(char_167__N_690[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_487.init = 16'heca0;
    LUT4 i37_4_lut_adj_488 (.A(\cnt_main[0] ), .B(cnt_main[1]), .C(\temp_unit[0] ), 
         .D(time_min_low[0]), .Z(n17_adj_1893)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;
    defparam i37_4_lut_adj_488.init = 16'h6420;
    LUT4 i1_4_lut_adj_489 (.A(n24_adj_1894), .B(char_reg[0]), .C(n27616), 
         .D(n27_adj_1800), .Z(char_reg_7__N_535[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_489.init = 16'hce0a;
    LUT4 i2_4_lut_adj_490 (.A(n27615), .B(n27662), .C(n21_adj_1803), .D(state[3]), 
         .Z(n27_adj_1800)) /* synthesis lut_function=(A+(B (C+(D))+!B (C+!(D)))) */ ;
    defparam i2_4_lut_adj_490.init = 16'hfefb;
    LUT4 i1_2_lut_adj_491 (.A(state[2]), .B(state[0]), .Z(n21_adj_1803)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_491.init = 16'h8888;
    LUT4 i1_4_lut_adj_492 (.A(n24_adj_1708), .B(state_back[0]), .C(n27616), 
         .D(n27_adj_1800), .Z(state_back_5__N_617[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_492.init = 16'hce0a;
    LUT4 i4_4_lut (.A(state[0]), .B(n25587), .C(n12_adj_1895), .D(state[4]), 
         .Z(sys_clk_c_enable_5)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i4_4_lut.init = 16'h1020;
    LUT4 i23_4_lut (.A(state[4]), .B(state[0]), .C(n27582), .D(n25119), 
         .Z(n12_adj_1895)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i23_4_lut.init = 16'hcac0;
    LUT4 i3_4_lut_adj_493 (.A(cnt_write[3]), .B(n25809), .C(cnt_write[2]), 
         .D(cnt_write[1]), .Z(n25119)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i3_4_lut_adj_493.init = 16'h0001;
    LUT4 i23601_2_lut (.A(oled_csn_N_966), .B(cnt_write[0]), .Z(n25809)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i23601_2_lut.init = 16'h6666;
    LUT4 i11_4_lut (.A(state[4]), .B(state[0]), .C(n27582), .D(oled_csn_N_966), 
         .Z(n24434)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(52[13:18])
    defparam i11_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_adj_494 (.A(cnt_scan[4]), .B(n26707), .Z(n64_adj_1742)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_494.init = 16'h4444;
    LUT4 i1_4_lut_adj_495 (.A(n3318), .B(n4200), .C(n12314), .D(n27581), 
         .Z(sys_clk_c_enable_6)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_495.init = 16'h0a88;
    LUT4 i1_4_lut_adj_496 (.A(state[2]), .B(n27584), .C(n19), .D(n16_adj_1724), 
         .Z(n6_adj_1694)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_496.init = 16'haaa8;
    LUT4 i1_4_lut_adj_497 (.A(cnt_scan[4]), .B(cnt_scan[2]), .C(n27660), 
         .D(cnt_scan[3]), .Z(n25389)) /* synthesis lut_function=(A+(B (C+!(D))+!B (D))) */ ;
    defparam i1_4_lut_adj_497.init = 16'hfbee;
    LUT4 i22_3_lut_4_lut (.A(state[0]), .B(n27613), .C(state[1]), .D(n10_adj_1762), 
         .Z(n24690)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i22_3_lut_4_lut.init = 16'hef02;
    LUT4 n26592_bdd_2_lut (.A(n26592), .B(cnt_scan[4]), .Z(n26593)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n26592_bdd_2_lut.init = 16'h2222;
    LUT4 i1_3_lut_4_lut_adj_498 (.A(cnt_init[0]), .B(n27622), .C(n27611), 
         .D(num_delay[5]), .Z(n4_adj_1783)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;
    defparam i1_3_lut_4_lut_adj_498.init = 16'hf222;
    LUT4 i1_4_lut_adj_499 (.A(n21803), .B(n25269), .C(state[0]), .D(n27582), 
         .Z(sys_clk_c_enable_197)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_499.init = 16'hc088;
    LUT4 i2_3_lut_adj_500 (.A(oled_csn_N_966), .B(state[4]), .C(cnt_write[0]), 
         .Z(n21803)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut_adj_500.init = 16'h4040;
    LUT4 i2_3_lut_4_lut_adj_501 (.A(state[3]), .B(n27668), .C(state[5]), 
         .D(state[4]), .Z(n11_adj_1809)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/fpga/ds18b20/oled.v(166[5:10])
    defparam i2_3_lut_4_lut_adj_501.init = 16'hffef;
    LUT4 i1_3_lut_adj_502 (.A(state[4]), .B(oled_dat_N_1004), .C(n27582), 
         .Z(n25138)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_3_lut_adj_502.init = 16'h0808;
    LUT4 i1_4_lut_adj_503 (.A(state[1]), .B(n27740), .C(n25423), .D(state[5]), 
         .Z(n3318)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_503.init = 16'hcdce;
    LUT4 n2420_bdd_3_lut_24455 (.A(n2420), .B(state[4]), .C(state[5]), 
         .Z(n27488)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam n2420_bdd_3_lut_24455.init = 16'hefef;
    LUT4 i1_4_lut_adj_504 (.A(n26636), .B(n25269), .C(state[0]), .D(n27582), 
         .Z(sys_clk_c_enable_198)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_504.init = 16'hc088;
    LUT4 i1_4_lut_adj_505 (.A(state[0]), .B(char[27]), .C(n16_adj_1896), 
         .D(n27558), .Z(char_167__N_359[27])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_505.init = 16'hdc50;
    LUT4 i2_3_lut_4_lut_adj_506 (.A(state[3]), .B(n27668), .C(state[5]), 
         .D(state[4]), .Z(n11)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/fpga/ds18b20/oled.v(166[5:10])
    defparam i2_3_lut_4_lut_adj_506.init = 16'hfeff;
    LUT4 i1_3_lut_4_lut_adj_507 (.A(cnt_main[2]), .B(n27646), .C(n21_adj_1897), 
         .D(char[112]), .Z(char_167__N_690[112])) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_507.init = 16'hf444;
    LUT4 i1_3_lut_4_lut_adj_508 (.A(cnt_main[2]), .B(n27646), .C(n21_adj_1897), 
         .D(char[106]), .Z(char_167__N_690[106])) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_508.init = 16'hf444;
    LUT4 i1_4_lut_adj_509 (.A(state[0]), .B(char[25]), .C(n16_adj_1898), 
         .D(n27558), .Z(char_167__N_359[25])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_509.init = 16'hdc50;
    LUT4 i33_4_lut_adj_510 (.A(char[27]), .B(char_167__N_690[27]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1896)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_510.init = 16'h0aca;
    LUT4 i3483_2_lut_rep_538 (.A(cnt_main[1]), .B(\cnt_main[0] ), .Z(n27653)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/oled.v(78[24:39])
    defparam i3483_2_lut_rep_538.init = 16'h8888;
    LUT4 mux_1533_i1_4_lut (.A(n4200), .B(n5), .C(n27581), .D(n4_adj_1787), 
         .Z(n3210[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(63[4] 172[11])
    defparam mux_1533_i1_4_lut.init = 16'hca0a;
    LUT4 i3_4_lut_adj_511 (.A(n27672), .B(state[2]), .C(cnt_init[0]), 
         .D(cnt_init[2]), .Z(n5)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut_adj_511.init = 16'h0004;
    LUT4 i1_4_lut_adj_512 (.A(\cnt_main[0] ), .B(char[27]), .C(n27531), 
         .D(n16_adj_1698), .Z(char_167__N_690[27])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_512.init = 16'hdc50;
    LUT4 i36_3_lut_3_lut (.A(cnt_main[1]), .B(\cnt_main[0] ), .C(cnt_main[2]), 
         .Z(n16_adj_1758)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // c:/fpga/ds18b20/oled.v(78[24:39])
    defparam i36_3_lut_3_lut.init = 16'h3838;
    LUT4 i1_3_lut_4_lut_adj_513 (.A(cnt_main[2]), .B(n27646), .C(n21_adj_1897), 
         .D(char[61]), .Z(char_167__N_690[61])) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_513.init = 16'hf444;
    LUT4 i33_4_lut_adj_514 (.A(char[25]), .B(char_167__N_690[25]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1898)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_514.init = 16'h0aca;
    LUT4 i3495_2_lut_3_lut_4_lut (.A(cnt_main[1]), .B(\cnt_main[0] ), .C(cnt_main[3]), 
         .D(cnt_main[2]), .Z(n1[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/oled.v(78[24:39])
    defparam i3495_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2_4_lut_4_lut_adj_515 (.A(cnt_main[1]), .B(\cnt_main[0] ), .C(cnt_main[2]), 
         .D(n27656), .Z(n20_adj_1886)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A ((D)+!C)) */ ;   // c:/fpga/ds18b20/oled.v(78[24:39])
    defparam i2_4_lut_4_lut_adj_515.init = 16'hff85;
    LUT4 i1_2_lut_2_lut_adj_516 (.A(cnt_main[1]), .B(char[8]), .Z(n10_adj_1713)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/fpga/ds18b20/oled.v(88[8:12])
    defparam i1_2_lut_2_lut_adj_516.init = 16'h4444;
    LUT4 i1_4_lut_adj_517 (.A(n17_adj_1754), .B(char[25]), .C(n27610), 
         .D(n9), .Z(char_167__N_690[25])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_517.init = 16'heca0;
    LUT4 i23648_4_lut (.A(state[0]), .B(num_delay[0]), .C(n24_adj_1899), 
         .D(n27), .Z(num_delay_15__N_563[0])) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (C+(D)))) */ ;
    defparam i23648_4_lut.init = 16'h8caf;
    LUT4 i41_4_lut_adj_518 (.A(num_delay[0]), .B(n25299), .C(state[2]), 
         .D(n25141), .Z(n24_adj_1899)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i41_4_lut_adj_518.init = 16'h3505;
    LUT4 i1_4_lut_adj_519 (.A(cnt_init[0]), .B(num_delay[0]), .C(n15_adj_1900), 
         .D(n27611), .Z(n25141)) /* synthesis lut_function=(!(A (B (D))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_519.init = 16'h23af;
    LUT4 i1_4_lut_adj_520 (.A(num_delay[0]), .B(n27673), .C(n27612), .D(oled_dcn_N_982), 
         .Z(n15_adj_1900)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_adj_520.init = 16'ha8f8;
    LUT4 i15085_3_lut_4_lut (.A(cnt_main[1]), .B(\cnt_main[0] ), .C(n5370), 
         .D(cnt_main[2]), .Z(cnt_main_4__N_630[2])) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+(D))) */ ;   // c:/fpga/ds18b20/oled.v(78[24:39])
    defparam i15085_3_lut_4_lut.init = 16'hf7f8;
    LUT4 i1_4_lut_adj_521 (.A(n19_adj_1901), .B(cnt[4]), .C(n20_adj_1902), 
         .D(n4_adj_3), .Z(oled_dcn_N_982)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_521.init = 16'hfefa;
    LUT4 i8_4_lut (.A(cnt_c[5]), .B(cnt_c[11]), .C(cnt_c[10]), .D(cnt_c[13]), 
         .Z(n19_adj_1901)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i23121_2_lut_4_lut (.A(oled_dcn_N_982), .B(n27673), .C(n27612), 
         .D(state_back[4]), .Z(n25450)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i23121_2_lut_4_lut.init = 16'hec00;
    LUT4 i9_4_lut (.A(cnt_c[9]), .B(n18_adj_1904), .C(cnt_c[8]), .D(cnt_c[6]), 
         .Z(n20_adj_1902)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut_adj_522 (.A(cnt_c[7]), .B(cnt_c[14]), .C(cnt_c[12]), 
         .D(cnt_c[15]), .Z(n18_adj_1904)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut_adj_522.init = 16'hfffe;
    LUT4 i2_4_lut_4_lut_adj_523 (.A(cnt_main[1]), .B(\cnt_main[0] ), .C(cnt_main[2]), 
         .D(n27656), .Z(n21_adj_1897)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B (D)+!B ((D)+!C))) */ ;   // c:/fpga/ds18b20/oled.v(78[24:39])
    defparam i2_4_lut_4_lut_adj_523.init = 16'hff83;
    LUT4 i23235_3_lut_4_lut_4_lut_4_lut (.A(state[1]), .B(state[5]), .C(state[3]), 
         .D(state[2]), .Z(n25587)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23235_3_lut_4_lut_4_lut_4_lut.init = 16'hfffe;
    LUT4 i14939_2_lut_rep_539 (.A(cnt_main[1]), .B(\cnt_main[0] ), .Z(n27654)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14939_2_lut_rep_539.init = 16'heeee;
    LUT4 i1_4_lut_adj_524 (.A(cnt_scan[4]), .B(n57), .C(n61), .D(cnt_scan[3]), 
         .Z(n64_adj_1734)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_524.init = 16'h5044;
    LUT4 i2_4_lut_4_lut_adj_525 (.A(cnt_main[1]), .B(\cnt_main[0] ), .C(cnt_main[2]), 
         .D(n27656), .Z(n20)) /* synthesis lut_function=(A (C+(D))+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i2_4_lut_4_lut_adj_525.init = 16'hffa1;
    LUT4 i1_4_lut_adj_526 (.A(n21890), .B(n664), .C(n25098), .D(cnt_scan[0]), 
         .Z(n25224)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_526.init = 16'h0c88;
    LUT4 i2_4_lut_4_lut_adj_527 (.A(cnt_main[1]), .B(\cnt_main[0] ), .C(cnt_main[2]), 
         .D(n27656), .Z(n25)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B ((D)+!C))) */ ;
    defparam i2_4_lut_4_lut_adj_527.init = 16'hffc1;
    LUT4 i2_3_lut_4_lut_adj_528 (.A(cnt_main[1]), .B(\cnt_main[0] ), .C(n27656), 
         .D(cnt_main[2]), .Z(n10267)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_528.init = 16'hfffe;
    LUT4 i2_4_lut_4_lut_adj_529 (.A(cnt_main[1]), .B(\cnt_main[0] ), .C(cnt_main[2]), 
         .D(n27676), .Z(n18_c)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_4_lut_adj_529.init = 16'h1a00;
    LUT4 i2_4_lut_4_lut_adj_530 (.A(cnt_main[1]), .B(\cnt_main[0] ), .C(cnt_main[2]), 
         .D(n27676), .Z(n18_adj_1862)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B (C+!(D))+!B !(C (D))))) */ ;
    defparam i2_4_lut_4_lut_adj_530.init = 16'h1c00;
    LUT4 i14529_2_lut_rep_540 (.A(cnt_init[3]), .B(cnt_init[4]), .Z(n27672)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14529_2_lut_rep_540.init = 16'heeee;
    LUT4 n4_bdd_4_lut_24453 (.A(n27670), .B(n25258), .C(cnt_scan[3]), 
         .D(cnt_scan[4]), .Z(n27486)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam n4_bdd_4_lut_24453.init = 16'hfffb;
    LUT4 i2_3_lut_4_lut_adj_531 (.A(cnt_init[3]), .B(cnt_init[4]), .C(state[2]), 
         .D(n25441), .Z(n25150)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_adj_531.init = 16'h0010;
    LUT4 i1_4_lut_adj_532 (.A(state[0]), .B(char[26]), .C(n16_adj_1905), 
         .D(n27558), .Z(char_167__N_359[26])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_532.init = 16'hdc50;
    LUT4 i33_4_lut_adj_533 (.A(char[26]), .B(char_167__N_690[26]), .C(state[1]), 
         .D(n27613), .Z(n16_adj_1905)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_533.init = 16'h0aca;
    LUT4 i1_4_lut_adj_534 (.A(\cnt_main[0] ), .B(char[26]), .C(n27532), 
         .D(n16_adj_1698), .Z(char_167__N_690[26])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_534.init = 16'hdc50;
    PFUMX i24510 (.BLUT(n27788), .ALUT(n27789), .C0(num[1]), .Z(n27790));
    LUT4 i2_3_lut_rep_497_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[2]), 
         .D(cnt_init[1]), .Z(n27612)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_rep_497_4_lut.init = 16'h0010;
    LUT4 i14817_2_lut (.A(n2129), .B(num[4]), .Z(n664)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam i14817_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_545 (.A(cnt_scan[0]), .B(cnt_scan[1]), .Z(n27660)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/oled.v(62[12] 173[6])
    defparam i1_2_lut_rep_545.init = 16'heeee;
    LUT4 i1_3_lut_adj_535 (.A(state[2]), .B(state_back[3]), .C(n75_adj_1745), 
         .Z(n6_adj_1700)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_535.init = 16'h8080;
    LUT4 i1_2_lut_2_lut_adj_536 (.A(cnt_main[1]), .B(char[26]), .Z(n10_adj_1712)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/fpga/ds18b20/oled.v(88[8:12])
    defparam i1_2_lut_2_lut_adj_536.init = 16'h4444;
    LUT4 i2_3_lut_4_lut_adj_537 (.A(cnt_main[2]), .B(cnt_main[1]), .C(n27656), 
         .D(\cnt_main[0] ), .Z(n16_adj_1698)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i2_3_lut_4_lut_adj_537.init = 16'hf8f0;
    LUT4 equal_18_i7_2_lut_rep_541 (.A(cnt_main[3]), .B(cnt_main[4]), .Z(n27656)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/oled.v(88[8:12])
    defparam equal_18_i7_2_lut_rep_541.init = 16'heeee;
    LUT4 i15046_4_lut (.A(n21916), .B(n659), .C(n125), .D(n658), .Z(n6560)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;   // c:/fpga/ds18b20/oled.v(132[51:79])
    defparam i15046_4_lut.init = 16'hc044;
    LUT4 i23120_2_lut_4_lut (.A(oled_dcn_N_982), .B(n27673), .C(n27612), 
         .D(state_back[0]), .Z(n25448)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i23120_2_lut_4_lut.init = 16'hec00;
    LUT4 i9809_2_lut_rep_442 (.A(n2130), .B(n2131), .Z(n27557)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/oled.v(132[51:79])
    defparam i9809_2_lut_rep_442.init = 16'heeee;
    PFUMX i23405 (.BLUT(n1147), .ALUT(n1163), .C0(num[1]), .Z(n25760));
    PFUMX i47_adj_538 (.BLUT(n6_adj_1737), .ALUT(n12_adj_1735), .C0(state[3]), 
          .Z(n24_adj_1811));
    LUT4 i3_3_lut (.A(n125), .B(n658), .C(n2134), .Z(n21868)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3_3_lut.init = 16'h8080;
    PFUMX i23370 (.BLUT(n1182), .ALUT(n1198), .C0(num[1]), .Z(n25725));
    PFUMX i43 (.BLUT(n24_adj_1884), .ALUT(n22_c), .C0(\cnt_main[0] ), 
          .Z(n38_adj_1878));
    PFUMX i47_adj_539 (.BLUT(n6_adj_1721), .ALUT(n12_adj_1743), .C0(state[3]), 
          .Z(n24_adj_1894));
    PFUMX i47_adj_540 (.BLUT(n6_adj_1720), .ALUT(n12_adj_1744), .C0(state[3]), 
          .Z(n24_adj_1819));
    PFUMX i47_adj_541 (.BLUT(n6_c), .ALUT(n12_adj_1739), .C0(state[3]), 
          .Z(n24_adj_1813));
    LUT4 i14821_2_lut (.A(n2133), .B(num[4]), .Z(n660)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(132[59:71])
    defparam i14821_2_lut.init = 16'h2222;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module uart2tone
//

module uart2tone (sys_clk_c_enable_162, tone, sys_clk_c, uart_done, 
            n12482, \uart_data[1] , \uart_data[2] , \uart_data[3] , 
            GND_net, n27562, \uart_data[0] , \uart_data[4] , n27677, 
            n27633, n27680) /* synthesis syn_module_defined=1 */ ;
    output sys_clk_c_enable_162;
    output [4:0]tone;
    input sys_clk_c;
    input uart_done;
    input n12482;
    input \uart_data[1] ;
    input \uart_data[2] ;
    input \uart_data[3] ;
    input GND_net;
    input n27562;
    input \uart_data[0] ;
    input \uart_data[4] ;
    input n27677;
    input n27633;
    input n27680;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/fpga/ds18b20/top.v(2[25:32])
    
    wire recv_done_d1, recv_done_d0, sys_clk_c_enable_141;
    wire [4:0]tone_4__N_1372;
    
    wire clk_1s, clk_1s_N_1451;
    wire [23:0]n177;
    
    wire clk_1s_cnt_24__N_1436;
    wire [23:0]n101;
    
    wire n17683;
    wire [6:0]alarm_cnt;   // c:/fpga/ds18b20/uart2tone.v(35[11:20])
    
    wire n17699;
    wire [24:0]clk_1s_cnt;   // c:/fpga/ds18b20/uart2tone.v(22[12:22])
    
    wire n4, n5, n6, n5_adj_1678, n22, n21677, n21676, n21675, 
        n21674, n21673, n21672, n17134, n12411, n6_adj_1679, n21671, 
        n21670, n21669, n21668, n21667, n21666, n21664;
    wire [6:0]n33;
    
    wire n21663, n21662, clk_1s_temp, sys_clk_c_enable_196, n17769;
    
    LUT4 i23771_2_lut_rep_616 (.A(recv_done_d1), .B(recv_done_d0), .Z(sys_clk_c_enable_162)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/fpga/ds18b20/uart2tone.v(19[25:55])
    defparam i23771_2_lut_rep_616.init = 16'hbbbb;
    FD1P3AX tone_i0 (.D(tone_4__N_1372[0]), .SP(sys_clk_c_enable_141), .CK(sys_clk_c), 
            .Q(tone[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=170 */ ;   // c:/fpga/ds18b20/uart2tone.v(42[14] 69[8])
    defparam tone_i0.GSR = "ENABLED";
    FD1S3AX recv_done_d0_54 (.D(uart_done), .CK(sys_clk_c), .Q(recv_done_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=170 */ ;   // c:/fpga/ds18b20/uart2tone.v(77[10] 80[8])
    defparam recv_done_d0_54.GSR = "ENABLED";
    FD1S3AX recv_done_d1_55 (.D(recv_done_d0), .CK(sys_clk_c), .Q(recv_done_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=170 */ ;   // c:/fpga/ds18b20/uart2tone.v(77[10] 80[8])
    defparam recv_done_d1_55.GSR = "ENABLED";
    FD1S3AX clk_1s_49 (.D(clk_1s_N_1451), .CK(sys_clk_c), .Q(clk_1s)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=170 */ ;   // c:/fpga/ds18b20/uart2tone.v(27[14] 32[8])
    defparam clk_1s_49.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(n177[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i0.GSR = "ENABLED";
    FD1P3IX tone_i1 (.D(\uart_data[1] ), .SP(sys_clk_c_enable_141), .CD(n12482), 
            .CK(sys_clk_c), .Q(tone[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=170 */ ;   // c:/fpga/ds18b20/uart2tone.v(42[14] 69[8])
    defparam tone_i1.GSR = "ENABLED";
    FD1P3IX tone_i2 (.D(\uart_data[2] ), .SP(sys_clk_c_enable_141), .CD(n12482), 
            .CK(sys_clk_c), .Q(tone[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=170 */ ;   // c:/fpga/ds18b20/uart2tone.v(42[14] 69[8])
    defparam tone_i2.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(n17683), .B(alarm_cnt[4]), .C(alarm_cnt[6]), .D(alarm_cnt[5]), 
         .Z(n17699)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/uart2tone.v(46[17:32])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i15396_4_lut (.A(alarm_cnt[0]), .B(alarm_cnt[3]), .C(alarm_cnt[2]), 
         .D(alarm_cnt[1]), .Z(n17683)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i15396_4_lut.init = 16'hc8c0;
    LUT4 clk_1s_I_0_2_lut (.A(clk_1s), .B(clk_1s_cnt_24__N_1436), .Z(clk_1s_N_1451)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/uart2tone.v(30[14] 32[8])
    defparam clk_1s_I_0_2_lut.init = 16'h6666;
    LUT4 i3350_4_lut (.A(clk_1s_cnt[21]), .B(clk_1s_cnt[23]), .C(clk_1s_cnt[22]), 
         .D(n4), .Z(clk_1s_cnt_24__N_1436)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i3350_4_lut.init = 16'hc8c0;
    LUT4 i1_4_lut (.A(clk_1s_cnt[20]), .B(n5), .C(clk_1s_cnt[19]), .D(n6), 
         .Z(n4)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut.init = 16'ha8a0;
    LUT4 i1_4_lut_adj_91 (.A(n5_adj_1678), .B(clk_1s_cnt[17]), .C(clk_1s_cnt[15]), 
         .D(clk_1s_cnt[13]), .Z(n5)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_91.init = 16'hccc8;
    LUT4 i2_2_lut (.A(clk_1s_cnt[18]), .B(clk_1s_cnt[16]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_92 (.A(clk_1s_cnt[12]), .B(clk_1s_cnt[14]), .C(clk_1s_cnt[11]), 
         .D(n22), .Z(n5_adj_1678)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_92.init = 16'heccc;
    LUT4 i3313_3_lut (.A(clk_1s_cnt[8]), .B(clk_1s_cnt[10]), .C(clk_1s_cnt[9]), 
         .Z(n22)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i3313_3_lut.init = 16'hecec;
    FD1P3IX tone_i3 (.D(\uart_data[3] ), .SP(sys_clk_c_enable_141), .CD(n12482), 
            .CK(sys_clk_c), .Q(tone[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=170 */ ;   // c:/fpga/ds18b20/uart2tone.v(42[14] 69[8])
    defparam tone_i3.GSR = "ENABLED";
    CCU2D clk_1s_cnt_2272_2273_add_4_25 (.A0(clk_1s_cnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21677), .S0(n101[23]));   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273_add_4_25.INIT0 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_25.INIT1 = 16'h0000;
    defparam clk_1s_cnt_2272_2273_add_4_25.INJECT1_0 = "NO";
    defparam clk_1s_cnt_2272_2273_add_4_25.INJECT1_1 = "NO";
    CCU2D clk_1s_cnt_2272_2273_add_4_23 (.A0(clk_1s_cnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_1s_cnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n21676), .COUT(n21677), .S0(n101[21]), 
          .S1(n101[22]));   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273_add_4_23.INIT0 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_23.INIT1 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_23.INJECT1_0 = "NO";
    defparam clk_1s_cnt_2272_2273_add_4_23.INJECT1_1 = "NO";
    CCU2D clk_1s_cnt_2272_2273_add_4_21 (.A0(clk_1s_cnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_1s_cnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n21675), .COUT(n21676), .S0(n101[19]), 
          .S1(n101[20]));   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273_add_4_21.INIT0 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_21.INIT1 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_21.INJECT1_0 = "NO";
    defparam clk_1s_cnt_2272_2273_add_4_21.INJECT1_1 = "NO";
    CCU2D clk_1s_cnt_2272_2273_add_4_19 (.A0(clk_1s_cnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_1s_cnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n21674), .COUT(n21675), .S0(n101[17]), 
          .S1(n101[18]));   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273_add_4_19.INIT0 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_19.INIT1 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_19.INJECT1_0 = "NO";
    defparam clk_1s_cnt_2272_2273_add_4_19.INJECT1_1 = "NO";
    CCU2D clk_1s_cnt_2272_2273_add_4_17 (.A0(clk_1s_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_1s_cnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n21673), .COUT(n21674), .S0(n101[15]), 
          .S1(n101[16]));   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_17.INIT1 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_17.INJECT1_0 = "NO";
    defparam clk_1s_cnt_2272_2273_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_1s_cnt_2272_2273_add_4_15 (.A0(clk_1s_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_1s_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n21672), .COUT(n21673), .S0(n101[13]), 
          .S1(n101[14]));   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_15.INJECT1_0 = "NO";
    defparam clk_1s_cnt_2272_2273_add_4_15.INJECT1_1 = "NO";
    LUT4 i23705_4_lut (.A(sys_clk_c_enable_162), .B(alarm_cnt[6]), .C(n17134), 
         .D(n27562), .Z(n12411)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i23705_4_lut.init = 16'haaa8;
    LUT4 i4_4_lut (.A(alarm_cnt[3]), .B(alarm_cnt[5]), .C(alarm_cnt[4]), 
         .D(n6_adj_1679), .Z(n17134)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i1_3_lut (.A(alarm_cnt[0]), .B(alarm_cnt[2]), .C(alarm_cnt[1]), 
         .Z(n6_adj_1679)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut.init = 16'hc8c8;
    CCU2D clk_1s_cnt_2272_2273_add_4_13 (.A0(clk_1s_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_1s_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n21671), .COUT(n21672), .S0(n101[11]), 
          .S1(n101[12]));   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_13.INJECT1_0 = "NO";
    defparam clk_1s_cnt_2272_2273_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_1s_cnt_2272_2273_add_4_11 (.A0(clk_1s_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_1s_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n21670), .COUT(n21671), .S0(n101[9]), 
          .S1(n101[10]));   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_11.INJECT1_0 = "NO";
    defparam clk_1s_cnt_2272_2273_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_1s_cnt_2272_2273_add_4_9 (.A0(n177[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_1s_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21669), .COUT(n21670), .S0(n101[7]), .S1(n101[8]));   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_9.INJECT1_0 = "NO";
    defparam clk_1s_cnt_2272_2273_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_1s_cnt_2272_2273_add_4_7 (.A0(n177[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n177[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21668), .COUT(n21669), .S0(n101[5]), .S1(n101[6]));   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_7.INJECT1_0 = "NO";
    defparam clk_1s_cnt_2272_2273_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_1s_cnt_2272_2273_add_4_5 (.A0(n177[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n177[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21667), .COUT(n21668), .S0(n101[3]), .S1(n101[4]));   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_5.INJECT1_0 = "NO";
    defparam clk_1s_cnt_2272_2273_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_1s_cnt_2272_2273_add_4_3 (.A0(n177[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n177[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21666), .COUT(n21667), .S0(n101[1]), .S1(n101[2]));   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_1s_cnt_2272_2273_add_4_3.INJECT1_0 = "NO";
    defparam clk_1s_cnt_2272_2273_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_1s_cnt_2272_2273_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n177[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n21666), .S1(n101[0]));   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273_add_4_1.INIT0 = 16'hF000;
    defparam clk_1s_cnt_2272_2273_add_4_1.INIT1 = 16'h0555;
    defparam clk_1s_cnt_2272_2273_add_4_1.INJECT1_0 = "NO";
    defparam clk_1s_cnt_2272_2273_add_4_1.INJECT1_1 = "NO";
    CCU2D alarm_cnt_2271_add_4_7 (.A0(alarm_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(alarm_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21664), .S0(n33[5]), .S1(n33[6]));   // c:/fpga/ds18b20/uart2tone.v(60[33:46])
    defparam alarm_cnt_2271_add_4_7.INIT0 = 16'hfaaa;
    defparam alarm_cnt_2271_add_4_7.INIT1 = 16'hfaaa;
    defparam alarm_cnt_2271_add_4_7.INJECT1_0 = "NO";
    defparam alarm_cnt_2271_add_4_7.INJECT1_1 = "NO";
    CCU2D alarm_cnt_2271_add_4_5 (.A0(alarm_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(alarm_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21663), .COUT(n21664), .S0(n33[3]), .S1(n33[4]));   // c:/fpga/ds18b20/uart2tone.v(60[33:46])
    defparam alarm_cnt_2271_add_4_5.INIT0 = 16'hfaaa;
    defparam alarm_cnt_2271_add_4_5.INIT1 = 16'hfaaa;
    defparam alarm_cnt_2271_add_4_5.INJECT1_0 = "NO";
    defparam alarm_cnt_2271_add_4_5.INJECT1_1 = "NO";
    FD1P3IX alarm_cnt_2271__i0 (.D(n33[0]), .SP(sys_clk_c_enable_162), .CD(n12411), 
            .CK(sys_clk_c), .Q(alarm_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(60[33:46])
    defparam alarm_cnt_2271__i0.GSR = "ENABLED";
    CCU2D alarm_cnt_2271_add_4_3 (.A0(alarm_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(alarm_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21662), .COUT(n21663), .S0(n33[1]), .S1(n33[2]));   // c:/fpga/ds18b20/uart2tone.v(60[33:46])
    defparam alarm_cnt_2271_add_4_3.INIT0 = 16'hfaaa;
    defparam alarm_cnt_2271_add_4_3.INIT1 = 16'hfaaa;
    defparam alarm_cnt_2271_add_4_3.INJECT1_0 = "NO";
    defparam alarm_cnt_2271_add_4_3.INJECT1_1 = "NO";
    FD1S3IX clk_1s_cnt_2272_2273__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(clk_1s_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i23.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(clk_1s_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i22.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(clk_1s_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i21.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(clk_1s_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i20.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(clk_1s_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i19.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(clk_1s_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i18.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(clk_1s_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i17.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(clk_1s_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i16.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(clk_1s_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i15.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(clk_1s_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i14.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(clk_1s_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i13.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(clk_1s_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i12.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(clk_1s_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i11.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(clk_1s_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i10.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(clk_1s_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i9.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(clk_1s_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i8.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(n177[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i7.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(n177[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i6.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(n177[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i5.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(n177[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i4.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(n177[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i3.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(n177[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i2.GSR = "ENABLED";
    FD1S3IX clk_1s_cnt_2272_2273__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(clk_1s_cnt_24__N_1436), 
            .Q(n177[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(31[23:37])
    defparam clk_1s_cnt_2272_2273__i1.GSR = "ENABLED";
    FD1P3AX tone_i4 (.D(tone_4__N_1372[4]), .SP(sys_clk_c_enable_141), .CK(sys_clk_c), 
            .Q(tone[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=170 */ ;   // c:/fpga/ds18b20/uart2tone.v(42[14] 69[8])
    defparam tone_i4.GSR = "ENABLED";
    LUT4 tone_4__I_0_i1_3_lut_4_lut (.A(clk_1s), .B(n17699), .C(sys_clk_c_enable_162), 
         .D(\uart_data[0] ), .Z(tone_4__N_1372[0])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/fpga/ds18b20/uart2tone.v(56[22] 65[16])
    defparam tone_4__I_0_i1_3_lut_4_lut.init = 16'h2f20;
    LUT4 tone_4__I_0_i5_3_lut_4_lut (.A(clk_1s), .B(n17699), .C(sys_clk_c_enable_162), 
         .D(\uart_data[4] ), .Z(tone_4__N_1372[4])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/fpga/ds18b20/uart2tone.v(56[22] 65[16])
    defparam tone_4__I_0_i5_3_lut_4_lut.init = 16'h2f20;
    FD1P3IX alarm_cnt_2271__i1 (.D(n33[1]), .SP(sys_clk_c_enable_162), .CD(n12411), 
            .CK(sys_clk_c), .Q(alarm_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(60[33:46])
    defparam alarm_cnt_2271__i1.GSR = "ENABLED";
    FD1P3IX alarm_cnt_2271__i2 (.D(n33[2]), .SP(sys_clk_c_enable_162), .CD(n12411), 
            .CK(sys_clk_c), .Q(alarm_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(60[33:46])
    defparam alarm_cnt_2271__i2.GSR = "ENABLED";
    FD1P3IX alarm_cnt_2271__i3 (.D(n33[3]), .SP(sys_clk_c_enable_162), .CD(n12411), 
            .CK(sys_clk_c), .Q(alarm_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(60[33:46])
    defparam alarm_cnt_2271__i3.GSR = "ENABLED";
    FD1P3IX alarm_cnt_2271__i4 (.D(n33[4]), .SP(sys_clk_c_enable_162), .CD(n12411), 
            .CK(sys_clk_c), .Q(alarm_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(60[33:46])
    defparam alarm_cnt_2271__i4.GSR = "ENABLED";
    FD1P3IX alarm_cnt_2271__i5 (.D(n33[5]), .SP(sys_clk_c_enable_162), .CD(n12411), 
            .CK(sys_clk_c), .Q(alarm_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(60[33:46])
    defparam alarm_cnt_2271__i5.GSR = "ENABLED";
    FD1P3IX alarm_cnt_2271__i6 (.D(n33[6]), .SP(sys_clk_c_enable_162), .CD(n12411), 
            .CK(sys_clk_c), .Q(alarm_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart2tone.v(60[33:46])
    defparam alarm_cnt_2271__i6.GSR = "ENABLED";
    CCU2D alarm_cnt_2271_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_1s), .B1(clk_1s_temp), .C1(alarm_cnt[0]), 
          .D1(GND_net), .COUT(n21662), .S1(n33[0]));   // c:/fpga/ds18b20/uart2tone.v(60[33:46])
    defparam alarm_cnt_2271_add_4_1.INIT0 = 16'hF000;
    defparam alarm_cnt_2271_add_4_1.INIT1 = 16'h9696;
    defparam alarm_cnt_2271_add_4_1.INJECT1_0 = "NO";
    defparam alarm_cnt_2271_add_4_1.INJECT1_1 = "NO";
    FD1P3AX clk_1s_temp_53 (.D(clk_1s), .SP(sys_clk_c_enable_196), .CK(sys_clk_c), 
            .Q(clk_1s_temp));   // c:/fpga/ds18b20/uart2tone.v(42[14] 69[8])
    defparam clk_1s_temp_53.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n17769), .B(n12482), .C(clk_1s_temp), .D(clk_1s), 
         .Z(sys_clk_c_enable_196)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0440;
    LUT4 i15477_3_lut (.A(n17699), .B(n17134), .C(alarm_cnt[6]), .Z(n17769)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i15477_3_lut.init = 16'ha8a8;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(sys_clk_c_enable_162), .B(n27677), 
         .C(n27633), .D(n27680), .Z(sys_clk_c_enable_141)) /* synthesis lut_function=(!(A (B+(C+!(D))))) */ ;   // c:/fpga/ds18b20/uart2tone.v(19[25:55])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h5755;
    
endmodule
//
// Verilog Description of module clock
//

module clock (time_min_low, min_a_c, time_min_high, time_hour_low, time_hour_high, 
            hour_a_c, hour_d_c, n27589, min_d_c, n6, n27682, n10387, 
            n27677, n27633, n27680, n27562, sys_clk_c, GND_net, 
            n27590, n57, n2688, sys_rst_n_c, sys_clk_c_enable_162, 
            n12482) /* synthesis syn_module_defined=1 */ ;
    output [3:0]time_min_low;
    input min_a_c;
    output [3:0]time_min_high;
    output [3:0]time_hour_low;
    output [3:0]time_hour_high;
    input hour_a_c;
    input hour_d_c;
    output n27589;
    input min_d_c;
    output n6;
    input n27682;
    output n10387;
    output n27677;
    output n27633;
    output n27680;
    output n27562;
    input sys_clk_c;
    input GND_net;
    input n27590;
    input n57;
    input n2688;
    input sys_rst_n_c;
    input sys_clk_c_enable_162;
    output n12482;
    
    wire clk_1ms /* synthesis SET_AS_NETWORK=\m_clock/clk_1ms, is_clock=1 */ ;   // c:/fpga/ds18b20/time.v(16[5:12])
    wire clk_500ms /* synthesis is_clock=1, SET_AS_NETWORK=\m_clock/clk_500ms */ ;   // c:/fpga/ds18b20/time.v(29[5:14])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/fpga/ds18b20/top.v(2[25:32])
    wire [15:0]ms;   // c:/fpga/ds18b20/time.v(104[12:14])
    
    wire clk_1ms_enable_32, n12384;
    wire [15:0]n1;
    wire [3:0]min_set_low;   // c:/fpga/ds18b20/time.v(44[11:22])
    
    wire clk_500ms_enable_4;
    wire [3:0]n2487;
    wire [2:0]n6350;
    
    wire clk_1ms_enable_30;
    wire [3:0]time_min_low_3__N_1477;
    
    wire clk_1ms_enable_27;
    wire [3:0]time_min_high_3__N_1473;
    
    wire clk_1ms_enable_24;
    wire [3:0]time_hour_low_3__N_1469;
    
    wire clk_1ms_enable_21;
    wire [3:0]time_hour_high_3__N_1463;
    
    wire n21877, n11, n27768, n27761, n27762;
    wire [3:0]hour_set_low;   // c:/fpga/ds18b20/time.v(42[11:23])
    
    wire n27767, n27596, n27777, n27776, n27780, n27779, n27719, 
        n27786, n27785;
    wire [3:0]min_set_high;   // c:/fpga/ds18b20/time.v(45[11:23])
    
    wire n27722, n25045, n27721, n1169, n4;
    wire [3:0]hour_set_high;   // c:/fpga/ds18b20/time.v(43[11:24])
    
    wire n27648, n27720, n27573, n2763, n26656, n26657, n28852, 
        n5243, n27747, n26683, n26682, n25, n27579, n26694, n26693, 
        n27645, n17567, n26692, n26696, n26697;
    wire [3:0]n2653;
    wire [3:0]n2614;
    
    wire n2505;
    wire [3:0]min_set_high_3__N_1585;
    
    wire n27748, n28, n22, n25895;
    wire [12:0]clk_1ms_cnt;   // c:/fpga/ds18b20/time.v(17[12:23])
    
    wire n12417;
    wire [12:0]n2;
    
    wire n26, n6433, n10321;
    wire [3:0]n2555;
    
    wire n2486;
    wire [15:0]n121;
    
    wire n21691;
    wire [2:0]n6346;
    wire [3:0]n2713;
    
    wire n2525;
    wire [3:0]hour_set_high_3__N_1581;
    
    wire n21690, n21689, n21688, n21687, n7, n21686, n6_adj_1663, 
        n30, n5, n6_adj_1664, n21774, n21973, n21685, n25024, 
        n12383, n6900, n21684, n27568, n27628, n27137, n27139, 
        n21682;
    wire [10:0]clk_500ms_cnt;   // c:/fpga/ds18b20/time.v(30[12:25])
    wire [10:0]n49;
    
    wire n21681, n1211, n12374, n26695, n25510, n1153, n15_adj_1665, 
        n6_adj_1666, n21680, n8354, n8993, n27597, n21679, n27240;
    wire [31:0]n662;
    
    wire n27544, n21678, n2613, n27136, n27140, n21724, n21915, 
        n21723, n21722, n21721, n21720, n21719, n8350, n8352, 
        n27640, n12377;
    wire [3:0]time_hour_low_3__N_1601;
    wire [31:0]n592;
    
    wire n7_adj_1672, n12375, n27708, n27704, n27706, n21769, n7_adj_1673, 
        n8, n25282, n6_adj_1674, n27723, n27716, n21876;
    wire [31:0]n627;
    
    wire n6_adj_1675, n6_adj_1676, clk_1ms_N_1630, clk_500ms_N_1632, 
        n27569, n51_adj_1677, n27135, n27741, n27742, n27172, n27764, 
        n27765;
    
    FD1P3IX ms_2276__i6 (.D(n1[6]), .SP(clk_1ms_enable_32), .CD(n12384), 
            .CK(clk_1ms), .Q(ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276__i6.GSR = "ENABLED";
    FD1P3AX min_set_low_i0_i0 (.D(n2487[0]), .SP(clk_500ms_enable_4), .CK(clk_500ms), 
            .Q(min_set_low[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(46[8] 101[4])
    defparam min_set_low_i0_i0.GSR = "DISABLED";
    FD1P3IX ms_2276__i7 (.D(n1[7]), .SP(clk_1ms_enable_32), .CD(n12384), 
            .CK(clk_1ms), .Q(ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276__i7.GSR = "ENABLED";
    LUT4 mux_4125_i2_4_lut_4_lut_4_lut (.A(time_min_low[2]), .B(time_min_low[1]), 
         .C(time_min_low[0]), .D(min_a_c), .Z(n6350[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+!(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;   // c:/fpga/ds18b20/time.v(122[28:44])
    defparam mux_4125_i2_4_lut_4_lut_4_lut.init = 16'ha96a;
    FD1P3IX ms_2276__i8 (.D(n1[8]), .SP(clk_1ms_enable_32), .CD(n12384), 
            .CK(clk_1ms), .Q(ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276__i8.GSR = "ENABLED";
    FD1P3IX ms_2276__i9 (.D(n1[9]), .SP(clk_1ms_enable_32), .CD(n12384), 
            .CK(clk_1ms), .Q(ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276__i9.GSR = "ENABLED";
    FD1P3IX ms_2276__i10 (.D(n1[10]), .SP(clk_1ms_enable_32), .CD(n12384), 
            .CK(clk_1ms), .Q(ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276__i10.GSR = "ENABLED";
    FD1P3IX ms_2276__i11 (.D(n1[11]), .SP(clk_1ms_enable_32), .CD(n12384), 
            .CK(clk_1ms), .Q(ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276__i11.GSR = "ENABLED";
    FD1P3AX time_min_low_i0 (.D(time_min_low_3__N_1477[0]), .SP(clk_1ms_enable_30), 
            .CK(clk_1ms), .Q(time_min_low[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(112[14] 140[8])
    defparam time_min_low_i0.GSR = "ENABLED";
    FD1P3AX time_min_high_i0 (.D(time_min_high_3__N_1473[0]), .SP(clk_1ms_enable_27), 
            .CK(clk_1ms), .Q(time_min_high[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(112[14] 140[8])
    defparam time_min_high_i0.GSR = "ENABLED";
    FD1P3AX time_hour_low_i0 (.D(time_hour_low_3__N_1469[0]), .SP(clk_1ms_enable_24), 
            .CK(clk_1ms), .Q(time_hour_low[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(112[14] 140[8])
    defparam time_hour_low_i0.GSR = "ENABLED";
    FD1P3AX time_hour_high_i0 (.D(time_hour_high_3__N_1463[0]), .SP(clk_1ms_enable_21), 
            .CK(clk_1ms), .Q(time_hour_high[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(112[14] 140[8])
    defparam time_hour_high_i0.GSR = "ENABLED";
    FD1P3IX ms_2276__i12 (.D(n1[12]), .SP(clk_1ms_enable_32), .CD(n12384), 
            .CK(clk_1ms), .Q(ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276__i12.GSR = "ENABLED";
    LUT4 i3_4_lut_4_lut_4_lut_4_lut (.A(time_hour_low[1]), .B(time_hour_low[0]), 
         .C(time_hour_low[2]), .D(time_hour_low[3]), .Z(n21877)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/fpga/ds18b20/time.v(68[28:44])
    defparam i3_4_lut_4_lut_4_lut_4_lut.init = 16'h0400;
    FD1P3IX ms_2276__i13 (.D(n1[13]), .SP(clk_1ms_enable_32), .CD(n12384), 
            .CK(clk_1ms), .Q(ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276__i13.GSR = "ENABLED";
    FD1P3IX ms_2276__i14 (.D(n1[14]), .SP(clk_1ms_enable_32), .CD(n12384), 
            .CK(clk_1ms), .Q(ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276__i14.GSR = "ENABLED";
    FD1P3IX ms_2276__i15 (.D(n1[15]), .SP(clk_1ms_enable_32), .CD(n12384), 
            .CK(clk_1ms), .Q(ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276__i15.GSR = "ENABLED";
    LUT4 time_hour_low_3__I_0_i3_4_lut_then_4_lut (.A(time_hour_low[1]), .B(n11), 
         .C(time_hour_low[0]), .D(time_hour_low[2]), .Z(n27768)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A !(D))) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam time_hour_low_3__I_0_i3_4_lut_then_4_lut.init = 16'h5f20;
    PFUMX i24492 (.BLUT(n27761), .ALUT(n27762), .C0(time_min_low[1]), 
          .Z(time_min_low_3__N_1477[2]));
    LUT4 time_hour_low_3__I_0_i3_4_lut_else_4_lut (.A(hour_set_low[2]), .Z(n27767)) /* synthesis lut_function=(A) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam time_hour_low_3__I_0_i3_4_lut_else_4_lut.init = 16'haaaa;
    LUT4 mux_1284_i4_4_lut_then_4_lut (.A(n27596), .B(time_hour_high[1]), 
         .C(time_hour_high[0]), .D(time_hour_high[2]), .Z(n27777)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (C (D)))) */ ;   // c:/fpga/ds18b20/time.v(52[11] 94[5])
    defparam mux_1284_i4_4_lut_then_4_lut.init = 16'hbffd;
    LUT4 mux_1284_i4_4_lut_else_4_lut (.A(n27596), .B(time_hour_high[1]), 
         .C(time_hour_high[0]), .D(time_hour_high[2]), .Z(n27776)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/fpga/ds18b20/time.v(52[11] 94[5])
    defparam mux_1284_i4_4_lut_else_4_lut.init = 16'h4000;
    LUT4 i23827_2_lut_2_lut_3_lut_3_lut_4_lut_then_4_lut (.A(hour_a_c), .B(hour_d_c), 
         .C(n27589), .D(min_d_c), .Z(n27780)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i23827_2_lut_2_lut_3_lut_3_lut_4_lut_then_4_lut.init = 16'hfff7;
    LUT4 i23827_2_lut_2_lut_3_lut_3_lut_4_lut_else_4_lut (.A(hour_a_c), .B(hour_d_c), 
         .C(n6), .Z(n27779)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i23827_2_lut_2_lut_3_lut_3_lut_4_lut_else_4_lut.init = 16'h7f7f;
    LUT4 i1_4_lut_then_4_lut (.A(time_hour_low[0]), .B(n27719), .C(hour_d_c), 
         .D(hour_a_c), .Z(n27786)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'hf022;
    LUT4 i1_4_lut_else_4_lut (.A(time_hour_low[0]), .B(n27719), .C(hour_d_c), 
         .D(hour_a_c), .Z(n27785)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (D))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'hf100;
    LUT4 i12_3_lut (.A(time_min_low[0]), .B(min_set_low[0]), .C(clk_1ms_enable_32), 
         .Z(time_min_low_3__N_1477[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B+(C)))) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam i12_3_lut.init = 16'h5c5c;
    LUT4 i12_3_lut_adj_73 (.A(time_min_high[0]), .B(min_set_high[0]), .C(clk_1ms_enable_32), 
         .Z(time_min_high_3__N_1473[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B+(C)))) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam i12_3_lut_adj_73.init = 16'h5c5c;
    LUT4 time_hour_low_3__I_0_i1_3_lut (.A(time_hour_low[0]), .B(hour_set_low[0]), 
         .C(clk_1ms_enable_32), .Z(time_hour_low_3__N_1469[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B+(C)))) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam time_hour_low_3__I_0_i1_3_lut.init = 16'h5c5c;
    LUT4 i4_4_lut (.A(n27722), .B(n25045), .C(n6), .D(n27721), .Z(n1169)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/fpga/ds18b20/time.v(126[21:39])
    defparam i4_4_lut.init = 16'h4000;
    LUT4 i1_2_lut (.A(time_hour_low[2]), .B(time_hour_low[0]), .Z(n4)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/fpga/ds18b20/time.v(126[17] 137[20])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 time_hour_high_3__I_0_i1_4_lut (.A(time_hour_high[0]), .B(hour_set_high[0]), 
         .C(clk_1ms_enable_32), .D(n27648), .Z(time_hour_high_3__N_1463[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam time_hour_high_3__I_0_i1_4_lut.init = 16'h0c5c;
    LUT4 i22_4_lut (.A(n27720), .B(time_hour_low[1]), .C(time_hour_low[3]), 
         .D(time_hour_high[1]), .Z(n11)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i22_4_lut.init = 16'h3430;
    LUT4 hour_a_c_bdd_4_lut (.A(n27573), .B(n2763), .C(hour_set_low[1]), 
         .D(time_hour_low[1]), .Z(n26656)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;
    defparam hour_a_c_bdd_4_lut.init = 16'h5410;
    LUT4 hour_a_c_bdd_3_lut_24819 (.A(hour_a_c), .B(time_hour_low[1]), .C(time_hour_low[0]), 
         .Z(n26657)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;
    defparam hour_a_c_bdd_3_lut_24819.init = 16'h9696;
    LUT4 i23781_2_lut_rep_618 (.A(hour_a_c), .B(hour_d_c), .Z(n28852)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i23781_2_lut_rep_618.init = 16'h7777;
    LUT4 i3_4_lut_4_lut_else_4_lut_4_lut (.A(hour_a_c), .B(hour_d_c), .C(n6), 
         .D(n5243), .Z(n27747)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i3_4_lut_4_lut_else_4_lut_4_lut.init = 16'hfff7;
    LUT4 time_hour_low_1__bdd_4_lut_24816 (.A(time_hour_low[1]), .B(time_hour_low[2]), 
         .C(hour_a_c), .D(time_hour_low[0]), .Z(n26683)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B ((D)+!C)+!B !((D)+!C))) */ ;
    defparam time_hour_low_1__bdd_4_lut_24816.init = 16'hc69c;
    LUT4 time_hour_low_1__bdd_4_lut_23975 (.A(n27573), .B(n2763), .C(hour_set_low[2]), 
         .D(time_hour_low[2]), .Z(n26682)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;
    defparam time_hour_low_1__bdd_4_lut_23975.init = 16'h5410;
    LUT4 i9_4_lut (.A(hour_set_low[0]), .B(hour_set_low[2]), .C(min_set_low[2]), 
         .D(min_set_low[0]), .Z(n25)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/time.v(112[18:106])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 n57_bdd_3_lut_24388 (.A(n27579), .B(time_min_high[1]), .C(time_min_high[0]), 
         .Z(n26694)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam n57_bdd_3_lut_24388.init = 16'h0404;
    LUT4 n57_bdd_3_lut_23982 (.A(time_min_high[1]), .B(min_a_c), .C(time_min_high[0]), 
         .Z(n26693)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n57_bdd_3_lut_23982.init = 16'h1010;
    LUT4 i22_4_lut_adj_74 (.A(n27682), .B(n10387), .C(hour_d_c), .D(n27645), 
         .Z(n17567)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam i22_4_lut_adj_74.init = 16'hafac;
    LUT4 n57_bdd_2_lut_24387 (.A(time_min_high[1]), .B(time_min_high[0]), 
         .Z(n26692)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n57_bdd_2_lut_24387.init = 16'h2222;
    LUT4 i1_2_lut_rep_562 (.A(time_min_low[0]), .B(time_min_low[3]), .Z(n27677)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/time.v(123[17:35])
    defparam i1_2_lut_rep_562.init = 16'heeee;
    LUT4 i23136_2_lut_rep_447_3_lut_3_lut_4_lut (.A(time_min_low[0]), .B(time_min_low[3]), 
         .C(n27633), .D(n27680), .Z(n27562)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/fpga/ds18b20/time.v(123[17:35])
    defparam i23136_2_lut_rep_447_3_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 led_c_bdd_2_lut_23989 (.A(n26696), .B(time_min_high[2]), .Z(n26697)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_c_bdd_2_lut_23989.init = 16'h8888;
    PFUMX mux_1179_i2 (.BLUT(n2653[1]), .ALUT(n2614[1]), .C0(n2505), .Z(min_set_high_3__N_1585[1]));
    LUT4 i3_4_lut_4_lut_then_4_lut (.A(n28852), .B(min_d_c), .C(n27562), 
         .D(n5243), .Z(n27748)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i3_4_lut_4_lut_then_4_lut.init = 16'hffef;
    LUT4 i23687_4_lut (.A(min_set_high[2]), .B(n28), .C(n22), .D(hour_set_low[1]), 
         .Z(n25895)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/fpga/ds18b20/time.v(112[18:106])
    defparam i23687_4_lut.init = 16'h0001;
    PFUMX mux_1179_i3 (.BLUT(n2653[2]), .ALUT(n2614[2]), .C0(n2505), .Z(min_set_high_3__N_1585[2]));
    PFUMX mux_1179_i4 (.BLUT(n2653[3]), .ALUT(n2614[3]), .C0(n2505), .Z(min_set_high_3__N_1585[3]));
    FD1S3IX clk_1ms_cnt_2278__i11 (.D(n2[11]), .CK(sys_clk_c), .CD(n12417), 
            .Q(clk_1ms_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278__i11.GSR = "ENABLED";
    FD1S3IX clk_1ms_cnt_2278__i10 (.D(n2[10]), .CK(sys_clk_c), .CD(n12417), 
            .Q(clk_1ms_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278__i10.GSR = "ENABLED";
    FD1S3IX clk_1ms_cnt_2278__i9 (.D(n2[9]), .CK(sys_clk_c), .CD(n12417), 
            .Q(clk_1ms_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278__i9.GSR = "ENABLED";
    FD1S3IX clk_1ms_cnt_2278__i8 (.D(n2[8]), .CK(sys_clk_c), .CD(n12417), 
            .Q(clk_1ms_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278__i8.GSR = "ENABLED";
    FD1S3IX clk_1ms_cnt_2278__i7 (.D(n2[7]), .CK(sys_clk_c), .CD(n12417), 
            .Q(clk_1ms_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278__i7.GSR = "ENABLED";
    FD1S3IX clk_1ms_cnt_2278__i6 (.D(n2[6]), .CK(sys_clk_c), .CD(n12417), 
            .Q(clk_1ms_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278__i6.GSR = "ENABLED";
    FD1S3IX clk_1ms_cnt_2278__i5 (.D(n2[5]), .CK(sys_clk_c), .CD(n12417), 
            .Q(clk_1ms_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278__i5.GSR = "ENABLED";
    FD1S3IX clk_1ms_cnt_2278__i4 (.D(n2[4]), .CK(sys_clk_c), .CD(n12417), 
            .Q(clk_1ms_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278__i4.GSR = "ENABLED";
    FD1S3IX clk_1ms_cnt_2278__i3 (.D(n2[3]), .CK(sys_clk_c), .CD(n12417), 
            .Q(clk_1ms_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278__i3.GSR = "ENABLED";
    FD1S3IX clk_1ms_cnt_2278__i2 (.D(n2[2]), .CK(sys_clk_c), .CD(n12417), 
            .Q(clk_1ms_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278__i2.GSR = "ENABLED";
    FD1S3IX clk_1ms_cnt_2278__i1 (.D(n2[1]), .CK(sys_clk_c), .CD(n12417), 
            .Q(clk_1ms_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278__i1.GSR = "ENABLED";
    LUT4 i10_4_lut (.A(min_set_high[0]), .B(hour_set_high[2]), .C(hour_set_low[3]), 
         .D(min_set_low[1]), .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/time.v(112[18:106])
    defparam i10_4_lut.init = 16'hfffe;
    PFUMX mux_1179_i1 (.BLUT(n6433), .ALUT(n2614[0]), .C0(n2505), .Z(min_set_high_3__N_1585[0]));
    LUT4 i12_4_lut (.A(min_set_high[3]), .B(min_set_high[1]), .C(hour_set_high[1]), 
         .D(hour_set_high[3]), .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/time.v(112[18:106])
    defparam i12_4_lut.init = 16'hfffe;
    PFUMX mux_1170_i2 (.BLUT(n10321), .ALUT(n2555[1]), .C0(n2486), .Z(n2487[1]));
    FD1P3IX ms_2276__i1 (.D(n1[1]), .SP(clk_1ms_enable_32), .CD(n12384), 
            .CK(clk_1ms), .Q(n121[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276__i1.GSR = "ENABLED";
    CCU2D ms_2276_add_4_17 (.A0(ms[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n21691), 
          .S0(n1[15]));   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276_add_4_17.INIT0 = 16'hfaaa;
    defparam ms_2276_add_4_17.INIT1 = 16'h0000;
    defparam ms_2276_add_4_17.INJECT1_0 = "NO";
    defparam ms_2276_add_4_17.INJECT1_1 = "NO";
    FD1P3IX ms_2276__i2 (.D(n1[2]), .SP(clk_1ms_enable_32), .CD(n12384), 
            .CK(clk_1ms), .Q(n121[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276__i2.GSR = "ENABLED";
    LUT4 i6_2_lut (.A(hour_set_high[0]), .B(min_set_low[3]), .Z(n22)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/time.v(112[18:106])
    defparam i6_2_lut.init = 16'heeee;
    PFUMX mux_1170_i3 (.BLUT(n6350[1]), .ALUT(n2555[2]), .C0(n2486), .Z(n2487[2]));
    PFUMX mux_1170_i4 (.BLUT(n6350[2]), .ALUT(n2555[3]), .C0(n2486), .Z(n2487[3]));
    PFUMX mux_1189_i4 (.BLUT(n6346[2]), .ALUT(n2713[3]), .C0(n2525), .Z(hour_set_high_3__N_1581[3]));
    FD1P3IX ms_2276__i3 (.D(n1[3]), .SP(clk_1ms_enable_32), .CD(n12384), 
            .CK(clk_1ms), .Q(n121[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276__i3.GSR = "ENABLED";
    CCU2D ms_2276_add_4_15 (.A0(ms[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ms[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n21690), 
          .COUT(n21691), .S0(n1[13]), .S1(n1[14]));   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276_add_4_15.INIT0 = 16'hfaaa;
    defparam ms_2276_add_4_15.INIT1 = 16'hfaaa;
    defparam ms_2276_add_4_15.INJECT1_0 = "NO";
    defparam ms_2276_add_4_15.INJECT1_1 = "NO";
    CCU2D ms_2276_add_4_13 (.A0(ms[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ms[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n21689), 
          .COUT(n21690), .S0(n1[11]), .S1(n1[12]));   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276_add_4_13.INIT0 = 16'hfaaa;
    defparam ms_2276_add_4_13.INIT1 = 16'hfaaa;
    defparam ms_2276_add_4_13.INJECT1_0 = "NO";
    defparam ms_2276_add_4_13.INJECT1_1 = "NO";
    CCU2D ms_2276_add_4_11 (.A0(ms[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ms[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n21688), 
          .COUT(n21689), .S0(n1[9]), .S1(n1[10]));   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276_add_4_11.INIT0 = 16'hfaaa;
    defparam ms_2276_add_4_11.INIT1 = 16'hfaaa;
    defparam ms_2276_add_4_11.INJECT1_0 = "NO";
    defparam ms_2276_add_4_11.INJECT1_1 = "NO";
    CCU2D ms_2276_add_4_9 (.A0(ms[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ms[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n21687), 
          .COUT(n21688), .S0(n1[7]), .S1(n1[8]));   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276_add_4_9.INIT0 = 16'hfaaa;
    defparam ms_2276_add_4_9.INIT1 = 16'hfaaa;
    defparam ms_2276_add_4_9.INJECT1_0 = "NO";
    defparam ms_2276_add_4_9.INJECT1_1 = "NO";
    LUT4 i23625_2_lut_rep_565 (.A(time_min_low[1]), .B(time_min_low[2]), 
         .Z(n27680)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i23625_2_lut_rep_565.init = 16'h1111;
    LUT4 i2_3_lut_4_lut (.A(time_min_low[1]), .B(time_min_low[2]), .C(time_min_low[0]), 
         .D(time_min_low[3]), .Z(n6)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_3_lut_4_lut (.A(time_min_low[1]), .B(time_min_low[2]), .C(time_min_low[3]), 
         .D(time_min_low[0]), .Z(n7)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hefff;
    CCU2D ms_2276_add_4_7 (.A0(ms[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ms[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n21686), 
          .COUT(n21687), .S0(n1[5]), .S1(n1[6]));   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276_add_4_7.INIT0 = 16'hfaaa;
    defparam ms_2276_add_4_7.INIT1 = 16'hfaaa;
    defparam ms_2276_add_4_7.INJECT1_0 = "NO";
    defparam ms_2276_add_4_7.INJECT1_1 = "NO";
    LUT4 i23250_2_lut_rep_474_2_lut_3_lut_4_lut (.A(time_min_low[1]), .B(time_min_low[2]), 
         .C(time_min_low[3]), .D(time_min_low[0]), .Z(n27589)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23250_2_lut_rep_474_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut (.A(ms[12]), .B(n6_adj_1663), .C(ms[14]), .D(n30), 
         .Z(n25045)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;   // c:/fpga/ds18b20/time.v(126[21:39])
    defparam i3_4_lut.init = 16'hc080;
    LUT4 i15481_4_lut (.A(n5), .B(clk_1ms_cnt[12]), .C(clk_1ms_cnt[11]), 
         .D(n6_adj_1664), .Z(n12417)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i15481_4_lut.init = 16'hc8c0;
    LUT4 i1_3_lut (.A(n21774), .B(clk_1ms_cnt[10]), .C(clk_1ms_cnt[7]), 
         .Z(n5)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 i2_2_lut (.A(clk_1ms_cnt[8]), .B(clk_1ms_cnt[9]), .Z(n6_adj_1664)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i3_4_lut_adj_75 (.A(n21973), .B(clk_1ms_cnt[4]), .C(clk_1ms_cnt[6]), 
         .D(clk_1ms_cnt[5]), .Z(n21774)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_75.init = 16'h8000;
    LUT4 i3_4_lut_adj_76 (.A(clk_1ms_cnt[0]), .B(clk_1ms_cnt[1]), .C(clk_1ms_cnt[3]), 
         .D(clk_1ms_cnt[2]), .Z(n21973)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_76.init = 16'hfffe;
    FD1P3IX ms_2276__i0 (.D(n1[0]), .SP(clk_1ms_enable_32), .CD(n12384), 
            .CK(clk_1ms), .Q(n121[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276__i0.GSR = "ENABLED";
    CCU2D ms_2276_add_4_5 (.A0(n121[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n121[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n21685), 
          .COUT(n21686), .S0(n1[3]), .S1(n1[4]));   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276_add_4_5.INIT0 = 16'hfaaa;
    defparam ms_2276_add_4_5.INIT1 = 16'hfaaa;
    defparam ms_2276_add_4_5.INJECT1_0 = "NO";
    defparam ms_2276_add_4_5.INJECT1_1 = "NO";
    LUT4 i23635_2_lut_2_lut_3_lut_3_lut_4_lut (.A(hour_a_c), .B(hour_d_c), 
         .C(n27682), .D(n25024), .Z(n12383)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(D)) */ ;
    defparam i23635_2_lut_2_lut_3_lut_3_lut_4_lut.init = 16'h80ff;
    FD1S3IX hour_set_high__i0 (.D(n6900), .CK(clk_500ms), .CD(n12383), 
            .Q(hour_set_high[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(46[8] 101[4])
    defparam hour_set_high__i0.GSR = "DISABLED";
    CCU2D ms_2276_add_4_3 (.A0(n121[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n121[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n21684), 
          .COUT(n21685), .S0(n1[1]), .S1(n1[2]));   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276_add_4_3.INIT0 = 16'hfaaa;
    defparam ms_2276_add_4_3.INIT1 = 16'hfaaa;
    defparam ms_2276_add_4_3.INJECT1_0 = "NO";
    defparam ms_2276_add_4_3.INJECT1_1 = "NO";
    LUT4 i15285_2_lut_rep_453_3_lut_4_lut_4_lut_4_lut (.A(hour_a_c), .B(hour_d_c), 
         .C(n27648), .D(n27682), .Z(n27568)) /* synthesis lut_function=(!(A (B (D))+!A !(C))) */ ;
    defparam i15285_2_lut_rep_453_3_lut_4_lut_4_lut_4_lut.init = 16'h72fa;
    LUT4 led_c_bdd_2_lut_24258_3_lut_4_lut (.A(min_d_c), .B(n27628), .C(n27579), 
         .D(n27137), .Z(n27139)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/fpga/ds18b20/time.v(47[55:67])
    defparam led_c_bdd_2_lut_24258_3_lut_4_lut.init = 16'h7000;
    CCU2D ms_2276_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n121[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n21684), 
          .S1(n1[0]));   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276_add_4_1.INIT0 = 16'hF000;
    defparam ms_2276_add_4_1.INIT1 = 16'h0555;
    defparam ms_2276_add_4_1.INJECT1_0 = "NO";
    defparam ms_2276_add_4_1.INJECT1_1 = "NO";
    CCU2D clk_500ms_cnt_2275_add_4_11 (.A0(clk_500ms_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_500ms_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n21682), .S0(n49[9]), .S1(n49[10]));   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_500ms_cnt_2275_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_500ms_cnt_2275_add_4_11.INJECT1_0 = "NO";
    defparam clk_500ms_cnt_2275_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_500ms_cnt_2275_add_4_9 (.A0(clk_500ms_cnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_500ms_cnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n21681), .COUT(n21682), .S0(n49[7]), 
          .S1(n49[8]));   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_500ms_cnt_2275_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_500ms_cnt_2275_add_4_9.INJECT1_0 = "NO";
    defparam clk_500ms_cnt_2275_add_4_9.INJECT1_1 = "NO";
    LUT4 i23818_3_lut_4_lut_4_lut_3_lut_4_lut (.A(hour_a_c), .B(hour_d_c), 
         .C(n1211), .D(n27682), .Z(clk_500ms_enable_4)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;
    defparam i23818_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'hf8ff;
    LUT4 i23620_2_lut_2_lut_3_lut_3_lut_4_lut (.A(hour_a_c), .B(hour_d_c), 
         .C(n27682), .D(n25024), .Z(n12374)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (D))) */ ;
    defparam i23620_2_lut_2_lut_3_lut_3_lut_4_lut.init = 16'h007f;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(hour_a_c), .B(hour_d_c), .C(n27682), 
         .D(n17567), .Z(n2763)) /* synthesis lut_function=(!((B (C+(D))+!B (D))+!A)) */ ;
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h002a;
    LUT4 n26695_bdd_3_lut_4_lut (.A(hour_a_c), .B(hour_d_c), .C(n26692), 
         .D(n26695), .Z(n26696)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam n26695_bdd_3_lut_4_lut.init = 16'hf870;
    LUT4 i4628_4_lut (.A(n27645), .B(time_hour_high[0]), .C(n25510), .D(n27596), 
         .Z(n6900)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B ((D)+!C)+!B !((D)+!C)))) */ ;   // c:/fpga/ds18b20/time.v(52[11] 94[5])
    defparam i4628_4_lut.init = 16'h6c3c;
    LUT4 i23163_4_lut (.A(n1153), .B(n27590), .C(n15_adj_1665), .D(n27719), 
         .Z(n25510)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;
    defparam i23163_4_lut.init = 16'hccec;
    LUT4 i13024_4_lut (.A(hour_d_c), .B(hour_a_c), .C(time_hour_low[3]), 
         .D(time_hour_low[0]), .Z(n15_adj_1665)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/fpga/ds18b20/top.v(41[12:25])
    defparam i13024_4_lut.init = 16'h3005;
    LUT4 i1_4_lut (.A(n6900), .B(hour_set_high_3__N_1581[0]), .C(n6_adj_1666), 
         .D(hour_set_high_3__N_1581[3]), .Z(n25024)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    CCU2D clk_500ms_cnt_2275_add_4_7 (.A0(clk_500ms_cnt[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_500ms_cnt[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n21680), .COUT(n21681), .S0(n49[5]), 
          .S1(n49[6]));   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_500ms_cnt_2275_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_500ms_cnt_2275_add_4_7.INJECT1_0 = "NO";
    defparam clk_500ms_cnt_2275_add_4_7.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(hour_set_high_3__N_1581[1]), .B(n8354), .C(n8993), 
         .D(hour_set_high_3__N_1581[2]), .Z(n6_adj_1666)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_4_lut.init = 16'hfbff;
    LUT4 i23697_2_lut_rep_482_3_lut_4_lut (.A(hour_a_c), .B(hour_d_c), .C(min_d_c), 
         .D(min_a_c), .Z(n27597)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i23697_2_lut_rep_482_3_lut_4_lut.init = 16'h7fff;
    CCU2D clk_500ms_cnt_2275_add_4_5 (.A0(clk_500ms_cnt[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_500ms_cnt[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n21679), .COUT(n21680), .S0(n49[3]), 
          .S1(n49[4]));   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_500ms_cnt_2275_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_500ms_cnt_2275_add_4_5.INJECT1_0 = "NO";
    defparam clk_500ms_cnt_2275_add_4_5.INJECT1_1 = "NO";
    LUT4 i6076_3_lut (.A(n27240), .B(time_hour_high[1]), .C(n25510), .Z(n8354)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/fpga/ds18b20/time.v(52[11] 94[5])
    defparam i6076_3_lut.init = 16'hacac;
    LUT4 i3797_2_lut (.A(time_hour_high[1]), .B(time_hour_high[0]), .Z(n662[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/time.v(131[42:60])
    defparam i3797_2_lut.init = 16'h6666;
    LUT4 i14729_2_lut_rep_429_3_lut_3_lut_4_lut (.A(hour_a_c), .B(hour_d_c), 
         .C(n27682), .D(n1211), .Z(n27544)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;
    defparam i14729_2_lut_rep_429_3_lut_3_lut_4_lut.init = 16'h7f00;
    LUT4 i1_2_lut_rep_513_3_lut (.A(hour_a_c), .B(hour_d_c), .C(min_a_c), 
         .Z(n27628)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_513_3_lut.init = 16'h8080;
    CCU2D clk_500ms_cnt_2275_add_4_3 (.A0(clk_500ms_cnt[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_500ms_cnt[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n21678), .COUT(n21679), .S0(n49[1]), 
          .S1(n49[2]));   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_500ms_cnt_2275_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_500ms_cnt_2275_add_4_3.INJECT1_0 = "NO";
    defparam clk_500ms_cnt_2275_add_4_3.INJECT1_1 = "NO";
    LUT4 i23713_2_lut_2_lut_3_lut (.A(hour_a_c), .B(hour_d_c), .C(n27579), 
         .Z(n2613)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i23713_2_lut_2_lut_3_lut.init = 16'h7f7f;
    CCU2D clk_500ms_cnt_2275_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_500ms_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n21678), .S1(n49[0]));   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275_add_4_1.INIT0 = 16'hF000;
    defparam clk_500ms_cnt_2275_add_4_1.INIT1 = 16'h0555;
    defparam clk_500ms_cnt_2275_add_4_1.INJECT1_0 = "NO";
    defparam clk_500ms_cnt_2275_add_4_1.INJECT1_1 = "NO";
    PFUMX i24256 (.BLUT(n27139), .ALUT(n27136), .C0(n57), .Z(n27140));
    CCU2D clk_1ms_cnt_2278_add_4_13 (.A0(clk_1ms_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_1ms_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n21724), .S0(n2[11]), .S1(n2[12]));   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_1ms_cnt_2278_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_1ms_cnt_2278_add_4_13.INJECT1_0 = "NO";
    defparam clk_1ms_cnt_2278_add_4_13.INJECT1_1 = "NO";
    LUT4 i2_2_lut_adj_77 (.A(ms[15]), .B(ms[13]), .Z(n6_adj_1663)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/time.v(126[21:39])
    defparam i2_2_lut_adj_77.init = 16'h8888;
    LUT4 i23688_3_lut_rep_489 (.A(n25), .B(n25895), .C(n26), .Z(clk_1ms_enable_32)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/fpga/ds18b20/time.v(112[18:106])
    defparam i23688_3_lut_rep_489.init = 16'h0404;
    LUT4 i1_2_lut_2_lut_4_lut (.A(n25), .B(n25895), .C(n26), .D(n1169), 
         .Z(clk_1ms_enable_24)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/fpga/ds18b20/time.v(112[18:106])
    defparam i1_2_lut_2_lut_4_lut.init = 16'hfffb;
    LUT4 i1_4_lut_adj_78 (.A(ms[11]), .B(ms[10]), .C(ms[9]), .D(n21915), 
         .Z(n30)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/fpga/ds18b20/time.v(126[21:39])
    defparam i1_4_lut_adj_78.init = 16'ha888;
    CCU2D clk_1ms_cnt_2278_add_4_11 (.A0(clk_1ms_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_1ms_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n21723), .COUT(n21724), .S0(n2[9]), 
          .S1(n2[10]));   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_1ms_cnt_2278_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_1ms_cnt_2278_add_4_11.INJECT1_0 = "NO";
    defparam clk_1ms_cnt_2278_add_4_11.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_79 (.A(ms[8]), .B(ms[6]), .C(ms[7]), .D(ms[5]), 
         .Z(n21915)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut_adj_79.init = 16'hfefa;
    LUT4 i1_2_lut_2_lut_4_lut_adj_80 (.A(n25), .B(n25895), .C(n26), .D(n25045), 
         .Z(clk_1ms_enable_30)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/fpga/ds18b20/time.v(112[18:106])
    defparam i1_2_lut_2_lut_4_lut_adj_80.init = 16'hfffb;
    CCU2D clk_1ms_cnt_2278_add_4_9 (.A0(clk_1ms_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_1ms_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21722), .COUT(n21723), .S0(n2[7]), .S1(n2[8]));   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_1ms_cnt_2278_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_1ms_cnt_2278_add_4_9.INJECT1_0 = "NO";
    defparam clk_1ms_cnt_2278_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_1ms_cnt_2278_add_4_7 (.A0(clk_1ms_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_1ms_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21721), .COUT(n21722), .S0(n2[5]), .S1(n2[6]));   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_1ms_cnt_2278_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_1ms_cnt_2278_add_4_7.INJECT1_0 = "NO";
    defparam clk_1ms_cnt_2278_add_4_7.INJECT1_1 = "NO";
    LUT4 i23637_2_lut_4_lut (.A(n25), .B(n25895), .C(n26), .D(n25045), 
         .Z(n12384)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/fpga/ds18b20/time.v(112[18:106])
    defparam i23637_2_lut_4_lut.init = 16'h0400;
    CCU2D clk_1ms_cnt_2278_add_4_5 (.A0(clk_1ms_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_1ms_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21720), .COUT(n21721), .S0(n2[3]), .S1(n2[4]));   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_1ms_cnt_2278_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_1ms_cnt_2278_add_4_5.INJECT1_0 = "NO";
    defparam clk_1ms_cnt_2278_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_1ms_cnt_2278_add_4_3 (.A0(clk_1ms_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_1ms_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21719), .COUT(n21720), .S0(n2[1]), .S1(n2[2]));   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_1ms_cnt_2278_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_1ms_cnt_2278_add_4_3.INJECT1_0 = "NO";
    defparam clk_1ms_cnt_2278_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_1ms_cnt_2278_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_1ms_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n21719), .S1(n2[0]));   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278_add_4_1.INIT0 = 16'hF000;
    defparam clk_1ms_cnt_2278_add_4_1.INIT1 = 16'h0555;
    defparam clk_1ms_cnt_2278_add_4_1.INJECT1_0 = "NO";
    defparam clk_1ms_cnt_2278_add_4_1.INJECT1_1 = "NO";
    LUT4 time_hour_high_3__I_0_i4_4_lut (.A(n662[3]), .B(hour_set_high[3]), 
         .C(clk_1ms_enable_32), .D(n27648), .Z(time_hour_high_3__N_1463[3])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam time_hour_high_3__I_0_i4_4_lut.init = 16'h0cac;
    FD1S3IX hour_set_high__i3 (.D(n8350), .CK(clk_500ms), .CD(n12383), 
            .Q(hour_set_high[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(46[8] 101[4])
    defparam hour_set_high__i3.GSR = "DISABLED";
    FD1S3IX hour_set_high__i2 (.D(n8352), .CK(clk_500ms), .CD(n12383), 
            .Q(hour_set_high[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(46[8] 101[4])
    defparam hour_set_high__i2.GSR = "DISABLED";
    FD1S3IX hour_set_high__i1 (.D(n8354), .CK(clk_500ms), .CD(n12383), 
            .Q(hour_set_high[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(46[8] 101[4])
    defparam hour_set_high__i1.GSR = "DISABLED";
    LUT4 time_hour_high_3__I_0_i3_4_lut (.A(n27640), .B(hour_set_high[2]), 
         .C(clk_1ms_enable_32), .D(n27648), .Z(time_hour_high_3__N_1463[2])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam time_hour_high_3__I_0_i3_4_lut.init = 16'h0cac;
    LUT4 time_hour_high_3__I_0_i2_4_lut (.A(n662[1]), .B(hour_set_high[1]), 
         .C(clk_1ms_enable_32), .D(n27648), .Z(time_hour_high_3__N_1463[1])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam time_hour_high_3__I_0_i2_4_lut.init = 16'h0cac;
    FD1P3AX time_hour_high_i3 (.D(time_hour_high_3__N_1463[3]), .SP(clk_1ms_enable_21), 
            .CK(clk_1ms), .Q(time_hour_high[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(112[14] 140[8])
    defparam time_hour_high_i3.GSR = "ENABLED";
    FD1P3AX time_hour_high_i2 (.D(time_hour_high_3__N_1463[2]), .SP(clk_1ms_enable_21), 
            .CK(clk_1ms), .Q(time_hour_high[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(112[14] 140[8])
    defparam time_hour_high_i2.GSR = "ENABLED";
    FD1P3AX time_hour_high_i1 (.D(time_hour_high_3__N_1463[1]), .SP(clk_1ms_enable_21), 
            .CK(clk_1ms), .Q(time_hour_high[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(112[14] 140[8])
    defparam time_hour_high_i1.GSR = "ENABLED";
    FD1P3AX time_hour_low_i3 (.D(time_hour_low_3__N_1469[3]), .SP(clk_1ms_enable_24), 
            .CK(clk_1ms), .Q(time_hour_low[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(112[14] 140[8])
    defparam time_hour_low_i3.GSR = "ENABLED";
    FD1P3AX time_hour_low_i2 (.D(time_hour_low_3__N_1469[2]), .SP(clk_1ms_enable_24), 
            .CK(clk_1ms), .Q(time_hour_low[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(112[14] 140[8])
    defparam time_hour_low_i2.GSR = "ENABLED";
    FD1P3AX time_hour_low_i1 (.D(time_hour_low_3__N_1469[1]), .SP(clk_1ms_enable_24), 
            .CK(clk_1ms), .Q(time_hour_low[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(112[14] 140[8])
    defparam time_hour_low_i1.GSR = "ENABLED";
    FD1P3AX time_min_high_i3 (.D(time_min_high_3__N_1473[3]), .SP(clk_1ms_enable_27), 
            .CK(clk_1ms), .Q(time_min_high[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(112[14] 140[8])
    defparam time_min_high_i3.GSR = "ENABLED";
    FD1P3AX time_min_high_i2 (.D(time_min_high_3__N_1473[2]), .SP(clk_1ms_enable_27), 
            .CK(clk_1ms), .Q(time_min_high[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(112[14] 140[8])
    defparam time_min_high_i2.GSR = "ENABLED";
    FD1P3AX time_min_high_i1 (.D(time_min_high_3__N_1473[1]), .SP(clk_1ms_enable_27), 
            .CK(clk_1ms), .Q(time_min_high[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(112[14] 140[8])
    defparam time_min_high_i1.GSR = "ENABLED";
    FD1P3AX time_min_low_i3 (.D(time_min_low_3__N_1477[3]), .SP(clk_1ms_enable_30), 
            .CK(clk_1ms), .Q(time_min_low[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(112[14] 140[8])
    defparam time_min_low_i3.GSR = "ENABLED";
    FD1P3AX time_min_low_i2 (.D(time_min_low_3__N_1477[2]), .SP(clk_1ms_enable_30), 
            .CK(clk_1ms), .Q(time_min_low[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(112[14] 140[8])
    defparam time_min_low_i2.GSR = "ENABLED";
    FD1P3AX time_min_low_i1 (.D(time_min_low_3__N_1477[1]), .SP(clk_1ms_enable_30), 
            .CK(clk_1ms), .Q(time_min_low[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(112[14] 140[8])
    defparam time_min_low_i1.GSR = "ENABLED";
    FD1S3IX clk_500ms_cnt_2275__i10 (.D(n49[10]), .CK(clk_1ms), .CD(n12377), 
            .Q(clk_500ms_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275__i10.GSR = "ENABLED";
    LUT4 time_hour_low_3__I_0_i2_3_lut (.A(time_hour_low_3__N_1601[1]), .B(hour_set_low[1]), 
         .C(clk_1ms_enable_32), .Z(time_hour_low_3__N_1469[1])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam time_hour_low_3__I_0_i2_3_lut.init = 16'hacac;
    LUT4 i21_4_lut (.A(time_hour_low[1]), .B(time_hour_low[0]), .C(time_hour_low[3]), 
         .D(time_hour_low[2]), .Z(time_hour_low_3__N_1601[1])) /* synthesis lut_function=(!(A (B)+!A !(B ((D)+!C)))) */ ;
    defparam i21_4_lut.init = 16'h6626;
    FD1S3IX clk_500ms_cnt_2275__i9 (.D(n49[9]), .CK(clk_1ms), .CD(n12377), 
            .Q(clk_500ms_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275__i9.GSR = "ENABLED";
    FD1S3IX clk_500ms_cnt_2275__i8 (.D(n49[8]), .CK(clk_1ms), .CD(n12377), 
            .Q(clk_500ms_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275__i8.GSR = "ENABLED";
    LUT4 time_min_high_3__I_0_i4_4_lut (.A(n592[3]), .B(min_set_high[3]), 
         .C(clk_1ms_enable_32), .D(n7_adj_1672), .Z(time_min_high_3__N_1473[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam time_min_high_3__I_0_i4_4_lut.init = 16'hac0c;
    FD1S3IX clk_500ms_cnt_2275__i7 (.D(n49[7]), .CK(clk_1ms), .CD(n12377), 
            .Q(clk_500ms_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275__i7.GSR = "ENABLED";
    FD1S3IX clk_500ms_cnt_2275__i6 (.D(n49[6]), .CK(clk_1ms), .CD(n12377), 
            .Q(clk_500ms_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275__i6.GSR = "ENABLED";
    FD1S3IX clk_500ms_cnt_2275__i5 (.D(n49[5]), .CK(clk_1ms), .CD(n12377), 
            .Q(clk_500ms_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275__i5.GSR = "ENABLED";
    FD1S3IX clk_500ms_cnt_2275__i4 (.D(n49[4]), .CK(clk_1ms), .CD(n12377), 
            .Q(clk_500ms_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275__i4.GSR = "ENABLED";
    FD1S3IX clk_500ms_cnt_2275__i3 (.D(n49[3]), .CK(clk_1ms), .CD(n12377), 
            .Q(clk_500ms_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275__i3.GSR = "ENABLED";
    FD1S3IX clk_500ms_cnt_2275__i2 (.D(n49[2]), .CK(clk_1ms), .CD(n12377), 
            .Q(clk_500ms_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275__i2.GSR = "ENABLED";
    FD1S3IX clk_500ms_cnt_2275__i1 (.D(n49[1]), .CK(clk_1ms), .CD(n12377), 
            .Q(clk_500ms_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275__i1.GSR = "ENABLED";
    FD1S3IX min_set_high__i3 (.D(min_set_high_3__N_1585[3]), .CK(clk_500ms), 
            .CD(n12375), .Q(min_set_high[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(46[8] 101[4])
    defparam min_set_high__i3.GSR = "DISABLED";
    FD1S3IX min_set_high__i2 (.D(min_set_high_3__N_1585[2]), .CK(clk_500ms), 
            .CD(n12375), .Q(min_set_high[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(46[8] 101[4])
    defparam min_set_high__i2.GSR = "DISABLED";
    FD1S3IX min_set_high__i1 (.D(min_set_high_3__N_1585[1]), .CK(clk_500ms), 
            .CD(n12375), .Q(min_set_high[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(46[8] 101[4])
    defparam min_set_high__i1.GSR = "DISABLED";
    LUT4 time_min_high_3__I_0_i2_4_lut (.A(n27708), .B(min_set_high[1]), 
         .C(clk_1ms_enable_32), .D(n7_adj_1672), .Z(time_min_high_3__N_1473[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam time_min_high_3__I_0_i2_4_lut.init = 16'hac0c;
    LUT4 time_min_low_3__I_0_i4_4_lut (.A(n27704), .B(min_set_low[3]), .C(clk_1ms_enable_32), 
         .D(n7), .Z(time_min_low_3__N_1477[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam time_min_low_3__I_0_i4_4_lut.init = 16'hac0c;
    FD1S3IX hour_set_low__i3 (.D(hour_set_high_3__N_1581[3]), .CK(clk_500ms), 
            .CD(n12374), .Q(hour_set_low[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(46[8] 101[4])
    defparam hour_set_low__i3.GSR = "DISABLED";
    FD1S3IX hour_set_low__i2 (.D(hour_set_high_3__N_1581[2]), .CK(clk_500ms), 
            .CD(n12374), .Q(hour_set_low[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(46[8] 101[4])
    defparam hour_set_low__i2.GSR = "DISABLED";
    FD1S3IX hour_set_low__i1 (.D(hour_set_high_3__N_1581[1]), .CK(clk_500ms), 
            .CD(n12374), .Q(hour_set_low[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(46[8] 101[4])
    defparam hour_set_low__i1.GSR = "DISABLED";
    LUT4 time_min_low_3__I_0_i2_4_lut (.A(n27706), .B(min_set_low[1]), .C(clk_1ms_enable_32), 
         .D(n7), .Z(time_min_low_3__N_1477[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam time_min_low_3__I_0_i2_4_lut.init = 16'hac0c;
    LUT4 i3_4_lut_adj_81 (.A(n21769), .B(clk_500ms_cnt[8]), .C(clk_500ms_cnt[10]), 
         .D(clk_500ms_cnt[9]), .Z(n12377)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_81.init = 16'hfffe;
    LUT4 i5_4_lut (.A(clk_500ms_cnt[3]), .B(n7_adj_1673), .C(clk_500ms_cnt[6]), 
         .D(n8), .Z(n21769)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_82 (.A(clk_500ms_cnt[0]), .B(clk_500ms_cnt[4]), .C(clk_500ms_cnt[2]), 
         .D(clk_500ms_cnt[1]), .Z(n7_adj_1673)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_82.init = 16'hc8c0;
    LUT4 i2_2_lut_adj_83 (.A(clk_500ms_cnt[5]), .B(clk_500ms_cnt[7]), .Z(n8)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_83.init = 16'h8888;
    LUT4 mux_1314_i4_3_lut_4_lut (.A(n27590), .B(n27596), .C(n27573), 
         .D(time_hour_low[3]), .Z(n2713[3])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam mux_1314_i4_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1_4_lut_adj_84 (.A(time_min_high[3]), .B(n28852), .C(n26697), 
         .D(n27140), .Z(n12375)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;
    defparam i1_4_lut_adj_84.init = 16'h7350;
    LUT4 i3804_2_lut_rep_525_3_lut (.A(time_hour_high[1]), .B(time_hour_high[0]), 
         .C(time_hour_high[2]), .Z(n27640)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/time.v(131[42:60])
    defparam i3804_2_lut_rep_525_3_lut.init = 16'h7878;
    LUT4 i3811_3_lut_4_lut (.A(time_hour_high[1]), .B(time_hour_high[0]), 
         .C(time_hour_high[2]), .D(time_hour_high[3]), .Z(n662[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/fpga/ds18b20/time.v(131[42:60])
    defparam i3811_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3724_3_lut_4_lut_rep_589 (.A(time_min_low[1]), .B(time_min_low[0]), 
         .C(time_min_low[2]), .D(time_min_low[3]), .Z(n27704)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/fpga/ds18b20/time.v(122[28:44])
    defparam i3724_3_lut_4_lut_rep_589.init = 16'h7f80;
    LUT4 i2_3_lut_4_lut_4_lut (.A(time_min_low[1]), .B(time_min_low[0]), 
         .C(time_min_low[2]), .D(time_min_low[3]), .Z(n25282)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/fpga/ds18b20/time.v(122[28:44])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 i3931_2_lut_3_lut (.A(time_min_low[1]), .B(time_min_low[0]), .C(time_min_low[2]), 
         .Z(n6_adj_1674)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/fpga/ds18b20/time.v(89[24:39])
    defparam i3931_2_lut_3_lut.init = 16'hfefe;
    LUT4 i3710_2_lut_rep_591 (.A(time_min_low[1]), .B(time_min_low[0]), 
         .Z(n27706)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/time.v(122[28:44])
    defparam i3710_2_lut_rep_591.init = 16'h6666;
    FD1S3IX clk_1ms_cnt_2278__i12 (.D(n2[12]), .CK(sys_clk_c), .CD(n12417), 
            .Q(clk_1ms_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278__i12.GSR = "ENABLED";
    FD1S3IX clk_500ms_cnt_2275__i0 (.D(n49[0]), .CK(clk_1ms), .CD(n12377), 
            .Q(clk_500ms_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(35[26:43])
    defparam clk_500ms_cnt_2275__i0.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut (.A(time_min_low[1]), .B(time_min_low[0]), .C(min_a_c), 
         .Z(n10321)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/fpga/ds18b20/time.v(122[28:44])
    defparam i2_2_lut_3_lut.init = 16'h9696;
    LUT4 i3739_2_lut_rep_593 (.A(time_min_high[1]), .B(time_min_high[0]), 
         .Z(n27708)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/time.v(125[33:50])
    defparam i3739_2_lut_rep_593.init = 16'h6666;
    LUT4 mux_1282_i2_3_lut_4_lut_4_lut (.A(time_min_high[1]), .B(time_min_high[0]), 
         .C(min_a_c), .D(n27723), .Z(n2653[1])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A !(B (C (D))+!B ((D)+!C))) */ ;   // c:/fpga/ds18b20/time.v(125[33:50])
    defparam mux_1282_i2_3_lut_4_lut_4_lut.init = 16'ha656;
    FD1P3AX min_set_low_i0_i3 (.D(n2487[3]), .SP(clk_500ms_enable_4), .CK(clk_500ms), 
            .Q(min_set_low[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(46[8] 101[4])
    defparam min_set_low_i0_i3.GSR = "DISABLED";
    FD1P3AX min_set_low_i0_i2 (.D(n2487[2]), .SP(clk_500ms_enable_4), .CK(clk_500ms), 
            .Q(min_set_low[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(46[8] 101[4])
    defparam min_set_low_i0_i2.GSR = "DISABLED";
    FD1P3AX min_set_low_i0_i1 (.D(n2487[1]), .SP(clk_500ms_enable_4), .CK(clk_500ms), 
            .Q(min_set_low[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(46[8] 101[4])
    defparam min_set_low_i0_i1.GSR = "DISABLED";
    FD1P3IX ms_2276__i4 (.D(n1[4]), .SP(clk_1ms_enable_32), .CD(n12384), 
            .CK(clk_1ms), .Q(n121[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276__i4.GSR = "ENABLED";
    FD1S3IX min_set_high__i0 (.D(min_set_high_3__N_1585[0]), .CK(clk_500ms), 
            .CD(n12375), .Q(min_set_high[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(46[8] 101[4])
    defparam min_set_high__i0.GSR = "DISABLED";
    FD1S3IX hour_set_low__i0 (.D(hour_set_high_3__N_1581[0]), .CK(clk_500ms), 
            .CD(n12374), .Q(hour_set_low[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=172, LSE_RLINE=184 */ ;   // c:/fpga/ds18b20/time.v(46[8] 101[4])
    defparam hour_set_low__i0.GSR = "DISABLED";
    LUT4 i3741_2_lut_rep_601 (.A(time_min_high[1]), .B(time_min_high[0]), 
         .Z(n27716)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/time.v(125[33:50])
    defparam i3741_2_lut_rep_601.init = 16'h8888;
    LUT4 i3753_3_lut_4_lut (.A(time_min_high[1]), .B(time_min_high[0]), 
         .C(time_min_high[2]), .D(time_min_high[3]), .Z(n592[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/fpga/ds18b20/time.v(125[33:50])
    defparam i3753_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_4_lut_rep_458 (.A(n27590), .B(n21876), .C(n27648), .D(hour_a_c), 
         .Z(n27573)) /* synthesis lut_function=(A+(B ((D)+!C)+!B !(C+(D)))) */ ;
    defparam i1_4_lut_rep_458.init = 16'heeaf;
    LUT4 i3782_3_lut_4_lut (.A(time_hour_low[1]), .B(time_hour_low[0]), 
         .C(time_hour_low[2]), .D(time_hour_low[3]), .Z(n627[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/fpga/ds18b20/time.v(68[28:44])
    defparam i3782_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3867_2_lut_3_lut (.A(time_hour_low[1]), .B(time_hour_low[0]), 
         .C(time_hour_low[2]), .Z(n6_adj_1675)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/fpga/ds18b20/time.v(68[28:44])
    defparam i3867_2_lut_3_lut.init = 16'hfefe;
    LUT4 mux_1170_i1_4_lut (.A(time_min_low[0]), .B(n5243), .C(n2486), 
         .D(n27544), .Z(n2487[0])) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A !(B (C (D))+!B (C))) */ ;   // c:/fpga/ds18b20/time.v(52[11] 94[5])
    defparam mux_1170_i1_4_lut.init = 16'ha5c5;
    PFUMX i1299 (.BLUT(n21877), .ALUT(n2688), .C0(hour_a_c), .Z(n1153));
    LUT4 i4_4_lut_adj_85 (.A(min_d_c), .B(n27677), .C(n27628), .D(n6_adj_1676), 
         .Z(n5243)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i4_4_lut_adj_85.init = 16'h1000;
    LUT4 i1_3_lut_3_lut (.A(clk_1ms_enable_32), .B(n25045), .C(n7), .Z(clk_1ms_enable_27)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;   // c:/fpga/ds18b20/time.v(112[18:106])
    defparam i1_3_lut_3_lut.init = 16'h5d5d;
    FD1S3IX clk_1ms_cnt_2278__i0 (.D(n2[0]), .CK(sys_clk_c), .CD(n12417), 
            .Q(clk_1ms_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(22[24:39])
    defparam clk_1ms_cnt_2278__i0.GSR = "ENABLED";
    FD1P3AX clk_1ms_140 (.D(clk_1ms_N_1630), .SP(sys_rst_n_c), .CK(sys_clk_c), 
            .Q(clk_1ms));   // c:/fpga/ds18b20/time.v(21[14] 26[8])
    defparam clk_1ms_140.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_86 (.A(min_a_c), .B(n28852), .C(n27562), .D(min_d_c), 
         .Z(n1211)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/fpga/ds18b20/top.v(6[25:31])
    defparam i1_4_lut_adj_86.init = 16'hccce;
    FD1P3AX clk_500ms_142 (.D(clk_500ms_N_1632), .SP(sys_rst_n_c), .CK(clk_1ms), 
            .Q(clk_500ms));   // c:/fpga/ds18b20/time.v(34[14] 39[8])
    defparam clk_500ms_142.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut (.A(n27722), .B(time_min_high[0]), .C(time_min_high[2]), 
         .D(n27680), .Z(n6_adj_1676)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/time.v(126[21:39])
    defparam i1_2_lut_4_lut.init = 16'hfe00;
    LUT4 i1_4_lut_4_lut (.A(clk_1ms_enable_32), .B(n4), .C(n1169), .D(n11), 
         .Z(clk_1ms_enable_21)) /* synthesis lut_function=((B (C (D)))+!A) */ ;   // c:/fpga/ds18b20/time.v(112[18:106])
    defparam i1_4_lut_4_lut.init = 16'hd555;
    FD1P3IX ms_2276__i5 (.D(n1[5]), .SP(clk_1ms_enable_32), .CD(n12384), 
            .CK(clk_1ms), .Q(ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/time.v(119[18:24])
    defparam ms_2276__i5.GSR = "ENABLED";
    PFUMX i24484 (.BLUT(n27747), .ALUT(n27748), .C0(min_a_c), .Z(n2486));
    LUT4 i14724_2_lut_rep_481_3_lut_4_lut (.A(time_hour_low[3]), .B(time_hour_low[0]), 
         .C(hour_a_c), .D(n27719), .Z(n27596)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i14724_2_lut_rep_481_3_lut_4_lut.init = 16'hfff7;
    LUT4 i14536_2_lut_rep_604 (.A(time_hour_low[1]), .B(time_hour_low[2]), 
         .Z(n27719)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14536_2_lut_rep_604.init = 16'heeee;
    LUT4 i2_2_lut_rep_533_3_lut_4_lut (.A(time_hour_low[1]), .B(time_hour_low[2]), 
         .C(time_hour_low[0]), .D(time_hour_low[3]), .Z(n27648)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i2_2_lut_rep_533_3_lut_4_lut.init = 16'hefff;
    LUT4 i2_3_lut_4_lut_adj_87 (.A(time_hour_low[1]), .B(time_hour_low[2]), 
         .C(time_hour_low[3]), .D(time_hour_low[0]), .Z(n10387)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_87.init = 16'hfffe;
    LUT4 i23164_3_lut_rep_605 (.A(time_hour_high[2]), .B(time_hour_high[3]), 
         .C(time_hour_high[0]), .Z(n27720)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i23164_3_lut_rep_605.init = 16'hfefe;
    LUT4 i15457_2_lut_rep_530_4_lut (.A(time_hour_high[2]), .B(time_hour_high[3]), 
         .C(time_hour_high[0]), .D(time_hour_high[1]), .Z(n27645)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15457_2_lut_rep_530_4_lut.init = 16'hfffe;
    LUT4 i14932_2_lut_rep_606 (.A(time_min_high[0]), .B(time_min_high[2]), 
         .Z(n27721)) /* synthesis lut_function=(A (B)) */ ;
    defparam i14932_2_lut_rep_606.init = 16'h8888;
    LUT4 i15210_2_lut_rep_607 (.A(time_min_high[3]), .B(time_min_high[1]), 
         .Z(n27722)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i15210_2_lut_rep_607.init = 16'heeee;
    LUT4 i2_3_lut_rep_518_4_lut (.A(time_min_high[3]), .B(time_min_high[1]), 
         .C(time_min_high[2]), .D(time_min_high[0]), .Z(n27633)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_518_4_lut.init = 16'hfffe;
    LUT4 i3891_2_lut_rep_454_3_lut_4_lut_4_lut (.A(time_min_high[3]), .B(time_min_high[1]), 
         .C(time_min_high[2]), .D(time_min_high[0]), .Z(n27569)) /* synthesis lut_function=(A (B+(D))+!A (B+((D)+!C))) */ ;
    defparam i3891_2_lut_rep_454_3_lut_4_lut_4_lut.init = 16'hffcd;
    LUT4 i1_2_lut_3_lut_4_lut (.A(time_min_high[3]), .B(time_min_high[1]), 
         .C(time_min_high[2]), .D(time_min_high[0]), .Z(n7_adj_1672)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hefff;
    LUT4 i3883_2_lut_rep_608 (.A(time_min_high[3]), .B(time_min_high[1]), 
         .C(time_min_high[2]), .D(time_min_high[0]), .Z(n27723)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i3883_2_lut_rep_608.init = 16'hff01;
    LUT4 i93_3_lut_4_lut_4_lut (.A(time_min_high[3]), .B(time_min_high[1]), 
         .C(time_min_high[2]), .D(time_min_high[0]), .Z(n51_adj_1677)) /* synthesis lut_function=(!(A (B+(C+(D))))) */ ;
    defparam i93_3_lut_4_lut_4_lut.init = 16'h5557;
    LUT4 i4175_3_lut_3_lut_4_lut (.A(n27722), .B(time_min_high[0]), .C(time_min_high[2]), 
         .D(min_a_c), .Z(n6433)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;   // c:/fpga/ds18b20/time.v(126[21:39])
    defparam i4175_3_lut_3_lut_4_lut.init = 16'h3233;
    LUT4 time_min_high_1__bdd_4_lut_24664 (.A(min_a_c), .B(time_min_high[3]), 
         .C(time_min_high[2]), .D(time_min_high[0]), .Z(n27135)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam time_min_high_1__bdd_4_lut_24664.init = 16'h2000;
    LUT4 led_c_bdd_2_lut_24254 (.A(n27135), .B(time_min_high[1]), .Z(n27136)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_c_bdd_2_lut_24254.init = 16'h8888;
    LUT4 n17_bdd_4_lut (.A(min_set_high[2]), .B(min_set_high[0]), .C(min_set_high[1]), 
         .D(min_set_high[3]), .Z(n27137)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam n17_bdd_4_lut.init = 16'h0020;
    LUT4 n27741_bdd_4_lut (.A(n27741), .B(n27742), .C(time_hour_high[2]), 
         .D(n25510), .Z(n8352)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam n27741_bdd_4_lut.init = 16'hcaf0;
    LUT4 i23716_2_lut_2_lut_3_lut_4_lut_4_lut (.A(n27680), .B(n27633), .C(sys_clk_c_enable_162), 
         .D(n27677), .Z(n12482)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i23716_2_lut_2_lut_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 n27776_bdd_4_lut (.A(n27776), .B(n27777), .C(time_hour_high[3]), 
         .D(n25510), .Z(n8350)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam n27776_bdd_4_lut.init = 16'hcaf0;
    LUT4 hour_set_low_3__bdd_4_lut (.A(time_hour_low[3]), .B(time_hour_low[0]), 
         .C(time_hour_low[2]), .D(time_hour_low[1]), .Z(n27172)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B (C (D))))) */ ;
    defparam hour_set_low_3__bdd_4_lut.init = 16'h6aa2;
    LUT4 hour_set_low_3__bdd_3_lut (.A(hour_set_low[3]), .B(n27172), .C(clk_1ms_enable_32), 
         .Z(time_hour_low_3__N_1469[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam hour_set_low_3__bdd_3_lut.init = 16'hcaca;
    LUT4 time_min_high_3__I_0_i3_4_lut_else_4_lut (.A(min_set_high[2]), .Z(n27764)) /* synthesis lut_function=(A) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam time_min_high_3__I_0_i3_4_lut_else_4_lut.init = 16'haaaa;
    LUT4 i14985_2_lut_3_lut_4_lut_4_lut (.A(n28852), .B(n1211), .C(time_min_low[2]), 
         .D(n27682), .Z(n2555[2])) /* synthesis lut_function=(A (B (C))+!A !(((D)+!C)+!B)) */ ;
    defparam i14985_2_lut_3_lut_4_lut_4_lut.init = 16'h80c0;
    LUT4 i14524_3_lut_4_lut_4_lut (.A(n28852), .B(n8352), .C(n8350), .D(n27682), 
         .Z(n8993)) /* synthesis lut_function=(A (B+(C))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam i14524_3_lut_4_lut_4_lut.init = 16'ha8fc;
    LUT4 i14986_2_lut_3_lut_4_lut_4_lut (.A(n28852), .B(n1211), .C(time_min_low[1]), 
         .D(n27682), .Z(n2555[1])) /* synthesis lut_function=(A (B (C))+!A !(((D)+!C)+!B)) */ ;
    defparam i14986_2_lut_3_lut_4_lut_4_lut.init = 16'h80c0;
    LUT4 time_hour_high_1__bdd_4_lut (.A(time_hour_high[1]), .B(n27596), 
         .C(n27720), .D(time_hour_high[0]), .Z(n27240)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A !(B ((D)+!C)+!B !(D))) */ ;
    defparam time_hour_high_1__bdd_4_lut.init = 16'h9962;
    LUT4 mux_4124_i3_4_lut (.A(n627[3]), .B(time_hour_low[3]), .C(hour_a_c), 
         .D(n6_adj_1675), .Z(n6346[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C))) */ ;   // c:/fpga/ds18b20/time.v(52[11] 94[5])
    defparam mux_4124_i3_4_lut.init = 16'hca3a;
    LUT4 mux_4125_i3_4_lut (.A(n27704), .B(time_min_low[3]), .C(min_a_c), 
         .D(n6_adj_1674), .Z(n6350[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C))) */ ;   // c:/fpga/ds18b20/time.v(52[11] 94[5])
    defparam mux_4125_i3_4_lut.init = 16'hca3a;
    LUT4 mux_1247_i1_4_lut (.A(min_set_high[0]), .B(time_min_high[0]), .C(n2613), 
         .D(n27597), .Z(n2614[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/fpga/ds18b20/time.v(52[11] 94[5])
    defparam mux_1247_i1_4_lut.init = 16'hcac0;
    LUT4 mux_1247_i4_4_lut (.A(min_set_high[3]), .B(time_min_high[3]), .C(n2613), 
         .D(n27597), .Z(n2614[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/fpga/ds18b20/time.v(52[11] 94[5])
    defparam mux_1247_i4_4_lut.init = 16'hcac0;
    LUT4 mux_1282_i4_3_lut (.A(n592[3]), .B(n51_adj_1677), .C(min_a_c), 
         .Z(n2653[3])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/fpga/ds18b20/time.v(52[11] 94[5])
    defparam mux_1282_i4_3_lut.init = 16'h3a3a;
    LUT4 mux_1247_i3_4_lut (.A(min_set_high[2]), .B(time_min_high[2]), .C(n2613), 
         .D(n27597), .Z(n2614[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/fpga/ds18b20/time.v(52[11] 94[5])
    defparam mux_1247_i3_4_lut.init = 16'hcac0;
    LUT4 mux_1247_i2_4_lut (.A(min_set_high[1]), .B(time_min_high[1]), .C(n2613), 
         .D(n27597), .Z(n2614[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/fpga/ds18b20/time.v(52[11] 94[5])
    defparam mux_1247_i2_4_lut.init = 16'hcac0;
    LUT4 n7_bdd_4_lut_rep_464 (.A(n27589), .B(min_d_c), .C(n25282), .D(min_a_c), 
         .Z(n27579)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A (C+(D))) */ ;
    defparam n7_bdd_4_lut_rep_464.init = 16'hddf0;
    PFUMX i23983 (.BLUT(n26694), .ALUT(n26693), .C0(n57), .Z(n26695));
    LUT4 mux_1284_i3_4_lut_4_lut_then_3_lut (.A(time_hour_high[0]), .B(time_hour_high[1]), 
         .C(n27596), .Z(n27742)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // c:/fpga/ds18b20/time.v(131[42:60])
    defparam mux_1284_i3_4_lut_4_lut_then_3_lut.init = 16'he7e7;
    LUT4 mux_1284_i3_4_lut_4_lut_else_3_lut (.A(time_hour_high[0]), .B(time_hour_high[1]), 
         .C(time_hour_high[3]), .D(n27596), .Z(n27741)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B+!(C (D))))) */ ;   // c:/fpga/ds18b20/time.v(131[42:60])
    defparam mux_1284_i3_4_lut_4_lut_else_3_lut.init = 16'h1088;
    PFUMX i23976 (.BLUT(n26683), .ALUT(n26682), .C0(n2525), .Z(hour_set_high_3__N_1581[2]));
    LUT4 mux_1282_i3_3_lut_4_lut_4_lut (.A(time_min_high[2]), .B(n27716), 
         .C(min_a_c), .D(n27569), .Z(n2653[2])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A !(B (C (D))+!B ((D)+!C))) */ ;   // c:/fpga/ds18b20/time.v(125[33:50])
    defparam mux_1282_i3_3_lut_4_lut_4_lut.init = 16'ha656;
    LUT4 i2_3_lut_4_lut_adj_88 (.A(time_hour_high[1]), .B(n27720), .C(hour_d_c), 
         .D(n10387), .Z(n21876)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_88.init = 16'h000e;
    LUT4 time_min_low_3__I_0_i3_4_lut_then_4_lut (.A(min_set_low[2]), .B(clk_1ms_enable_32), 
         .C(time_min_low[0]), .D(time_min_low[2]), .Z(n27762)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam time_min_low_3__I_0_i3_4_lut_then_4_lut.init = 16'h2ee2;
    PFUMX i23962 (.BLUT(n26657), .ALUT(n26656), .C0(n2525), .Z(hour_set_high_3__N_1581[1]));
    LUT4 i1_2_lut_adj_89 (.A(clk_1ms), .B(n12417), .Z(clk_1ms_N_1630)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_89.init = 16'h6666;
    LUT4 mux_1200_i4_3_lut_3_lut_4_lut (.A(n1211), .B(n27590), .C(time_min_low[3]), 
         .D(n5243), .Z(n2555[3])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_1200_i4_3_lut_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut_adj_90 (.A(clk_500ms), .B(n12377), .Z(clk_500ms_N_1632)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_90.init = 16'h6666;
    LUT4 mux_1189_i1_4_lut_4_lut (.A(n27573), .B(n2525), .C(n27568), .D(time_hour_low[0]), 
         .Z(hour_set_high_3__N_1581[0])) /* synthesis lut_function=(A (B (C)+!B !(D))+!A (B (D)+!B !(D))) */ ;
    defparam mux_1189_i1_4_lut_4_lut.init = 16'hc4b3;
    LUT4 time_min_low_3__I_0_i3_4_lut_else_4_lut (.A(min_set_low[2]), .B(clk_1ms_enable_32), 
         .C(time_min_low[2]), .Z(n27761)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam time_min_low_3__I_0_i3_4_lut_else_4_lut.init = 16'he2e2;
    PFUMX i24508 (.BLUT(n27785), .ALUT(n27786), .C0(time_hour_low[3]), 
          .Z(n2525));
    LUT4 time_min_high_3__I_0_i3_4_lut_then_4_lut (.A(time_min_high[1]), .B(time_min_high[0]), 
         .C(time_min_high[2]), .D(time_min_high[3]), .Z(n27765)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C (D))+!B (C)))) */ ;   // c:/fpga/ds18b20/time.v(117[14] 140[8])
    defparam time_min_high_3__I_0_i3_4_lut_then_4_lut.init = 16'h7838;
    PFUMX i24504 (.BLUT(n27779), .ALUT(n27780), .C0(min_a_c), .Z(n2505));
    PFUMX i24496 (.BLUT(n27767), .ALUT(n27768), .C0(clk_1ms_enable_32), 
          .Z(time_hour_low_3__N_1469[2]));
    PFUMX i24494 (.BLUT(n27764), .ALUT(n27765), .C0(clk_1ms_enable_32), 
          .Z(time_min_high_3__N_1473[2]));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Beeper
//

module Beeper (sys_clk_c, tone, piano_out_c, oled_update, GND_net, 
            tone_en_c) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input [4:0]tone;
    output piano_out_c;
    output oled_update;
    input GND_net;
    input tone_en_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/fpga/ds18b20/top.v(2[25:32])
    wire [17:0]time_cnt;   // c:/fpga/ds18b20/pwm.v(70[12:20])
    
    wire n1110;
    wire [17:0]n77;
    
    wire n27534, piano_out_N_1370, n6713, n6818, n6711, n27771, 
        n27770, n29, n34, n30;
    wire [17:0]n2836;
    
    wire n31, n28, n4, n21655, n21656, n27288, n27287, n27289, 
        n21654, n21653, n27242, n27241, n27243, n17550, n22, n6847, 
        n25664, n22_adj_1661, n6785, n21718, n2855, n6773, n21717, 
        n22_adj_1662, n21716;
    wire [15:0]time_end;   // c:/fpga/ds18b20/pwm.v(33[12:20])
    
    wire n21715, n6701, n21714, n25665, n25663, n7, n21713, n27760, 
        n21712, n27759, n21711, n21710, n6657, n21661, n21660, 
        n21659, n21658, n21657;
    
    FD1S3IX time_cnt_2269__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i0.GSR = "ENABLED";
    LUT4 n21_bdd_4_lut_4_lut (.A(tone[0]), .B(tone[1]), .C(tone[2]), .D(tone[4]), 
         .Z(n27534)) /* synthesis lut_function=(A (B (C+(D))+!B !(C))+!A (B (C (D)+!C !(D))+!B !((D)+!C))) */ ;
    defparam n21_bdd_4_lut_4_lut.init = 16'hca96;
    FD1S3AX piano_out_21 (.D(piano_out_N_1370), .CK(sys_clk_c), .Q(piano_out_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=157 */ ;   // c:/fpga/ds18b20/pwm.v(88[11] 92[5])
    defparam piano_out_21.GSR = "ENABLED";
    LUT4 i4446_3_lut_4_lut_4_lut (.A(tone[0]), .B(tone[1]), .C(tone[2]), 
         .D(tone[4]), .Z(n6713)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (B (C))) */ ;   // c:/fpga/ds18b20/pwm.v(39[2] 67[9])
    defparam i4446_3_lut_4_lut_4_lut.init = 16'he0e2;
    LUT4 i4547_3_lut_4_lut (.A(tone[0]), .B(tone[1]), .C(tone[2]), .D(tone[4]), 
         .Z(n6818)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((C (D))+!B))) */ ;   // c:/fpga/ds18b20/pwm.v(39[2] 67[9])
    defparam i4547_3_lut_4_lut.init = 16'h26e4;
    LUT4 i4444_4_lut_4_lut (.A(tone[0]), .B(tone[1]), .C(tone[2]), .D(tone[4]), 
         .Z(n6711)) /* synthesis lut_function=(!(A (B)+!A !(B (C (D)+!C !(D))))) */ ;   // c:/fpga/ds18b20/pwm.v(39[2] 67[9])
    defparam i4444_4_lut_4_lut.init = 16'h6226;
    LUT4 i1_4_lut_then_3_lut (.A(tone[3]), .B(tone[4]), .C(tone[2]), .Z(n27771)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/fpga/ds18b20/pwm.v(39[2] 67[9])
    defparam i1_4_lut_then_3_lut.init = 16'h1414;
    LUT4 i1_4_lut_else_3_lut (.A(tone[3]), .B(tone[0]), .C(tone[4]), .D(tone[2]), 
         .Z(n27770)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C (D))))) */ ;   // c:/fpga/ds18b20/pwm.v(39[2] 67[9])
    defparam i1_4_lut_else_3_lut.init = 16'h1440;
    LUT4 i1_4_lut (.A(piano_out_c), .B(n29), .C(n34), .D(n30), .Z(piano_out_N_1370)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    LUT4 i11_4_lut (.A(n2836[1]), .B(n2836[6]), .C(n2836[16]), .D(n2836[2]), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(n31), .B(n2836[5]), .C(n28), .D(n2836[11]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(n2836[10]), .B(n2836[4]), .C(n2836[8]), .D(n2836[13]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(n2836[14]), .B(n2836[17]), .C(n2836[15]), .D(n2836[9]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(n2836[12]), .B(n2836[7]), .C(n2836[0]), .D(n2836[3]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i4289_3_lut (.A(n4), .B(tone[4]), .C(tone[3]), .Z(oled_update)) /* synthesis lut_function=(A (C)+!A (B+!(C))) */ ;   // c:/fpga/ds18b20/pwm.v(39[2] 67[9])
    defparam i4289_3_lut.init = 16'he5e5;
    LUT4 i1_3_lut (.A(tone[0]), .B(tone[1]), .C(tone[2]), .Z(n4)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/fpga/ds18b20/pwm.v(39[2] 67[9])
    defparam i1_3_lut.init = 16'hfefe;
    CCU2D time_cnt_2269_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21655), .COUT(n21656), .S0(n77[5]), .S1(n77[6]));   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_2269_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_2269_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_2269_add_4_7.INJECT1_1 = "NO";
    PFUMX i24332 (.BLUT(n27288), .ALUT(n27287), .C0(tone[1]), .Z(n27289));
    CCU2D time_cnt_2269_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21654), .COUT(n21655), .S0(n77[3]), .S1(n77[4]));   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_2269_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_2269_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_2269_add_4_5.INJECT1_1 = "NO";
    CCU2D time_cnt_2269_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21653), .COUT(n21654), .S0(n77[1]), .S1(n77[2]));   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_2269_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_2269_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_2269_add_4_3.INJECT1_1 = "NO";
    PFUMX i24312 (.BLUT(n27242), .ALUT(n27241), .C0(tone[2]), .Z(n27243));
    LUT4 i15277_3_lut (.A(tone[2]), .B(tone[1]), .C(tone[0]), .Z(n17550)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/fpga/ds18b20/pwm.v(39[2] 67[9])
    defparam i15277_3_lut.init = 16'h4c4c;
    LUT4 i14597_2_lut (.A(tone[0]), .B(tone[2]), .Z(n22)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/pwm.v(39[2] 67[9])
    defparam i14597_2_lut.init = 16'heeee;
    CCU2D time_cnt_2269_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n21653), .S1(n77[0]));   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_2269_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_2269_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_2269_add_4_1.INJECT1_1 = "NO";
    LUT4 i5959_4_lut_4_lut (.A(tone[0]), .B(tone[1]), .C(tone[4]), .D(tone[2]), 
         .Z(n6847)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D))+!B !(C+!(D)))) */ ;   // c:/fpga/ds18b20/pwm.v(39[2] 67[9])
    defparam i5959_4_lut_4_lut.init = 16'hcbcc;
    LUT4 i23309_3_lut_3_lut (.A(tone[0]), .B(tone[1]), .C(tone[2]), .Z(n25664)) /* synthesis lut_function=(A (B+(C))+!A !(B (C)+!B !(C))) */ ;   // c:/fpga/ds18b20/pwm.v(39[2] 67[9])
    defparam i23309_3_lut_3_lut.init = 16'hbcbc;
    LUT4 tone_4__I_0_24_Mux_11_i22_3_lut_3_lut (.A(tone[0]), .B(tone[1]), 
         .C(tone[2]), .Z(n22_adj_1661)) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // c:/fpga/ds18b20/pwm.v(39[2] 67[9])
    defparam tone_4__I_0_24_Mux_11_i22_3_lut_3_lut.init = 16'ha6a6;
    LUT4 i4515_4_lut_4_lut (.A(tone[0]), .B(tone[1]), .C(tone[2]), .D(tone[4]), 
         .Z(n6785)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)+!C !(D)))+!A !(B (C+(D))+!B !(C))) */ ;   // c:/fpga/ds18b20/pwm.v(39[2] 67[9])
    defparam i4515_4_lut_4_lut.init = 16'h9a3c;
    CCU2D add_1383_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21718), .S0(n2836[17]), .S1(n2855));   // c:/fpga/ds18b20/pwm.v(77[14:32])
    defparam add_1383_19.INIT0 = 16'h5555;
    defparam add_1383_19.INIT1 = 16'h0000;
    defparam add_1383_19.INJECT1_0 = "NO";
    defparam add_1383_19.INJECT1_1 = "NO";
    LUT4 i4504_4_lut_4_lut (.A(tone[0]), .B(tone[1]), .C(tone[2]), .D(tone[4]), 
         .Z(n6773)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (B (C (D))+!B !(C)))) */ ;   // c:/fpga/ds18b20/pwm.v(39[2] 67[9])
    defparam i4504_4_lut_4_lut.init = 16'h3cd6;
    CCU2D add_1383_17 (.A0(time_cnt[15]), .B0(tone[4]), .C0(tone[3]), 
          .D0(n22_adj_1662), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21717), .COUT(n21718), .S0(n2836[15]), 
          .S1(n2836[16]));   // c:/fpga/ds18b20/pwm.v(77[14:32])
    defparam add_1383_17.INIT0 = 16'h5655;
    defparam add_1383_17.INIT1 = 16'h5555;
    defparam add_1383_17.INJECT1_0 = "NO";
    defparam add_1383_17.INJECT1_1 = "NO";
    CCU2D add_1383_15 (.A0(n6713), .B0(tone[3]), .C0(time_cnt[13]), .D0(GND_net), 
          .A1(time_cnt[14]), .B1(time_end[14]), .C1(GND_net), .D1(GND_net), 
          .CIN(n21716), .COUT(n21717), .S0(n2836[13]), .S1(n2836[14]));   // c:/fpga/ds18b20/pwm.v(77[14:32])
    defparam add_1383_15.INIT0 = 16'h2d2d;
    defparam add_1383_15.INIT1 = 16'h5999;
    defparam add_1383_15.INJECT1_0 = "NO";
    defparam add_1383_15.INJECT1_1 = "NO";
    CCU2D add_1383_13 (.A0(n6701), .B0(tone[3]), .C0(time_cnt[11]), .D0(GND_net), 
          .A1(n6711), .B1(tone[3]), .C1(time_cnt[12]), .D1(GND_net), 
          .CIN(n21715), .COUT(n21716), .S0(n2836[11]), .S1(n2836[12]));   // c:/fpga/ds18b20/pwm.v(77[14:32])
    defparam add_1383_13.INIT0 = 16'h2d2d;
    defparam add_1383_13.INIT1 = 16'h2d2d;
    defparam add_1383_13.INJECT1_0 = "NO";
    defparam add_1383_13.INJECT1_1 = "NO";
    CCU2D add_1383_11 (.A0(n25665), .B0(tone[3]), .C0(time_cnt[9]), .D0(GND_net), 
          .A1(n6847), .B1(tone[3]), .C1(time_cnt[10]), .D1(GND_net), 
          .CIN(n21714), .COUT(n21715), .S0(n2836[9]), .S1(n2836[10]));   // c:/fpga/ds18b20/pwm.v(77[14:32])
    defparam add_1383_11.INIT0 = 16'h2d2d;
    defparam add_1383_11.INIT1 = 16'h2d2d;
    defparam add_1383_11.INJECT1_0 = "NO";
    defparam add_1383_11.INJECT1_1 = "NO";
    LUT4 n21_bdd_4_lut_4_lut_adj_72 (.A(tone[0]), .B(tone[1]), .C(tone[2]), 
         .D(tone[4]), .Z(n27287)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A !(B+(C (D)+!C !(D)))) */ ;
    defparam n21_bdd_4_lut_4_lut_adj_72.init = 16'ha11a;
    LUT4 n21_bdd_3_lut_24311_3_lut (.A(tone[0]), .B(tone[1]), .C(tone[4]), 
         .Z(n27241)) /* synthesis lut_function=(!(A (C)+!A (B+!(C)))) */ ;
    defparam n21_bdd_3_lut_24311_3_lut.init = 16'h1a1a;
    LUT4 i23308_3_lut_4_lut_3_lut (.A(tone[0]), .B(tone[1]), .C(tone[2]), 
         .Z(n25663)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam i23308_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 n21_bdd_3_lut_24353_4_lut (.A(tone[0]), .B(tone[1]), .C(tone[2]), 
         .D(tone[4]), .Z(n27288)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (C (D))))) */ ;
    defparam n21_bdd_3_lut_24353_4_lut.init = 16'h011f;
    LUT4 i6752_2_lut_3_lut (.A(tone[0]), .B(tone[1]), .C(tone[2]), .Z(n22_adj_1662)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i6752_2_lut_3_lut.init = 16'h1e1e;
    LUT4 tone_4__I_0_24_Mux_0_i7_3_lut_4_lut_3_lut (.A(tone[0]), .B(tone[1]), 
         .C(tone[2]), .Z(n7)) /* synthesis lut_function=(!(A (B (C))+!A !(B))) */ ;
    defparam tone_4__I_0_24_Mux_0_i7_3_lut_4_lut_3_lut.init = 16'h6e6e;
    CCU2D add_1383_9 (.A0(n6818), .B0(tone[3]), .C0(time_cnt[7]), .D0(GND_net), 
          .A1(n27760), .B1(tone[3]), .C1(time_cnt[8]), .D1(GND_net), 
          .CIN(n21713), .COUT(n21714), .S0(n2836[7]), .S1(n2836[8]));   // c:/fpga/ds18b20/pwm.v(77[14:32])
    defparam add_1383_9.INIT0 = 16'h2d2d;
    defparam add_1383_9.INIT1 = 16'h2d2d;
    defparam add_1383_9.INJECT1_0 = "NO";
    defparam add_1383_9.INJECT1_1 = "NO";
    CCU2D add_1383_7 (.A0(n27289), .B0(tone[3]), .C0(time_cnt[5]), .D0(GND_net), 
          .A1(n27759), .B1(tone[3]), .C1(time_cnt[6]), .D1(GND_net), 
          .CIN(n21712), .COUT(n21713), .S0(n2836[5]), .S1(n2836[6]));   // c:/fpga/ds18b20/pwm.v(77[14:32])
    defparam add_1383_7.INIT0 = 16'he1e1;
    defparam add_1383_7.INIT1 = 16'he1e1;
    defparam add_1383_7.INJECT1_0 = "NO";
    defparam add_1383_7.INJECT1_1 = "NO";
    FD1S3IX time_cnt_2269__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i17.GSR = "ENABLED";
    FD1S3IX time_cnt_2269__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i16.GSR = "ENABLED";
    FD1S3IX time_cnt_2269__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_2269__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i14.GSR = "ENABLED";
    FD1S3IX time_cnt_2269__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_2269__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i12.GSR = "ENABLED";
    FD1S3IX time_cnt_2269__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i11.GSR = "ENABLED";
    FD1S3IX time_cnt_2269__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i10.GSR = "ENABLED";
    FD1S3IX time_cnt_2269__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i9.GSR = "ENABLED";
    FD1S3IX time_cnt_2269__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i8.GSR = "ENABLED";
    FD1S3IX time_cnt_2269__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i7.GSR = "ENABLED";
    FD1S3IX time_cnt_2269__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_2269__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_2269__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_2269__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_2269__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_2269__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(n1110), 
            .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269__i1.GSR = "ENABLED";
    CCU2D add_1383_5 (.A0(n6773), .B0(tone[3]), .C0(time_cnt[3]), .D0(GND_net), 
          .A1(n6785), .B1(tone[3]), .C1(time_cnt[4]), .D1(GND_net), 
          .CIN(n21711), .COUT(n21712), .S0(n2836[3]), .S1(n2836[4]));   // c:/fpga/ds18b20/pwm.v(77[14:32])
    defparam add_1383_5.INIT0 = 16'h2d2d;
    defparam add_1383_5.INIT1 = 16'h2d2d;
    defparam add_1383_5.INJECT1_0 = "NO";
    defparam add_1383_5.INJECT1_1 = "NO";
    CCU2D add_1383_3 (.A0(n27534), .B0(tone[3]), .C0(time_cnt[1]), .D0(GND_net), 
          .A1(n27243), .B1(tone[3]), .C1(time_cnt[2]), .D1(GND_net), 
          .CIN(n21710), .COUT(n21711), .S0(n2836[1]), .S1(n2836[2]));   // c:/fpga/ds18b20/pwm.v(77[14:32])
    defparam add_1383_3.INIT0 = 16'h2d2d;
    defparam add_1383_3.INIT1 = 16'he1e1;
    defparam add_1383_3.INJECT1_0 = "NO";
    defparam add_1383_3.INJECT1_1 = "NO";
    CCU2D add_1383_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n6657), .B1(tone[3]), .C1(time_cnt[0]), .D1(GND_net), 
          .COUT(n21710), .S1(n2836[0]));   // c:/fpga/ds18b20/pwm.v(77[14:32])
    defparam add_1383_1.INIT0 = 16'h0000;
    defparam add_1383_1.INIT1 = 16'h2d2d;
    defparam add_1383_1.INJECT1_0 = "NO";
    defparam add_1383_1.INJECT1_1 = "NO";
    CCU2D time_cnt_2269_add_4_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21661), .S0(n77[17]));   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269_add_4_19.INIT0 = 16'hfaaa;
    defparam time_cnt_2269_add_4_19.INIT1 = 16'h0000;
    defparam time_cnt_2269_add_4_19.INJECT1_0 = "NO";
    defparam time_cnt_2269_add_4_19.INJECT1_1 = "NO";
    CCU2D time_cnt_2269_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21660), .COUT(n21661), .S0(n77[15]), .S1(n77[16]));   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_2269_add_4_17.INIT1 = 16'hfaaa;
    defparam time_cnt_2269_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_2269_add_4_17.INJECT1_1 = "NO";
    CCU2D time_cnt_2269_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21659), .COUT(n21660), .S0(n77[13]), .S1(n77[14]));   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_2269_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_2269_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_2269_add_4_15.INJECT1_1 = "NO";
    CCU2D time_cnt_2269_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21658), .COUT(n21659), .S0(n77[11]), .S1(n77[12]));   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_2269_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_2269_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_2269_add_4_13.INJECT1_1 = "NO";
    CCU2D time_cnt_2269_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21657), .COUT(n21658), .S0(n77[9]), .S1(n77[10]));   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_2269_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_2269_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_2269_add_4_11.INJECT1_1 = "NO";
    CCU2D time_cnt_2269_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21656), .COUT(n21657), .S0(n77[7]), .S1(n77[8]));   // c:/fpga/ds18b20/pwm.v(80[15:30])
    defparam time_cnt_2269_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_2269_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_2269_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_2269_add_4_9.INJECT1_1 = "NO";
    PFUMX i23310 (.BLUT(n25663), .ALUT(n25664), .C0(tone[4]), .Z(n25665));
    LUT4 i555_2_lut (.A(n2855), .B(tone_en_c), .Z(n1110)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/fpga/ds18b20/pwm.v(77[11] 81[5])
    defparam i555_2_lut.init = 16'hbbbb;
    PFUMX i4391 (.BLUT(n7), .ALUT(n22), .C0(tone[4]), .Z(n6657));
    PFUMX i4434 (.BLUT(n17550), .ALUT(n22_adj_1661), .C0(tone[4]), .Z(n6701));
    LUT4 n21_bdd_3_lut_24331 (.A(tone[0]), .B(tone[4]), .C(tone[1]), .Z(n27242)) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;
    defparam n21_bdd_3_lut_24331.init = 16'h7d7d;
    LUT4 tone_1__bdd_4_lut (.A(tone[1]), .B(tone[0]), .C(tone[4]), .D(tone[2]), 
         .Z(n27759)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C (D))+!B !(D))) */ ;
    defparam tone_1__bdd_4_lut.init = 16'he031;
    LUT4 tone_0__bdd_4_lut (.A(tone[0]), .B(tone[4]), .C(tone[1]), .D(tone[2]), 
         .Z(n27760)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam tone_0__bdd_4_lut.init = 16'hceda;
    PFUMX i24498 (.BLUT(n27770), .ALUT(n27771), .C0(tone[1]), .Z(time_end[14]));
    
endmodule
//
// Verilog Description of module bcd_8421
//

module bcd_8421 (\temp_raw_data[4] , \temp_raw_data[5] , \temp_raw_data[7] , 
            \temp_raw_data[6] , \temp_raw_data[8] , n27560, n11269, 
            \temp_raw_data[2] , \temp_raw_data[0] , \temp_raw_data[1] , 
            \temp_raw_data[3] , \temp_unit[2] , n13, n27634, n27685, 
            n27586, n27086, \temp_raw_data[10] , \temp_raw_data[11] , 
            \temp_raw_data[9] , n6, n25231, \temp_ten[2] , n21947, 
            \cnt_main[0] , n27212, n26544, n27541, n25267, n17799, 
            \temp_ten[1] , n18, n25294, n15, n27561, n4, n15_adj_1, 
            n10, \temp_ten[3] , n25286, \uart_data_120__N_1204[0] , 
            \temp_unit[1] , \temp_unit[0] ) /* synthesis syn_module_defined=1 */ ;
    input \temp_raw_data[4] ;
    input \temp_raw_data[5] ;
    input \temp_raw_data[7] ;
    input \temp_raw_data[6] ;
    input \temp_raw_data[8] ;
    output n27560;
    output n11269;
    input \temp_raw_data[2] ;
    input \temp_raw_data[0] ;
    input \temp_raw_data[1] ;
    input \temp_raw_data[3] ;
    output \temp_unit[2] ;
    output n13;
    output n27634;
    output n27685;
    output n27586;
    output n27086;
    input \temp_raw_data[10] ;
    input \temp_raw_data[11] ;
    input \temp_raw_data[9] ;
    input n6;
    input n25231;
    output \temp_ten[2] ;
    input n21947;
    input \cnt_main[0] ;
    output n27212;
    input n26544;
    input n27541;
    output n25267;
    output n17799;
    output \temp_ten[1] ;
    output n18;
    output n25294;
    output n15;
    output n27561;
    output n4;
    output n15_adj_1;
    output n10;
    output \temp_ten[3] ;
    output n25286;
    output \uart_data_120__N_1204[0] ;
    output \temp_unit[1] ;
    output \temp_unit[0] ;
    
    
    wire n28857, n27630, n27631, n17632, n6_c, n4_c, n25346, n5, 
        n27684, n28858, n27587, n27733, n11, n27563, n28853, n17415, 
        n27085, n27687, n27732, n27678, n5_adj_1652, n27588, n27686, 
        n4_adj_1653, n27559, n26531, n25399, n11245, n11_adj_1654, 
        n11_adj_1655, n17, n20, n23, n6_adj_1656, n25255, n25306, 
        n25993, n17629, n25340, n26530, n26532, n27734, n25062, 
        n4_adj_1659, n27552, n4_adj_1660, n25999, n25059, n25403;
    
    LUT4 data_11__I_0_50_i11_2_lut_rep_620 (.A(\temp_raw_data[4] ), .B(\temp_raw_data[5] ), 
         .C(\temp_raw_data[7] ), .D(\temp_raw_data[6] ), .Z(n28857)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/fpga/ds18b20/bcd_8421.v(66[9:16])
    defparam data_11__I_0_50_i11_2_lut_rep_620.init = 16'hfffd;
    LUT4 i2_3_lut_4_lut (.A(\temp_raw_data[8] ), .B(n27630), .C(n27631), 
         .D(n17632), .Z(n6_c)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(58[9:13])
    defparam i2_3_lut_4_lut.init = 16'hfe00;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(\temp_raw_data[4] ), .B(\temp_raw_data[5] ), 
         .C(\temp_raw_data[7] ), .D(\temp_raw_data[6] ), .Z(n4_c)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D))))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(66[9:16])
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h7f7d;
    LUT4 i1_4_lut_4_lut (.A(\temp_raw_data[6] ), .B(\temp_raw_data[7] ), 
         .C(n25346), .D(n27560), .Z(n5)) /* synthesis lut_function=(A ((D)+!B)+!A ((C)+!B)) */ ;
    defparam i1_4_lut_4_lut.init = 16'hfb73;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\temp_raw_data[8] ), .B(n27630), .C(n27684), 
         .D(n28858), .Z(n11269)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/fpga/ds18b20/bcd_8421.v(58[9:13])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffd;
    LUT4 data_3__I_0_Mux_2_i15_4_lut_4_lut (.A(\temp_raw_data[2] ), .B(\temp_raw_data[0] ), 
         .C(\temp_raw_data[1] ), .D(\temp_raw_data[3] ), .Z(\temp_unit[2] )) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(D))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(36[5] 54[12])
    defparam data_3__I_0_Mux_2_i15_4_lut_4_lut.init = 16'h5780;
    LUT4 i14773_2_lut (.A(\temp_raw_data[0] ), .B(\temp_raw_data[1] ), .Z(n13)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/bcd_8421.v(36[5] 54[12])
    defparam i14773_2_lut.init = 16'heeee;
    LUT4 i2_4_lut_then_4_lut (.A(\temp_raw_data[5] ), .B(\temp_raw_data[4] ), 
         .C(n27587), .D(\temp_raw_data[7] ), .Z(n27733)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2_4_lut_then_4_lut.init = 16'hfffd;
    LUT4 i1_4_lut_rep_448_4_lut (.A(n27634), .B(n28858), .C(n27685), .D(n11), 
         .Z(n27563)) /* synthesis lut_function=(A+(B (D)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(61[9:15])
    defparam i1_4_lut_rep_448_4_lut.init = 16'hfeaa;
    LUT4 i14611_2_lut_rep_619 (.A(\temp_raw_data[4] ), .B(\temp_raw_data[5] ), 
         .Z(n28853)) /* synthesis lut_function=(A (B)) */ ;
    defparam i14611_2_lut_rep_619.init = 16'h8888;
    LUT4 led_c_bdd_2_lut_24225_3_lut_4_lut (.A(n27586), .B(n17415), .C(n27085), 
         .D(n27687), .Z(n27086)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(88[9:17])
    defparam led_c_bdd_2_lut_24225_3_lut_4_lut.init = 16'hf0b0;
    LUT4 i2_4_lut_else_4_lut (.A(\temp_raw_data[5] ), .B(\temp_raw_data[4] ), 
         .C(n27586), .D(\temp_raw_data[7] ), .Z(n27732)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2_4_lut_else_4_lut.init = 16'hfffd;
    LUT4 data_11__I_0_59_i13_2_lut_rep_563 (.A(\temp_raw_data[10] ), .B(\temp_raw_data[11] ), 
         .Z(n27678)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/bcd_8421.v(67[9:16])
    defparam data_11__I_0_59_i13_2_lut_rep_563.init = 16'heeee;
    LUT4 i2_3_lut_rep_519_4_lut (.A(\temp_raw_data[10] ), .B(\temp_raw_data[11] ), 
         .C(\temp_raw_data[8] ), .D(\temp_raw_data[9] ), .Z(n27634)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(67[9:16])
    defparam i2_3_lut_rep_519_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_515_3_lut (.A(\temp_raw_data[10] ), .B(\temp_raw_data[11] ), 
         .C(\temp_raw_data[9] ), .Z(n27630)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(67[9:16])
    defparam i1_2_lut_rep_515_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_472_3_lut_4_lut (.A(\temp_raw_data[10] ), .B(\temp_raw_data[11] ), 
         .C(\temp_raw_data[8] ), .D(\temp_raw_data[9] ), .Z(n27587)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(67[9:16])
    defparam i1_2_lut_rep_472_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_471_3_lut_4_lut (.A(\temp_raw_data[10] ), .B(\temp_raw_data[11] ), 
         .C(\temp_raw_data[8] ), .D(\temp_raw_data[9] ), .Z(n27586)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(67[9:16])
    defparam i1_2_lut_rep_471_3_lut_4_lut.init = 16'hfffe;
    LUT4 i23798_4_lut_4_lut (.A(n27563), .B(n6), .C(n25231), .D(n5_adj_1652), 
         .Z(\temp_ten[2] )) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i23798_4_lut_4_lut.init = 16'h7fff;
    LUT4 data_11__I_0_84_i15_2_lut_rep_473_3_lut_4_lut (.A(\temp_raw_data[4] ), 
         .B(\temp_raw_data[5] ), .C(n27634), .D(n27684), .Z(n27588)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam data_11__I_0_84_i15_2_lut_rep_473_3_lut_4_lut.init = 16'hfff7;
    LUT4 i1_3_lut_4_lut (.A(n27587), .B(n27686), .C(n21947), .D(n17415), 
         .Z(n4_adj_1653)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(87[9:17])
    defparam i1_3_lut_4_lut.init = 16'he0f0;
    LUT4 n14_bdd_4_lut_24219_4_lut_4_lut (.A(\temp_raw_data[4] ), .B(\temp_raw_data[5] ), 
         .C(n27587), .D(n27684), .Z(n27085)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(65[9:16])
    defparam n14_bdd_4_lut_24219_4_lut_4_lut.init = 16'hfff2;
    LUT4 n25302_bdd_4_lut (.A(n27559), .B(n28857), .C(\temp_raw_data[7] ), 
         .D(n28858), .Z(n26531)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (D))) */ ;
    defparam n25302_bdd_4_lut.init = 16'hcc80;
    LUT4 i1_3_lut_4_lut_adj_57 (.A(n27686), .B(n28853), .C(n27685), .D(n27634), 
         .Z(n25399)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_57.init = 16'hfff2;
    LUT4 i1_4_lut_4_lut_adj_58 (.A(\temp_raw_data[5] ), .B(n25346), .C(n27559), 
         .D(n27685), .Z(n5_adj_1652)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+(D))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(67[9:16])
    defparam i1_4_lut_4_lut_adj_58.init = 16'hf5c4;
    LUT4 data_11__I_0_57_i9_2_lut_rep_621 (.A(\temp_raw_data[4] ), .B(\temp_raw_data[5] ), 
         .Z(n28858)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/bcd_8421.v(65[9:16])
    defparam data_11__I_0_57_i9_2_lut_rep_621.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_59 (.A(\temp_raw_data[4] ), .B(\temp_raw_data[5] ), 
         .C(n27684), .D(n27634), .Z(n11245)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(65[9:16])
    defparam i1_2_lut_3_lut_4_lut_adj_59.init = 16'hfffe;
    LUT4 data_11__I_0_50_i10_2_lut_rep_569 (.A(\temp_raw_data[6] ), .B(\temp_raw_data[7] ), 
         .Z(n27684)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/bcd_8421.v(58[9:13])
    defparam data_11__I_0_50_i10_2_lut_rep_569.init = 16'heeee;
    LUT4 data_11__I_0_52_i11_2_lut_rep_516_3_lut_4_lut (.A(\temp_raw_data[6] ), 
         .B(\temp_raw_data[7] ), .C(\temp_raw_data[5] ), .D(\temp_raw_data[4] ), 
         .Z(n27631)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(58[9:13])
    defparam data_11__I_0_52_i11_2_lut_rep_516_3_lut_4_lut.init = 16'hefff;
    LUT4 data_11__I_0_55_i10_2_lut_rep_570 (.A(\temp_raw_data[6] ), .B(\temp_raw_data[7] ), 
         .Z(n27685)) /* synthesis lut_function=((B)+!A) */ ;   // c:/fpga/ds18b20/bcd_8421.v(63[9:15])
    defparam data_11__I_0_55_i10_2_lut_rep_570.init = 16'hdddd;
    LUT4 data_11__I_0_56_i11_2_lut_3_lut_4_lut (.A(\temp_raw_data[6] ), .B(\temp_raw_data[7] ), 
         .C(\temp_raw_data[5] ), .D(\temp_raw_data[4] ), .Z(n11_adj_1654)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/fpga/ds18b20/bcd_8421.v(63[9:15])
    defparam data_11__I_0_56_i11_2_lut_3_lut_4_lut.init = 16'hdfff;
    LUT4 data_11__I_0_59_i9_2_lut_rep_571 (.A(\temp_raw_data[4] ), .B(\temp_raw_data[5] ), 
         .Z(n27686)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/fpga/ds18b20/bcd_8421.v(67[9:16])
    defparam data_11__I_0_59_i9_2_lut_rep_571.init = 16'hbbbb;
    LUT4 data_11__I_0_51_i11_2_lut_3_lut_4_lut (.A(\temp_raw_data[4] ), .B(\temp_raw_data[5] ), 
         .C(\temp_raw_data[7] ), .D(\temp_raw_data[6] ), .Z(n11)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/fpga/ds18b20/bcd_8421.v(67[9:16])
    defparam data_11__I_0_51_i11_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 data_11__I_0_58_i9_2_lut_rep_572 (.A(\temp_raw_data[4] ), .B(\temp_raw_data[5] ), 
         .Z(n27687)) /* synthesis lut_function=((B)+!A) */ ;   // c:/fpga/ds18b20/bcd_8421.v(66[9:16])
    defparam data_11__I_0_58_i9_2_lut_rep_572.init = 16'hdddd;
    LUT4 data_11__I_0_54_i11_2_lut_3_lut_4_lut (.A(\temp_raw_data[4] ), .B(\temp_raw_data[5] ), 
         .C(\temp_raw_data[7] ), .D(\temp_raw_data[6] ), .Z(n11_adj_1655)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/fpga/ds18b20/bcd_8421.v(66[9:16])
    defparam data_11__I_0_54_i11_2_lut_3_lut_4_lut.init = 16'hfdff;
    LUT4 n13_bdd_3_lut_4_lut (.A(\temp_raw_data[2] ), .B(\temp_raw_data[3] ), 
         .C(\cnt_main[0] ), .D(n13), .Z(n27212)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(36[5] 54[12])
    defparam n13_bdd_3_lut_4_lut.init = 16'h8000;
    LUT4 i23737_2_lut_3_lut_3_lut_4_lut (.A(\temp_raw_data[2] ), .B(\temp_raw_data[3] ), 
         .C(n26544), .D(n27541), .Z(n25267)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(36[5] 54[12])
    defparam i23737_2_lut_3_lut_3_lut_4_lut.init = 16'h7f77;
    LUT4 i15074_2_lut (.A(\temp_raw_data[8] ), .B(\temp_raw_data[7] ), .Z(n17)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i15074_2_lut.init = 16'h1111;
    LUT4 i1_4_lut (.A(\temp_raw_data[8] ), .B(\temp_raw_data[7] ), .C(\temp_raw_data[6] ), 
         .D(\temp_raw_data[5] ), .Z(n20)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1_4_lut.init = 16'heeea;
    LUT4 i15508_1_lut (.A(n17799), .Z(\temp_ten[1] )) /* synthesis lut_function=(!(A)) */ ;
    defparam i15508_1_lut.init = 16'h5555;
    LUT4 i2_3_lut (.A(\temp_raw_data[11] ), .B(\temp_raw_data[10] ), .C(n23), 
         .Z(n18)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_3_lut.init = 16'h1010;
    LUT4 i3_4_lut (.A(n18), .B(n6_adj_1656), .C(n11245), .D(n4_adj_1653), 
         .Z(n25294)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i2_2_lut (.A(n25255), .B(n27563), .Z(n6_adj_1656)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_60 (.A(\temp_raw_data[9] ), .B(n27678), 
         .C(n28858), .D(\temp_raw_data[8] ), .Z(n25346)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(58[9:13])
    defparam i1_2_lut_3_lut_4_lut_adj_60.init = 16'hfffe;
    LUT4 i1_2_lut_rep_444_3_lut_4_lut (.A(\temp_raw_data[9] ), .B(n27678), 
         .C(n17415), .D(\temp_raw_data[8] ), .Z(n27559)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(58[9:13])
    defparam i1_2_lut_rep_444_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_3_lut_4_lut_adj_61 (.A(\temp_raw_data[9] ), .B(n27678), 
         .C(n27687), .D(\temp_raw_data[8] ), .Z(n25306)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(58[9:13])
    defparam i1_2_lut_3_lut_4_lut_adj_61.init = 16'hfeff;
    LUT4 i23785_2_lut_3_lut_4_lut (.A(\temp_raw_data[9] ), .B(n27678), .C(n11), 
         .D(\temp_raw_data[8] ), .Z(n25993)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(58[9:13])
    defparam i23785_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 data_11__I_0_66_i15_2_lut_3_lut_4_lut (.A(\temp_raw_data[9] ), .B(n27678), 
         .C(n28857), .D(\temp_raw_data[8] ), .Z(n15)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(58[9:13])
    defparam data_11__I_0_66_i15_2_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_446_3_lut_4_lut (.A(\temp_raw_data[9] ), .B(n27678), 
         .C(n27686), .D(\temp_raw_data[8] ), .Z(n27561)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(58[9:13])
    defparam i1_2_lut_rep_446_3_lut_4_lut.init = 16'hfeff;
    PFUMX i37 (.BLUT(n20), .ALUT(n17), .C0(\temp_raw_data[9] ), .Z(n23));
    LUT4 i2_4_lut (.A(n17629), .B(n27588), .C(n17415), .D(n25340), .Z(n25255)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;
    defparam i2_4_lut.init = 16'h8808;
    LUT4 i1_2_lut_rep_445_3_lut_4_lut (.A(\temp_raw_data[9] ), .B(n27678), 
         .C(n28858), .D(\temp_raw_data[8] ), .Z(n27560)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(58[9:13])
    defparam i1_2_lut_rep_445_3_lut_4_lut.init = 16'hfeff;
    PFUMX i23871 (.BLUT(n26531), .ALUT(n26530), .C0(n27634), .Z(n26532));
    LUT4 i1_2_lut_3_lut_4_lut_adj_62 (.A(\temp_raw_data[9] ), .B(n27678), 
         .C(n28853), .D(\temp_raw_data[8] ), .Z(n25340)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(58[9:13])
    defparam i1_2_lut_3_lut_4_lut_adj_62.init = 16'hefff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_63 (.A(n28853), .B(n27684), .C(n17632), 
         .D(n27634), .Z(n4)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/fpga/ds18b20/bcd_8421.v(60[9:14])
    defparam i1_2_lut_3_lut_4_lut_adj_63.init = 16'hf0d0;
    LUT4 i15345_3_lut_4_lut (.A(n27687), .B(n27684), .C(n11_adj_1654), 
         .D(n27634), .Z(n17629)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(58[9:13])
    defparam i15345_3_lut_4_lut.init = 16'hffe0;
    PFUMX i24474 (.BLUT(n27732), .ALUT(n27733), .C0(\temp_raw_data[6] ), 
          .Z(n27734));
    LUT4 i15146_2_lut (.A(\temp_raw_data[6] ), .B(\temp_raw_data[7] ), .Z(n17415)) /* synthesis lut_function=(A (B)) */ ;
    defparam i15146_2_lut.init = 16'h8888;
    LUT4 data_11__I_0_55_i15_2_lut_3_lut_4_lut (.A(n27686), .B(n27685), 
         .C(n27630), .D(\temp_raw_data[8] ), .Z(n15_adj_1)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(63[9:15])
    defparam data_11__I_0_55_i15_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 data_11__I_0_58_i10_2_lut (.A(\temp_raw_data[6] ), .B(\temp_raw_data[7] ), 
         .Z(n10)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/fpga/ds18b20/bcd_8421.v(66[9:16])
    defparam data_11__I_0_58_i10_2_lut.init = 16'hbbbb;
    LUT4 i23787_4_lut (.A(n25993), .B(n5), .C(n25062), .D(n25399), .Z(\temp_ten[3] )) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i23787_4_lut.init = 16'hbfff;
    LUT4 i2_4_lut_adj_64 (.A(n27687), .B(n4_adj_1659), .C(n10), .D(n27586), 
         .Z(n25062)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2_4_lut_adj_64.init = 16'hccc8;
    LUT4 i1_4_lut_adj_65 (.A(n27631), .B(n17415), .C(n27587), .D(n27687), 
         .Z(n4_adj_1659)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C)) */ ;
    defparam i1_4_lut_adj_65.init = 16'hfaf2;
    LUT4 i1_4_lut_adj_66 (.A(n10), .B(n11_adj_1655), .C(n25306), .D(n27586), 
         .Z(n25286)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_66.init = 16'hfac8;
    LUT4 i1_2_lut_rep_437_3_lut_4_lut (.A(\temp_raw_data[8] ), .B(n27630), 
         .C(n27687), .D(n17415), .Z(n27552)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(58[9:13])
    defparam i1_2_lut_rep_437_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_4_lut_adj_67 (.A(n15), .B(n11_adj_1655), .C(n4_adj_1660), 
         .D(n27634), .Z(n17632)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_67.init = 16'ha080;
    LUT4 i1_4_lut_adj_68 (.A(n11_adj_1654), .B(n10), .C(n27586), .D(n25340), 
         .Z(n4_adj_1660)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_68.init = 16'hfac8;
    LUT4 i23793_4_lut (.A(n25999), .B(n25286), .C(n25059), .D(n25403), 
         .Z(\uart_data_120__N_1204[0] )) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i23793_4_lut.init = 16'hbfff;
    LUT4 i23791_2_lut (.A(n25062), .B(n25255), .Z(n25999)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i23791_2_lut.init = 16'h7777;
    LUT4 i1_4_lut_adj_69 (.A(n11_adj_1655), .B(n27586), .C(n27587), .D(n4_c), 
         .Z(n25403)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_69.init = 16'hfac8;
    LUT4 i3_4_lut_adj_70 (.A(n27552), .B(n6_c), .C(n11_adj_1654), .D(n27587), 
         .Z(n25059)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3_4_lut_adj_70.init = 16'h8880;
    LUT4 temp_raw_data_3__bdd_4_lut (.A(\temp_raw_data[3] ), .B(\temp_raw_data[1] ), 
         .C(\temp_raw_data[2] ), .D(\temp_raw_data[0] ), .Z(\temp_unit[1] )) /* synthesis lut_function=(!(A (B (C)+!B ((D)+!C))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam temp_raw_data_3__bdd_4_lut.init = 16'h1878;
    LUT4 n25302_bdd_2_lut_3_lut_4_lut (.A(\temp_raw_data[8] ), .B(n27630), 
         .C(n28858), .D(n17415), .Z(n26530)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(58[9:13])
    defparam n25302_bdd_2_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i2_4_lut_adj_71 (.A(n25231), .B(n25059), .C(n27734), .D(n26532), 
         .Z(n17799)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_71.init = 16'h8000;
    LUT4 i9201_4_lut (.A(\temp_raw_data[1] ), .B(\temp_raw_data[3] ), .C(\temp_raw_data[0] ), 
         .D(\temp_raw_data[2] ), .Z(\temp_unit[0] )) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/fpga/ds18b20/bcd_8421.v(36[5] 54[12])
    defparam i9201_4_lut.init = 16'h9666;
    
endmodule
//
// Verilog Description of module uart_recv
//

module uart_recv (sys_clk_c, rx_flag, uart_done, uart_rxd_c, GND_net, 
            sys_clk_c_enable_140, n25056, n139, \uart_data[4] , \uart_data[3] , 
            \uart_data[2] , \uart_data[1] , \uart_data[0] , n27578) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output rx_flag;
    output uart_done;
    input uart_rxd_c;
    input GND_net;
    input sys_clk_c_enable_140;
    output n25056;
    output n139;
    output \uart_data[4] ;
    output \uart_data[3] ;
    output \uart_data[2] ;
    output \uart_data[1] ;
    output \uart_data[0] ;
    output n27578;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/fpga/ds18b20/top.v(2[25:32])
    
    wire uart_rxd_d1, uart_rxd_d0, n12342, uart_data_7__N_1323, n21631;
    wire [15:0]clk_cnt;   // c:/fpga/ds18b20/uart_recv.v(43[12:19])
    wire [15:0]n69;
    
    wire n21632;
    wire [7:0]rxdata;   // c:/fpga/ds18b20/uart_recv.v(31[23:29])
    
    wire n5318, n11442, n21630, n21625, n21626;
    wire [15:0]n591;
    
    wire sys_clk_c_enable_117, rx_flag_N_1326, n6, n14232, n25593, 
        n25608, n25234, n25544, n25034, n27729, n6_adj_1650, n21629, 
        n21628, n21627, n21937, n12361, n4, n8, n27652, n135, 
        n11451, n11448, n11436, n11445, n12373, n134, n25030, 
        n25037;
    
    FD1S3AX uart_rxd_d1_55 (.D(uart_rxd_d0), .CK(sys_clk_c), .Q(uart_rxd_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=147 */ ;   // c:/fpga/ds18b20/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d1_55.GSR = "ENABLED";
    FD1S3AX rx_flag_56 (.D(n12342), .CK(sys_clk_c), .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=147 */ ;   // c:/fpga/ds18b20/uart_recv.v(70[10] 78[8])
    defparam rx_flag_56.GSR = "ENABLED";
    FD1S3AX uart_done_61 (.D(uart_data_7__N_1323), .CK(sys_clk_c), .Q(uart_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=147 */ ;   // c:/fpga/ds18b20/uart_recv.v(139[10] 146[8])
    defparam uart_done_61.GSR = "ENABLED";
    FD1S3AX uart_rxd_d0_54 (.D(uart_rxd_c), .CK(sys_clk_c), .Q(uart_rxd_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=147 */ ;   // c:/fpga/ds18b20/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d0_54.GSR = "ENABLED";
    CCU2D clk_cnt_2267_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21631), .COUT(n21632), .S0(n69[13]), .S1(n69[14]));   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_2267_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_2267_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_2267_add_4_15.INJECT1_1 = "NO";
    FD1P3IX rxdata__i0 (.D(n11442), .SP(sys_clk_c_enable_140), .CD(n5318), 
            .CK(sys_clk_c), .Q(rxdata[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=147 */ ;   // c:/fpga/ds18b20/uart_recv.v(113[10] 130[24])
    defparam rxdata__i0.GSR = "ENABLED";
    CCU2D clk_cnt_2267_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21630), .COUT(n21631), .S0(n69[11]), .S1(n69[12]));   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_2267_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_2267_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_2267_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_2267_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21625), .COUT(n21626), .S0(n69[1]), .S1(n69[2]));   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_2267_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_2267_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_2267_add_4_3.INJECT1_1 = "NO";
    FD1P3JX rx_cnt_FSM_i0 (.D(n591[15]), .SP(sys_clk_c_enable_117), .PD(n5318), 
            .CK(sys_clk_c), .Q(n591[0]));   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i10029_4_lut (.A(rx_flag_N_1326), .B(uart_rxd_d1), .C(rx_flag), 
         .D(uart_rxd_d0), .Z(n12342)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // c:/fpga/ds18b20/uart_recv.v(70[10] 78[8])
    defparam i10029_4_lut.init = 16'h50dc;
    LUT4 i1_2_lut (.A(uart_data_7__N_1323), .B(n25056), .Z(rx_flag_N_1326)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i4_4_lut (.A(clk_cnt[10]), .B(clk_cnt[9]), .C(clk_cnt[7]), .D(n6), 
         .Z(n25056)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i4_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_adj_49 (.A(clk_cnt[4]), .B(n14232), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_49.init = 16'h8888;
    LUT4 i3_4_lut (.A(clk_cnt[0]), .B(n25593), .C(n25608), .D(n25234), 
         .Z(n14232)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0200;
    LUT4 i23240_4_lut (.A(clk_cnt[3]), .B(clk_cnt[2]), .C(clk_cnt[8]), 
         .D(clk_cnt[1]), .Z(n25593)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23240_4_lut.init = 16'hfffe;
    LUT4 i23253_4_lut (.A(clk_cnt[11]), .B(clk_cnt[14]), .C(clk_cnt[12]), 
         .D(n25544), .Z(n25608)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23253_4_lut.init = 16'hfffe;
    LUT4 i23193_2_lut (.A(clk_cnt[13]), .B(clk_cnt[15]), .Z(n25544)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i23193_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_50 (.A(clk_cnt[6]), .B(clk_cnt[5]), .Z(n25234)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_50.init = 16'h8888;
    LUT4 i3188_1_lut (.A(rx_flag), .Z(n5318)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/ds18b20/uart_recv.v(70[10] 78[8])
    defparam i3188_1_lut.init = 16'h5555;
    LUT4 i160_4_lut (.A(uart_rxd_d1), .B(n25034), .C(n591[1]), .D(rxdata[0]), 
         .Z(n11442)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/fpga/ds18b20/uart_recv.v(42[12:23])
    defparam i160_4_lut.init = 16'heca0;
    LUT4 i1_4_lut (.A(n27729), .B(n591[3]), .C(n591[2]), .D(n139), .Z(n25034)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_51 (.A(n591[5]), .B(n591[4]), .Z(n139)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam i1_2_lut_adj_51.init = 16'heeee;
    LUT4 i23727_4_lut (.A(clk_cnt[9]), .B(n14232), .C(clk_cnt[10]), .D(n6_adj_1650), 
         .Z(sys_clk_c_enable_117)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/fpga/ds18b20/uart_recv.v(100[13:35])
    defparam i23727_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_adj_52 (.A(clk_cnt[7]), .B(clk_cnt[4]), .Z(n6_adj_1650)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_52.init = 16'hdddd;
    CCU2D clk_cnt_2267_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21629), .COUT(n21630), .S0(n69[9]), .S1(n69[10]));   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_2267_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_2267_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_2267_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_2267_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21628), .COUT(n21629), .S0(n69[7]), .S1(n69[8]));   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_2267_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_2267_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_2267_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_2267_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21627), .COUT(n21628), .S0(n69[5]), .S1(n69[6]));   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_2267_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_2267_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_2267_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_2267_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n21625), .S1(n69[0]));   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_2267_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_2267_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_2267_add_4_1.INJECT1_1 = "NO";
    CCU2D clk_cnt_2267_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21626), .COUT(n21627), .S0(n69[3]), .S1(n69[4]));   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_2267_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_2267_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_2267_add_4_5.INJECT1_1 = "NO";
    LUT4 i23615_4_lut (.A(n25608), .B(clk_cnt[10]), .C(rx_flag), .D(n21937), 
         .Z(n12361)) /* synthesis lut_function=(A+(B ((D)+!C)+!B !(C))) */ ;   // c:/fpga/ds18b20/uart_recv.v(92[9:26])
    defparam i23615_4_lut.init = 16'hefaf;
    LUT4 i2_4_lut (.A(n25234), .B(clk_cnt[8]), .C(n4), .D(clk_cnt[9]), 
         .Z(n21937)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/fpga/ds18b20/uart_recv.v(43[12:19])
    defparam i2_4_lut.init = 16'hffec;
    LUT4 i1_4_lut_adj_53 (.A(clk_cnt[7]), .B(clk_cnt[3]), .C(n8), .D(clk_cnt[2]), 
         .Z(n4)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/fpga/ds18b20/uart_recv.v(43[12:19])
    defparam i1_4_lut_adj_53.init = 16'haaa8;
    LUT4 i3_3_lut (.A(clk_cnt[1]), .B(clk_cnt[0]), .C(clk_cnt[4]), .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3_3_lut.init = 16'hfefe;
    FD1P3IX rx_cnt_FSM_i15 (.D(n591[14]), .SP(sys_clk_c_enable_117), .CD(n5318), 
            .CK(sys_clk_c), .Q(n591[15]));   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i15.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i14 (.D(n591[13]), .SP(sys_clk_c_enable_117), .CD(n5318), 
            .CK(sys_clk_c), .Q(n591[14]));   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i13 (.D(n591[12]), .SP(sys_clk_c_enable_117), .CD(n5318), 
            .CK(sys_clk_c), .Q(n591[13]));   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i12 (.D(n591[11]), .SP(sys_clk_c_enable_117), .CD(n5318), 
            .CK(sys_clk_c), .Q(n591[12]));   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i11 (.D(n591[10]), .SP(sys_clk_c_enable_117), .CD(n5318), 
            .CK(sys_clk_c), .Q(n591[11]));   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i10 (.D(uart_data_7__N_1323), .SP(sys_clk_c_enable_117), 
            .CD(n5318), .CK(sys_clk_c), .Q(n591[10]));   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i9 (.D(n591[8]), .SP(sys_clk_c_enable_117), .CD(n5318), 
            .CK(sys_clk_c), .Q(uart_data_7__N_1323));   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i8 (.D(n591[7]), .SP(sys_clk_c_enable_117), .CD(n5318), 
            .CK(sys_clk_c), .Q(n591[8]));   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i7 (.D(n591[6]), .SP(sys_clk_c_enable_117), .CD(n5318), 
            .CK(sys_clk_c), .Q(n591[7]));   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i6 (.D(n591[5]), .SP(sys_clk_c_enable_117), .CD(n5318), 
            .CK(sys_clk_c), .Q(n591[6]));   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i5 (.D(n591[4]), .SP(sys_clk_c_enable_117), .CD(n5318), 
            .CK(sys_clk_c), .Q(n591[5]));   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i4 (.D(n591[3]), .SP(sys_clk_c_enable_117), .CD(n5318), 
            .CK(sys_clk_c), .Q(n591[4]));   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i3 (.D(n591[2]), .SP(sys_clk_c_enable_117), .CD(n5318), 
            .CK(sys_clk_c), .Q(n591[3]));   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i2 (.D(n591[1]), .SP(sys_clk_c_enable_117), .CD(n5318), 
            .CK(sys_clk_c), .Q(n591[2]));   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i1 (.D(n591[0]), .SP(sys_clk_c_enable_117), .CD(n5318), 
            .CK(sys_clk_c), .Q(n591[1]));   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_2267__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n12361), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n591[2]), .B(n27652), .C(n591[5]), .D(n591[3]), 
         .Z(n135)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX rxdata__i4 (.D(n11451), .SP(sys_clk_c_enable_140), .CD(n5318), 
            .CK(sys_clk_c), .Q(rxdata[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=147 */ ;   // c:/fpga/ds18b20/uart_recv.v(113[10] 130[24])
    defparam rxdata__i4.GSR = "ENABLED";
    FD1P3IX rxdata__i3 (.D(n11448), .SP(sys_clk_c_enable_140), .CD(n5318), 
            .CK(sys_clk_c), .Q(rxdata[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=147 */ ;   // c:/fpga/ds18b20/uart_recv.v(113[10] 130[24])
    defparam rxdata__i3.GSR = "ENABLED";
    FD1P3IX rxdata__i2 (.D(n11436), .SP(sys_clk_c_enable_140), .CD(n5318), 
            .CK(sys_clk_c), .Q(rxdata[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=147 */ ;   // c:/fpga/ds18b20/uart_recv.v(113[10] 130[24])
    defparam rxdata__i2.GSR = "ENABLED";
    FD1P3IX rxdata__i1 (.D(n11445), .SP(sys_clk_c_enable_140), .CD(n5318), 
            .CK(sys_clk_c), .Q(rxdata[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=147 */ ;   // c:/fpga/ds18b20/uart_recv.v(113[10] 130[24])
    defparam rxdata__i1.GSR = "ENABLED";
    FD1S3IX uart_data__i5 (.D(rxdata[4]), .CK(sys_clk_c), .CD(n12373), 
            .Q(\uart_data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=147 */ ;   // c:/fpga/ds18b20/uart_recv.v(139[10] 146[8])
    defparam uart_data__i5.GSR = "ENABLED";
    FD1S3IX uart_data__i4 (.D(rxdata[3]), .CK(sys_clk_c), .CD(n12373), 
            .Q(\uart_data[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=147 */ ;   // c:/fpga/ds18b20/uart_recv.v(139[10] 146[8])
    defparam uart_data__i4.GSR = "ENABLED";
    FD1S3IX uart_data__i3 (.D(rxdata[2]), .CK(sys_clk_c), .CD(n12373), 
            .Q(\uart_data[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=147 */ ;   // c:/fpga/ds18b20/uart_recv.v(139[10] 146[8])
    defparam uart_data__i3.GSR = "ENABLED";
    FD1S3IX uart_data__i2 (.D(rxdata[1]), .CK(sys_clk_c), .CD(n12373), 
            .Q(\uart_data[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=147 */ ;   // c:/fpga/ds18b20/uart_recv.v(139[10] 146[8])
    defparam uart_data__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_54 (.A(n591[2]), .B(n27652), .C(n591[4]), 
         .D(n591[3]), .Z(n134)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam i1_2_lut_3_lut_4_lut_adj_54.init = 16'hfffe;
    LUT4 i154_4_lut (.A(uart_rxd_d1), .B(n134), .C(n591[5]), .D(rxdata[4]), 
         .Z(n11451)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/fpga/ds18b20/uart_recv.v(42[12:23])
    defparam i154_4_lut.init = 16'heca0;
    LUT4 i1_4_lut_adj_55 (.A(uart_rxd_d1), .B(n135), .C(n591[4]), .D(rxdata[3]), 
         .Z(n11448)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/fpga/ds18b20/uart_recv.v(42[12:23])
    defparam i1_4_lut_adj_55.init = 16'heca0;
    LUT4 i158_4_lut (.A(uart_rxd_d1), .B(n25030), .C(n591[3]), .D(rxdata[2]), 
         .Z(n11436)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/fpga/ds18b20/uart_recv.v(42[12:23])
    defparam i158_4_lut.init = 16'heca0;
    FD1S3IX clk_cnt_2267__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n12361), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267__i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_2267__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n12361), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_2267__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n12361), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_2267__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n12361), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_2267__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n12361), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_2267__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n12361), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_2267__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n12361), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_2267__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n12361), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_2267__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n12361), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_2267__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n12361), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_2267__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n12361), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_2267__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n12361), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_2267__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n12361), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_2267__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n12361), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_2267__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n12361), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267__i1.GSR = "ENABLED";
    LUT4 i156_4_lut (.A(uart_rxd_d1), .B(n25037), .C(n591[2]), .D(rxdata[1]), 
         .Z(n11445)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/fpga/ds18b20/uart_recv.v(42[12:23])
    defparam i156_4_lut.init = 16'heca0;
    LUT4 i10058_1_lut (.A(uart_data_7__N_1323), .Z(n12373)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam i10058_1_lut.init = 16'h5555;
    FD1S3IX uart_data__i1 (.D(rxdata[0]), .CK(sys_clk_c), .CD(n12373), 
            .Q(\uart_data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=147 */ ;   // c:/fpga/ds18b20/uart_recv.v(139[10] 146[8])
    defparam uart_data__i1.GSR = "ENABLED";
    CCU2D clk_cnt_2267_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21632), .S0(n69[15]));   // c:/fpga/ds18b20/uart_recv.v(87[24:38])
    defparam clk_cnt_2267_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_2267_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_2267_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_2267_add_4_17.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_614 (.A(n591[8]), .B(n591[6]), .C(n591[7]), .Z(n27729)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam i2_3_lut_rep_614.init = 16'hfefe;
    LUT4 i1_2_lut_rep_537_4_lut (.A(n591[8]), .B(n591[6]), .C(n591[7]), 
         .D(n591[1]), .Z(n27652)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam i1_2_lut_rep_537_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_463_3_lut_4_lut (.A(n591[1]), .B(n27729), .C(n591[3]), 
         .D(n591[2]), .Z(n27578)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam i1_2_lut_rep_463_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut (.A(n591[1]), .B(n27729), .C(n139), .D(n591[3]), 
         .Z(n25037)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_56 (.A(n591[1]), .B(n27729), .C(n139), 
         .D(n591[2]), .Z(n25030)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/uart_recv.v(101[23:36])
    defparam i1_2_lut_3_lut_4_lut_adj_56.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module DS18B20Z
//

module DS18B20Z (\temp_raw_data[0] , sys_clk_c, GND_net, one_wire_N_272, 
            n25165, \state_back_2__N_122[2] , n27635, one_wire_out, 
            n6384, n25263, n27724, n27547, n27608, \num_delay_19__N_212[3] , 
            \temp_raw_data[11] , \temp_raw_data[10] , \temp_raw_data[9] , 
            \temp_raw_data[8] , \temp_raw_data[7] , \temp_raw_data[6] , 
            \temp_raw_data[5] , \temp_raw_data[4] , \temp_raw_data[3] , 
            \temp_raw_data[2] , \temp_raw_data[1] , sys_rst_n_c, n25247) /* synthesis syn_module_defined=1 */ ;
    output \temp_raw_data[0] ;
    input sys_clk_c;
    input GND_net;
    output one_wire_N_272;
    output n25165;
    output \state_back_2__N_122[2] ;
    output n27635;
    input one_wire_out;
    output n6384;
    input n25263;
    output n27724;
    output n27547;
    output n27608;
    output \num_delay_19__N_212[3] ;
    output \temp_raw_data[11] ;
    output \temp_raw_data[10] ;
    output \temp_raw_data[9] ;
    output \temp_raw_data[8] ;
    output \temp_raw_data[7] ;
    output \temp_raw_data[6] ;
    output \temp_raw_data[5] ;
    output \temp_raw_data[4] ;
    output \temp_raw_data[3] ;
    output \temp_raw_data[2] ;
    output \temp_raw_data[1] ;
    input sys_rst_n_c;
    input n25247;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/fpga/ds18b20/top.v(2[25:32])
    wire clk_1mhz /* synthesis is_clock=1, SET_AS_NETWORK=\m_DS18B20Z/clk_1mhz */ ;   // c:/fpga/ds18b20/ds18b20.v(44[10:18])
    
    wire sys_clk_c_enable_189;
    wire [15:0]temperature;   // c:/fpga/ds18b20/ds18b20.v(70[15:26])
    
    wire n21702;
    wire [19:0]cnt_delay;   // c:/fpga/ds18b20/ds18b20.v(66[15:24])
    wire [19:0]num_delay;   // c:/fpga/ds18b20/ds18b20.v(67[15:24])
    
    wire n21703, one_wire_N_277;
    wire [2:0]cnt_read;   // c:/fpga/ds18b20/ds18b20.v(69[14:22])
    
    wire n27663;
    wire [2:0]state_back;   // c:/fpga/ds18b20/ds18b20.v(73[15:25])
    
    wire sys_clk_c_enable_11;
    wire [2:0]state_back_2__N_122;
    wire [3:0]cnt_write;   // c:/fpga/ds18b20/ds18b20.v(68[14:23])
    
    wire n27594;
    wire [2:0]state;   // c:/fpga/ds18b20/ds18b20.v(72[15:20])
    
    wire n26652, sys_clk_c_enable_73, n12448;
    wire [19:0]n339;
    
    wire sys_clk_c_enable_129;
    wire [7:0]temperature_buffer;   // c:/fpga/ds18b20/ds18b20.v(71[14:32])
    
    wire n27599;
    wire [3:0]cnt_write_3__N_185;
    
    wire n21701, n27665, n21700, n27726, n27555, n27591, n27576, 
        n27564, sys_clk_c_enable_173, n9;
    wire [2:0]state_2__N_161;
    
    wire n27131, n2;
    wire [3:0]cnt_main;   // c:/fpga/ds18b20/ds18b20.v(62[14:22])
    
    wire n27774, n27773, n27675, n6, n25132, n27783, n5338, n27782, 
        n27666, n7, n25272, n34, n19, n27651, n27650, n25378, 
        n26651, sys_clk_c_enable_83, n12438, n1, n26654, one_wire_N_288;
    wire [2:0]cnt_init;   // c:/fpga/ds18b20/ds18b20.v(65[14:22])
    
    wire sys_clk_c_enable_80, n12441, n27715, sys_clk_c_enable_78, n12443, 
        n337, n27142, n27141, n28848, n27730, n25330, n27712, 
        n21850, sys_clk_c_enable_75, n25277;
    wire [2:0]cnt;   // c:/fpga/ds18b20/ds18b20.v(60[14:17])
    
    wire sys_clk_c_enable_154;
    wire [2:0]cnt_2__N_22;
    
    wire sys_clk_c_enable_41;
    wire [2:0]state_2__N_119;
    
    wire n26518, sys_clk_c_enable_156, n27695, sys_clk_c_enable_43, 
        sys_clk_c_enable_44, n27325, n27324, one_wire_N_281, sys_clk_c_enable_47, 
        sys_clk_c_enable_49, sys_clk_c_enable_50, n27565, n6_adj_1633;
    wire [2:0]cnt_1mhz;   // c:/fpga/ds18b20/ds18b20.v(45[14:22])
    
    wire n27689;
    wire [2:0]n17;
    
    wire sys_clk_c_enable_55, one_wire_N_273, n12355, n27643, sys_clk_c_enable_58, 
        n14525, n27711, n14526, n27639, n30, n4, n26, n27727, 
        sys_clk_c_enable_87, n27697, sys_clk_c_enable_89, n27106, n6_adj_1634, 
        n11374, n15890;
    wire [2:0]n261;
    
    wire clk_1mhz_N_276, sys_clk_c_enable_172, n27642, n21619;
    wire [2:0]n110;
    
    wire n25252, n6951, n27699, n17591;
    wire [19:0]num_delay_19__N_212;
    
    wire n27607, n27592, n9775, n32, n6_adj_1636, sys_clk_c_enable_88;
    wire [3:0]n25;
    
    wire n2_adj_1637, n7_adj_1638, n2_adj_1640, n27130, n27129, sys_clk_c_enable_90, 
        n27688, n27105, n27104, n27636, sys_clk_c_enable_122, n21611, 
        n21612, n25159, n6_adj_1641, sys_clk_c_enable_174, n21618, 
        n21610, n21617, n27649, n27553, sys_clk_c_enable_133, sys_clk_c_enable_134, 
        n27546, n27698, n27700, sys_clk_c_enable_155, n27709, n27710, 
        n26653, n25541, n21616, n21615, sys_clk_c_enable_175, n25650, 
        n27713;
    wire [7:0]data_wr;   // c:/fpga/ds18b20/ds18b20.v(63[14:21])
    
    wire sys_clk_c_enable_178, n16523, n27714;
    wire [7:0]data_wr_buffer;   // c:/fpga/ds18b20/ds18b20.v(64[14:28])
    
    wire sys_clk_c_enable_192, n27605, n27725, n21709, n21708, n21707, 
        n20629, n27775, n2_adj_1642, n3, sys_clk_c_enable_195, n2_adj_1643, 
        n3_adj_1644, one_wire_N_283, n4_adj_1645, n27728, n21706, 
        n21705, n21614, n21613, n21704, n12354, n25409, n25941, 
        n21874, n26517, n27577, n6_adj_1646, n26516, n27566, n12030, 
        n10, n34_adj_1647, n27_adj_1648, n7_adj_1649;
    
    FD1P3AX data_out_i0_i0 (.D(temperature[0]), .SP(sys_clk_c_enable_189), 
            .CK(sys_clk_c), .Q(\temp_raw_data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_out_i0_i0.GSR = "DISABLED";
    CCU2D sub_1707_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n21702), .COUT(n21703));
    defparam sub_1707_add_2_7.INIT0 = 16'h5999;
    defparam sub_1707_add_2_7.INIT1 = 16'h5999;
    defparam sub_1707_add_2_7.INJECT1_0 = "NO";
    defparam sub_1707_add_2_7.INJECT1_1 = "NO";
    FD1S3AX one_wire_buffer_155 (.D(one_wire_N_277), .CK(clk_1mhz), .Q(one_wire_N_272)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam one_wire_buffer_155.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_548 (.A(cnt_read[2]), .B(cnt_read[0]), .Z(n27663)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_rep_548.init = 16'heeee;
    FD1P3AX state_back_i0_i0 (.D(state_back_2__N_122[0]), .SP(sys_clk_c_enable_11), 
            .CK(sys_clk_c), .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam state_back_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_479_4_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), 
         .C(cnt_write[0]), .D(cnt_write[3]), .Z(n27594)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A ((C+(D))+!B))) */ ;
    defparam i1_2_lut_rep_479_4_lut_4_lut.init = 16'h008e;
    LUT4 n25309_bdd_3_lut_23959_4_lut (.A(cnt_read[2]), .B(cnt_read[0]), 
         .C(cnt_read[1]), .D(state[1]), .Z(n26652)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam n25309_bdd_3_lut_23959_4_lut.init = 16'hffef;
    FD1P3IX cnt_delay_i0_i1 (.D(n339[1]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    FD1P3AX temperature_i0_i0 (.D(temperature_buffer[0]), .SP(sys_clk_c_enable_129), 
            .CK(sys_clk_c), .Q(temperature[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i2 (.D(n339[2]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    LUT4 i23112_3_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .D(n27599), .Z(cnt_write_3__N_185[2])) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(142[16] 145[10])
    defparam i23112_3_lut_4_lut.init = 16'h0078;
    LUT4 i3835_3_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(n27599), 
         .D(cnt_write[2]), .Z(cnt_write_3__N_185[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(142[16] 145[10])
    defparam i3835_3_lut_4_lut.init = 16'h0800;
    CCU2D sub_1707_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n21701), .COUT(n21702));
    defparam sub_1707_add_2_5.INIT0 = 16'h5999;
    defparam sub_1707_add_2_5.INIT1 = 16'h5999;
    defparam sub_1707_add_2_5.INJECT1_0 = "NO";
    defparam sub_1707_add_2_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_550 (.A(state[0]), .B(state[1]), .Z(n27665)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_550.init = 16'h8888;
    CCU2D sub_1707_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n21700), .COUT(n21701));
    defparam sub_1707_add_2_3.INIT0 = 16'h5999;
    defparam sub_1707_add_2_3.INIT1 = 16'h5999;
    defparam sub_1707_add_2_3.INJECT1_0 = "NO";
    defparam sub_1707_add_2_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(n27726), 
         .D(cnt_write[3]), .Z(n25165)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8880;
    FD1P3IX cnt_delay_i0_i3 (.D(n339[3]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(n27555), .B(n27591), .C(n27576), .D(n27564), 
         .Z(sys_clk_c_enable_173)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h8000;
    LUT4 i3_2_lut_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(cnt_write[1]), 
         .D(cnt_write[0]), .Z(n9)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i6_4_lut_4_lut (.A(state[0]), .B(state_2__N_161[0]), .C(state[1]), 
         .D(n27131), .Z(n2)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // c:/fpga/ds18b20/ds18b20.v(72[15:20])
    defparam i6_4_lut_4_lut.init = 16'hfd0d;
    LUT4 i1_4_lut_then_3_lut (.A(state[0]), .B(cnt_main[3]), .C(cnt_main[0]), 
         .Z(n27774)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_4_lut_then_3_lut.init = 16'h2020;
    CCU2D sub_1707_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n21700));
    defparam sub_1707_add_2_1.INIT0 = 16'h0000;
    defparam sub_1707_add_2_1.INIT1 = 16'h5999;
    defparam sub_1707_add_2_1.INJECT1_0 = "NO";
    defparam sub_1707_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_else_3_lut (.A(state[0]), .B(cnt_main[2]), .C(cnt_main[3]), 
         .Z(n27773)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_4_lut_else_3_lut.init = 16'h2020;
    LUT4 i1_3_lut_4_lut (.A(n27726), .B(n27675), .C(n6), .D(\state_back_2__N_122[2] ), 
         .Z(n25132)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_3_lut_4_lut.init = 16'h0070;
    LUT4 i1_4_lut_then_4_lut (.A(n27635), .B(n27599), .C(\state_back_2__N_122[2] ), 
         .D(state[1]), .Z(n27783)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(72[15:20])
    defparam i1_4_lut_then_4_lut.init = 16'h0800;
    LUT4 i1_4_lut_else_4_lut (.A(n27635), .B(\state_back_2__N_122[2] ), 
         .C(state[1]), .D(n5338), .Z(n27782)) /* synthesis lut_function=(!((B (C+!(D))+!B (C))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(72[15:20])
    defparam i1_4_lut_else_4_lut.init = 16'h0a02;
    FD1P3IX cnt_delay_i0_i4 (.D(n339[4]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_551 (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n27666)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_551.init = 16'h8888;
    LUT4 i21_1_lut_2_lut (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n7)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i21_1_lut_2_lut.init = 16'h7777;
    FD1P3IX cnt_delay_i0_i5 (.D(n339[5]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i6 (.D(n339[6]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(\state_back_2__N_122[2] ), .B(n25272), .C(n34), 
         .D(n19), .Z(sys_clk_c_enable_11)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hccc8;
    LUT4 i25_4_lut (.A(n27651), .B(n27650), .C(state[0]), .D(state[1]), 
         .Z(n19)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i25_4_lut.init = 16'h3a0a;
    FD1P3IX cnt_delay_i0_i7 (.D(n339[7]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    LUT4 n25378_bdd_3_lut (.A(n25378), .B(cnt_write[0]), .C(cnt_write[2]), 
         .Z(n26651)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam n25378_bdd_3_lut.init = 16'hbfbf;
    FD1P3IX cnt_main_i0_i0 (.D(n1), .SP(sys_clk_c_enable_83), .CD(n12438), 
            .CK(sys_clk_c), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i8 (.D(n339[8]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    LUT4 n26654_bdd_3_lut (.A(n26654), .B(n26651), .C(state[0]), .Z(one_wire_N_288)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n26654_bdd_3_lut.init = 16'hcaca;
    FD1P3IX cnt_init_i0_i0 (.D(n27715), .SP(sys_clk_c_enable_80), .CD(n12441), 
            .CK(sys_clk_c), .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i0 (.D(cnt_write_3__N_185[0]), .SP(sys_clk_c_enable_78), 
            .CD(n12443), .CK(sys_clk_c), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n27635), .B(state[1]), .C(\state_back_2__N_122[2] ), 
         .D(state[0]), .Z(sys_clk_c_enable_73)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;
    defparam i2_4_lut.init = 16'h2002;
    LUT4 i10150_3_lut (.A(sys_clk_c_enable_73), .B(\state_back_2__N_122[2] ), 
         .C(n337), .Z(n12448)) /* synthesis lut_function=(A ((C)+!B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i10150_3_lut.init = 16'ha2a2;
    LUT4 n27142_bdd_4_lut (.A(n27142), .B(state[1]), .C(n27141), .D(state[0]), 
         .Z(n28848)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n27142_bdd_4_lut.init = 16'hf088;
    LUT4 i2_4_lut_adj_16 (.A(state[1]), .B(cnt_main[3]), .C(state[0]), 
         .D(n27730), .Z(n25330)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i2_4_lut_adj_16.init = 16'hbfff;
    LUT4 i1_2_lut_rep_560 (.A(state[0]), .B(cnt_write[3]), .Z(n27675)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_rep_560.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_17 (.A(state[0]), .B(cnt_write[3]), .C(n27712), 
         .D(n27726), .Z(n21850)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_3_lut_4_lut_adj_17.init = 16'h2000;
    FD1P3AX cnt_read_i0_i0 (.D(n25277), .SP(sys_clk_c_enable_75), .CK(sys_clk_c), 
            .Q(cnt_read[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_read_i0_i0.GSR = "ENABLED";
    FD1P3AX cnt_i0_i0 (.D(cnt_2__N_22[0]), .SP(sys_clk_c_enable_154), .CK(sys_clk_c), 
            .Q(cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i9 (.D(n339[9]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i10 (.D(n339[10]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i11 (.D(n339[11]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    FD1P3AX state_i0_i0 (.D(state_2__N_119[0]), .SP(sys_clk_c_enable_41), 
            .CK(sys_clk_c), .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam state_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i12 (.D(n339[12]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_18 (.A(n26518), .B(n27635), .C(n25132), .D(state[1]), 
         .Z(sys_clk_c_enable_156)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_18.init = 16'hc088;
    LUT4 cnt_main_1__bdd_4_lut_24714 (.A(cnt_main[1]), .B(cnt_main[3]), 
         .C(cnt_main[2]), .D(cnt_main[0]), .Z(state_2__N_161[0])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+!(D)))) */ ;
    defparam cnt_main_1__bdd_4_lut_24714.init = 16'h1322;
    LUT4 i1_2_lut_rep_449_4_lut (.A(n27651), .B(n27650), .C(state[0]), 
         .D(n27695), .Z(n27564)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (D)+!B (C+(D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(72[15:20])
    defparam i1_2_lut_rep_449_4_lut.init = 16'hff3a;
    FD1P3AX temperature_buffer_i0_i1 (.D(one_wire_out), .SP(sys_clk_c_enable_43), 
            .CK(sys_clk_c), .Q(temperature_buffer[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_buffer_i0_i1.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i2 (.D(one_wire_out), .SP(sys_clk_c_enable_44), 
            .CK(sys_clk_c), .Q(temperature_buffer[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_buffer_i0_i2.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i0 (.D(n339[0]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    PFUMX i24355 (.BLUT(n27325), .ALUT(n27324), .C0(cnt[1]), .Z(one_wire_N_281));
    FD1P3AX temperature_buffer_i0_i3 (.D(one_wire_out), .SP(sys_clk_c_enable_47), 
            .CK(sys_clk_c), .Q(temperature_buffer[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_buffer_i0_i3.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i4 (.D(one_wire_out), .SP(sys_clk_c_enable_49), 
            .CK(sys_clk_c), .Q(temperature_buffer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_buffer_i0_i4.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i5 (.D(one_wire_out), .SP(sys_clk_c_enable_50), 
            .CK(sys_clk_c), .Q(temperature_buffer[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_buffer_i0_i5.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_450_4_lut (.A(n27651), .B(n27650), .C(state[0]), 
         .D(state[1]), .Z(n27565)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/fpga/ds18b20/ds18b20.v(72[15:20])
    defparam i1_2_lut_rep_450_4_lut.init = 16'h3a00;
    FD1P3IX cnt_delay_i0_i13 (.D(n339[13]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    LUT4 i10124_4_lut (.A(sys_clk_c_enable_83), .B(n6_adj_1633), .C(state[0]), 
         .D(cnt_main[3]), .Z(n12438)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i10124_4_lut.init = 16'h8a0a;
    LUT4 i1_1_lut (.A(cnt_main[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(72[15:20])
    defparam i1_1_lut.init = 16'h5555;
    FD1S3IX cnt_1mhz_2261__i2 (.D(n17[2]), .CK(sys_clk_c), .CD(n27689), 
            .Q(cnt_1mhz[2]));   // c:/fpga/ds18b20/ds18b20.v(56[16:31])
    defparam cnt_1mhz_2261__i2.GSR = "ENABLED";
    FD1P3AX temperature_buffer_i0_i6 (.D(one_wire_out), .SP(sys_clk_c_enable_55), 
            .CK(sys_clk_c), .Q(temperature_buffer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_buffer_i0_i6.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i14 (.D(n339[14]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    LUT4 i4140_1_lut (.A(one_wire_N_273), .Z(n6384)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(75[2] 192[5])
    defparam i4140_1_lut.init = 16'h5555;
    FD1P3IX cnt_delay_i0_i15 (.D(n339[15]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    LUT4 i15107_2_lut (.A(cnt[0]), .B(n12355), .Z(cnt_2__N_22[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(89[4] 190[11])
    defparam i15107_2_lut.init = 16'h4444;
    LUT4 i4368_4_lut (.A(cnt_read[2]), .B(n27643), .C(cnt_read[1]), .D(cnt_read[0]), 
         .Z(n5338)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(167[16] 170[10])
    defparam i4368_4_lut.init = 16'ha2a0;
    FD1P3AX temperature_buffer_i0_i7 (.D(one_wire_out), .SP(sys_clk_c_enable_58), 
            .CK(sys_clk_c), .Q(temperature_buffer[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_buffer_i0_i7.GSR = "DISABLED";
    LUT4 i3_4_lut (.A(cnt_read[2]), .B(n27643), .C(n14525), .D(n27711), 
         .Z(n14526)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(167[16] 170[10])
    defparam i3_4_lut.init = 16'h2000;
    LUT4 i34_3_lut_4_lut (.A(cnt_write[3]), .B(n27639), .C(state[0]), 
         .D(n27651), .Z(n30)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i34_3_lut_4_lut.init = 16'h4f40;
    LUT4 i23663_4_lut (.A(n25277), .B(n4), .C(n26), .D(state[0]), .Z(sys_clk_c_enable_41)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;   // c:/fpga/ds18b20/ds18b20.v(72[15:20])
    defparam i23663_4_lut.init = 16'h0311;
    LUT4 i1_3_lut_4_lut_adj_19 (.A(\state_back_2__N_122[2] ), .B(n27651), 
         .C(n25263), .D(n27727), .Z(sys_clk_c_enable_87)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(73[15:25])
    defparam i1_3_lut_4_lut_adj_19.init = 16'hf0e0;
    LUT4 i1_3_lut_4_lut_adj_20 (.A(\state_back_2__N_122[2] ), .B(n27651), 
         .C(n25263), .D(n27697), .Z(sys_clk_c_enable_89)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(73[15:25])
    defparam i1_3_lut_4_lut_adj_20.init = 16'he0f0;
    LUT4 i1_4_lut_adj_21 (.A(n27635), .B(state[1]), .C(\state_back_2__N_122[2] ), 
         .D(n6), .Z(n4)) /* synthesis lut_function=((B (C+!(D)))+!A) */ ;   // c:/fpga/ds18b20/ds18b20.v(72[15:20])
    defparam i1_4_lut_adj_21.init = 16'hd5dd;
    LUT4 i1_3_lut (.A(\state_back_2__N_122[2] ), .B(n27106), .C(n337), 
         .Z(n26)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(72[15:20])
    defparam i1_3_lut.init = 16'hcece;
    LUT4 i3_4_lut_adj_22 (.A(state[1]), .B(n6_adj_1634), .C(\state_back_2__N_122[2] ), 
         .D(n27591), .Z(n11374)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(177[20:43])
    defparam i3_4_lut_adj_22.init = 16'hefff;
    FD1S3IX cnt_1mhz_2261__i1 (.D(n17[1]), .CK(sys_clk_c), .CD(n27689), 
            .Q(cnt_1mhz[1]));   // c:/fpga/ds18b20/ds18b20.v(56[16:31])
    defparam cnt_1mhz_2261__i1.GSR = "ENABLED";
    LUT4 i19412_3_lut (.A(cnt_1mhz[2]), .B(cnt_1mhz[1]), .C(cnt_1mhz[0]), 
         .Z(n17[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(56[16:31])
    defparam i19412_3_lut.init = 16'h6a6a;
    FD1P3IX cnt_delay_i0_i16 (.D(n339[16]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i16.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i17 (.D(n339[17]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i17.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i18 (.D(n339[18]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i18.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i19 (.D(n339[19]), .SP(sys_clk_c_enable_73), .CD(n12448), 
            .CK(sys_clk_c), .Q(cnt_delay[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_delay_i0_i19.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i1 (.D(n261[1]), .SP(sys_clk_c_enable_75), .CD(n15890), 
            .CK(sys_clk_c), .Q(cnt_read[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_read_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i2 (.D(n261[2]), .SP(sys_clk_c_enable_75), .CD(n15890), 
            .CK(sys_clk_c), .Q(cnt_read[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_read_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i1 (.D(cnt_write_3__N_185[1]), .SP(sys_clk_c_enable_78), 
            .CD(n12443), .CK(sys_clk_c), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i2 (.D(cnt_write_3__N_185[2]), .SP(sys_clk_c_enable_78), 
            .CD(n12443), .CK(sys_clk_c), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    LUT4 i19405_2_lut (.A(cnt_1mhz[1]), .B(cnt_1mhz[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(56[16:31])
    defparam i19405_2_lut.init = 16'h6666;
    FD1S3AX clk_1mhz_145 (.D(clk_1mhz_N_276), .CK(sys_clk_c), .Q(clk_1mhz)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(52[12] 57[6])
    defparam clk_1mhz_145.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i3 (.D(cnt_write_3__N_185[3]), .SP(sys_clk_c_enable_78), 
            .CD(n12443), .CK(sys_clk_c), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_23 (.A(n27576), .B(n27564), .C(n27591), 
         .D(n27555), .Z(sys_clk_c_enable_172)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_23.init = 16'h8000;
    LUT4 i9191_3_lut_4_lut (.A(n27643), .B(n27642), .C(n27599), .D(cnt_write[0]), 
         .Z(cnt_write_3__N_185[0])) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // c:/fpga/ds18b20/ds18b20.v(142[16] 145[10])
    defparam i9191_3_lut_4_lut.init = 16'h404f;
    CCU2D add_77_21 (.A0(cnt_delay[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n21619), 
          .S0(n339[19]));   // c:/fpga/ds18b20/ds18b20.v(188[29:45])
    defparam add_77_21.INIT0 = 16'h5aaa;
    defparam add_77_21.INIT1 = 16'h0000;
    defparam add_77_21.INJECT1_0 = "NO";
    defparam add_77_21.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_24 (.A(n27724), .B(\state_back_2__N_122[2] ), .C(n27635), 
         .D(n5338), .Z(n15890)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i2_4_lut_adj_24.init = 16'h5010;
    LUT4 i3459_2_lut (.A(cnt_read[1]), .B(cnt_read[0]), .Z(n261[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(169[31:46])
    defparam i3459_2_lut.init = 16'h6666;
    LUT4 i3466_3_lut (.A(cnt_read[2]), .B(cnt_read[1]), .C(cnt_read[0]), 
         .Z(n261[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(169[31:46])
    defparam i3466_3_lut.init = 16'h6a6a;
    LUT4 i15320_3_lut (.A(n27599), .B(cnt_write[1]), .C(cnt_write[0]), 
         .Z(cnt_write_3__N_185[1])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(142[16] 145[10])
    defparam i15320_3_lut.init = 16'h1414;
    FD1P3IX cnt_init_i0_i1 (.D(n110[1]), .SP(sys_clk_c_enable_80), .CD(n12441), 
            .CK(sys_clk_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_25 (.A(n27643), .B(n27642), .C(state[0]), 
         .D(n27599), .Z(n25252)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/fpga/ds18b20/ds18b20.v(142[16] 145[10])
    defparam i1_2_lut_3_lut_4_lut_adj_25.init = 16'h4000;
    LUT4 i3422_3_lut (.A(cnt_init[2]), .B(cnt_init[0]), .C(cnt_init[1]), 
         .Z(n110[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(126[24:39])
    defparam i3422_3_lut.init = 16'h6a6a;
    LUT4 i33_2_lut (.A(cnt_main[0]), .B(cnt_main[1]), .Z(n6951)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(62[14:22])
    defparam i33_2_lut.init = 16'h6666;
    FD1P3IX cnt_init_i0_i2 (.D(n110[2]), .SP(sys_clk_c_enable_80), .CD(n12441), 
            .CK(sys_clk_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    LUT4 mux_84_Mux_2_i7_4_lut (.A(n27699), .B(n17591), .C(\state_back_2__N_122[2] ), 
         .D(n27727), .Z(num_delay_19__N_212[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(89[4] 190[11])
    defparam mux_84_Mux_2_i7_4_lut.init = 16'hc0ca;
    LUT4 i15312_2_lut (.A(cnt_read[1]), .B(cnt_read[2]), .Z(n17591)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i15312_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_3_lut_4_lut (.A(state[0]), .B(n27607), .C(n27592), .D(state[1]), 
         .Z(n9775)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_3_lut_3_lut_4_lut.init = 16'hf088;
    LUT4 i1_4_lut_adj_26 (.A(n27547), .B(n27651), .C(n32), .D(n6_adj_1636), 
         .Z(sys_clk_c_enable_88)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_26.init = 16'ha080;
    LUT4 i1_4_lut_adj_27 (.A(n27608), .B(\state_back_2__N_122[2] ), .C(n27594), 
         .D(n27665), .Z(n32)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_27.init = 16'hbabb;
    FD1P3IX cnt_main_i0_i1 (.D(n6951), .SP(sys_clk_c_enable_83), .CD(n12438), 
            .CK(sys_clk_c), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i2 (.D(n25[2]), .SP(sys_clk_c_enable_83), .CD(n12438), 
            .CK(sys_clk_c), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    LUT4 mux_84_Mux_4_i7_4_lut (.A(n2_adj_1637), .B(cnt_read[2]), .C(\state_back_2__N_122[2] ), 
         .D(state[1]), .Z(num_delay_19__N_212[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(89[4] 190[11])
    defparam mux_84_Mux_4_i7_4_lut.init = 16'hcacf;
    LUT4 i14863_3_lut (.A(cnt_write[0]), .B(cnt_write[2]), .C(cnt_write[1]), 
         .Z(n7_adj_1638)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(147[7] 161[14])
    defparam i14863_3_lut.init = 16'h8c8c;
    FD1P3IX cnt_main_i0_i3 (.D(n25[3]), .SP(sys_clk_c_enable_83), .CD(n12438), 
            .CK(sys_clk_c), .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    LUT4 mux_84_Mux_5_i7_4_lut (.A(n2_adj_1640), .B(cnt_read[2]), .C(\state_back_2__N_122[2] ), 
         .D(state[1]), .Z(num_delay_19__N_212[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(89[4] 190[11])
    defparam mux_84_Mux_5_i7_4_lut.init = 16'hcacf;
    LUT4 i1_4_lut_adj_28 (.A(cnt_init[2]), .B(n27712), .C(n7_adj_1638), 
         .D(state[0]), .Z(num_delay_19__N_212[6])) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(89[4] 190[11])
    defparam i1_4_lut_adj_28.init = 16'hc044;
    PFUMX i24250 (.BLUT(n27130), .ALUT(n27129), .C0(state[0]), .Z(n27131));
    FD1P3AX num_delay_i0_i2 (.D(num_delay_19__N_212[2]), .SP(sys_clk_c_enable_87), 
            .CK(sys_clk_c), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam num_delay_i0_i2.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i4 (.D(num_delay_19__N_212[4]), .SP(sys_clk_c_enable_88), 
            .CK(sys_clk_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam num_delay_i0_i4.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i5 (.D(num_delay_19__N_212[5]), .SP(sys_clk_c_enable_89), 
            .CK(sys_clk_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam num_delay_i0_i5.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i6 (.D(num_delay_19__N_212[6]), .SP(sys_clk_c_enable_90), 
            .CK(sys_clk_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam num_delay_i0_i6.GSR = "DISABLED";
    LUT4 i1_3_lut_rep_455_4_lut (.A(\state_back_2__N_122[2] ), .B(n27635), 
         .C(state[0]), .D(state[1]), .Z(sys_clk_c_enable_78)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_rep_455_4_lut.init = 16'h4004;
    LUT4 i23691_2_lut_3_lut_4_lut (.A(\state_back_2__N_122[2] ), .B(n27635), 
         .C(cnt_main[1]), .D(n25330), .Z(sys_clk_c_enable_129)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i23691_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_rep_573 (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n27688)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_rep_573.init = 16'h8888;
    LUT4 i3393_2_lut_3_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i3393_2_lut_3_lut.init = 16'h7878;
    LUT4 i10129_2_lut_3_lut_4_lut (.A(\state_back_2__N_122[2] ), .B(n27635), 
         .C(state[0]), .D(state[1]), .Z(n12443)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i10129_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_rep_492_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), 
         .C(cnt_main[3]), .D(cnt_main[2]), .Z(n27607)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_rep_492_3_lut_4_lut.init = 16'h0008;
    LUT4 i3400_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .D(cnt_main[3]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i3400_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3347_2_lut_3_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .Z(n6_adj_1633)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i3347_2_lut_3_lut.init = 16'hf8f8;
    PFUMX i24229 (.BLUT(n27105), .ALUT(n27104), .C0(state[1]), .Z(n27106));
    LUT4 i2_2_lut_rep_521_3_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .Z(n27636)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i2_2_lut_rep_521_3_lut.init = 16'h0808;
    LUT4 i23718_2_lut_3_lut_4_lut (.A(\state_back_2__N_122[2] ), .B(n27635), 
         .C(cnt_main[1]), .D(n25330), .Z(sys_clk_c_enable_122)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i23718_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 n6625_bdd_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[3]), 
         .D(state[1]), .Z(n27141)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam n6625_bdd_3_lut_4_lut.init = 16'h0007;
    LUT4 i3374_3_lut_rep_574 (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .Z(n27689)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i3374_3_lut_rep_574.init = 16'hc8c8;
    LUT4 i36_2_lut_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(clk_1mhz_N_276)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i36_2_lut_4_lut.init = 16'h37c8;
    LUT4 i1_2_lut_rep_520_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(n27635)) /* synthesis lut_function=(!(A ((D)+!B)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_520_4_lut.init = 16'h00c8;
    CCU2D add_77_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21611), .COUT(n21612), .S0(n339[3]), .S1(n339[4]));   // c:/fpga/ds18b20/ds18b20.v(188[29:45])
    defparam add_77_5.INIT0 = 16'h5aaa;
    defparam add_77_5.INIT1 = 16'h5aaa;
    defparam add_77_5.INJECT1_0 = "NO";
    defparam add_77_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_29 (.A(cnt_main[3]), .B(n27636), .C(state[1]), 
         .D(state[0]), .Z(n34)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C)+!B (C+(D))))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_3_lut_4_lut_adj_29.init = 16'h040f;
    LUT4 i4_4_lut (.A(\state_back_2__N_122[2] ), .B(n25159), .C(n27636), 
         .D(n6_adj_1641), .Z(sys_clk_c_enable_189)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i4_4_lut.init = 16'h4000;
    LUT4 i1_2_lut (.A(cnt_main[3]), .B(state[1]), .Z(n6_adj_1641)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_30 (.A(n27591), .B(n9775), .C(n27608), .D(\state_back_2__N_122[2] ), 
         .Z(sys_clk_c_enable_174)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_30.init = 16'ha088;
    LUT4 i2_3_lut (.A(\state_back_2__N_122[2] ), .B(cnt_read[1]), .C(cnt_read[2]), 
         .Z(num_delay_19__N_212[0])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    CCU2D add_77_19 (.A0(cnt_delay[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21618), .COUT(n21619), .S0(n339[17]), .S1(n339[18]));   // c:/fpga/ds18b20/ds18b20.v(188[29:45])
    defparam add_77_19.INIT0 = 16'h5aaa;
    defparam add_77_19.INIT1 = 16'h5aaa;
    defparam add_77_19.INJECT1_0 = "NO";
    defparam add_77_19.INJECT1_1 = "NO";
    CCU2D add_77_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21610), .COUT(n21611), .S0(n339[1]), .S1(n339[2]));   // c:/fpga/ds18b20/ds18b20.v(188[29:45])
    defparam add_77_3.INIT0 = 16'h5aaa;
    defparam add_77_3.INIT1 = 16'h5aaa;
    defparam add_77_3.INJECT1_0 = "NO";
    defparam add_77_3.INJECT1_1 = "NO";
    CCU2D add_77_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21617), .COUT(n21618), .S0(n339[15]), .S1(n339[16]));   // c:/fpga/ds18b20/ds18b20.v(188[29:45])
    defparam add_77_17.INIT0 = 16'h5aaa;
    defparam add_77_17.INIT1 = 16'h5aaa;
    defparam add_77_17.INJECT1_0 = "NO";
    defparam add_77_17.INJECT1_1 = "NO";
    FD1P3AX temperature_i0_i11 (.D(temperature_buffer[3]), .SP(sys_clk_c_enable_122), 
            .CK(sys_clk_c), .Q(temperature[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_i0_i11.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_31 (.A(n27724), .B(n27649), .C(n27635), 
         .D(\state_back_2__N_122[2] ), .Z(n25272)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C)+!B !((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_31.init = 16'h40f0;
    CCU2D add_77_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n21610), .S1(n339[0]));   // c:/fpga/ds18b20/ds18b20.v(188[29:45])
    defparam add_77_1.INIT0 = 16'hF000;
    defparam add_77_1.INIT1 = 16'h5555;
    defparam add_77_1.INJECT1_0 = "NO";
    defparam add_77_1.INJECT1_1 = "NO";
    FD1P3AX temperature_i0_i10 (.D(temperature_buffer[2]), .SP(sys_clk_c_enable_122), 
            .CK(sys_clk_c), .Q(temperature[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_i0_i10.GSR = "ENABLED";
    FD1P3AX temperature_i0_i9 (.D(temperature_buffer[1]), .SP(sys_clk_c_enable_122), 
            .CK(sys_clk_c), .Q(temperature[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_i0_i9.GSR = "ENABLED";
    FD1P3AX temperature_i0_i8 (.D(temperature_buffer[0]), .SP(sys_clk_c_enable_122), 
            .CK(sys_clk_c), .Q(temperature[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_i0_i8.GSR = "ENABLED";
    FD1P3AX temperature_i0_i7 (.D(temperature_buffer[7]), .SP(sys_clk_c_enable_129), 
            .CK(sys_clk_c), .Q(temperature[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_i0_i7.GSR = "ENABLED";
    FD1P3AX temperature_i0_i6 (.D(temperature_buffer[6]), .SP(sys_clk_c_enable_129), 
            .CK(sys_clk_c), .Q(temperature[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_i0_i6.GSR = "ENABLED";
    FD1P3AX temperature_i0_i5 (.D(temperature_buffer[5]), .SP(sys_clk_c_enable_129), 
            .CK(sys_clk_c), .Q(temperature[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_i0_i5.GSR = "ENABLED";
    FD1P3AX temperature_i0_i4 (.D(temperature_buffer[4]), .SP(sys_clk_c_enable_129), 
            .CK(sys_clk_c), .Q(temperature[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_i0_i4.GSR = "ENABLED";
    FD1P3AX temperature_i0_i3 (.D(temperature_buffer[3]), .SP(sys_clk_c_enable_129), 
            .CK(sys_clk_c), .Q(temperature[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_i0_i3.GSR = "ENABLED";
    FD1P3AX temperature_i0_i2 (.D(temperature_buffer[2]), .SP(sys_clk_c_enable_129), 
            .CK(sys_clk_c), .Q(temperature[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_i0_i2.GSR = "ENABLED";
    FD1P3AX temperature_i0_i1 (.D(temperature_buffer[1]), .SP(sys_clk_c_enable_129), 
            .CK(sys_clk_c), .Q(temperature[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_i0_i1.GSR = "ENABLED";
    FD1P3AX num_delay_i0_i0 (.D(num_delay_19__N_212[0]), .SP(sys_clk_c_enable_174), 
            .CK(sys_clk_c), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam num_delay_i0_i0.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_580 (.A(\state_back_2__N_122[2] ), .B(state[1]), .Z(n27695)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_rep_580.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_438_3_lut_4_lut_4_lut (.A(\state_back_2__N_122[2] ), 
         .B(state[1]), .C(n27592), .D(n27608), .Z(n27553)) /* synthesis lut_function=(A (D)+!A ((C)+!B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_rep_438_3_lut_4_lut_4_lut.init = 16'hfb51;
    FD1P3AX state_back_i0_i2 (.D(\state_back_2__N_122[2] ), .SP(sys_clk_c_enable_133), 
            .CK(sys_clk_c), .Q(state_back[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam state_back_i0_i2.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(\state_back_2__N_122[2] ), .B(state[1]), .C(cnt_write[3]), 
         .D(cnt_write[1]), .Z(n25378)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i2_3_lut_4_lut.init = 16'hfffb;
    FD1P3AX state_back_i0_i1 (.D(n27712), .SP(sys_clk_c_enable_134), .CK(sys_clk_c), 
            .Q(state_back[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam state_back_i0_i1.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_32 (.A(\state_back_2__N_122[2] ), .B(state[1]), 
         .C(n27546), .D(n30), .Z(sys_clk_c_enable_90)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_3_lut_4_lut_adj_32.init = 16'hf0b0;
    LUT4 state_0__bdd_3_lut_24249_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), 
         .C(cnt_write[3]), .D(cnt_write[0]), .Z(n27129)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;
    defparam state_0__bdd_3_lut_24249_4_lut.init = 16'h0f1f;
    LUT4 i94_2_lut_rep_582 (.A(state[1]), .B(state[0]), .Z(n27697)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i94_2_lut_rep_582.init = 16'h2222;
    LUT4 i2_2_lut_3_lut (.A(state[1]), .B(state[0]), .C(\state_back_2__N_122[2] ), 
         .Z(n6_adj_1636)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i2_2_lut_3_lut.init = 16'hfdfd;
    LUT4 i23630_2_lut_rep_583 (.A(\state_back_2__N_122[2] ), .B(state[1]), 
         .Z(n27698)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i23630_2_lut_rep_583.init = 16'h1111;
    LUT4 i1_2_lut_rep_584 (.A(cnt_init[0]), .B(cnt_init[2]), .Z(n27699)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_rep_584.init = 16'h2222;
    LUT4 i1_2_lut_3_lut (.A(cnt_init[0]), .B(cnt_init[2]), .C(state[0]), 
         .Z(n2_adj_1640)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_rep_585 (.A(cnt_init[0]), .B(cnt_init[1]), .Z(n27700)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_rep_585.init = 16'h2222;
    LUT4 mux_84_Mux_4_i2_3_lut_4_lut (.A(cnt_init[0]), .B(cnt_init[1]), 
         .C(state[0]), .D(n7_adj_1638), .Z(n2_adj_1637)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam mux_84_Mux_4_i2_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_4_lut_adj_33 (.A(n27565), .B(n25272), .C(\state_back_2__N_122[2] ), 
         .D(n34), .Z(sys_clk_c_enable_133)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_33.init = 16'hccc8;
    FD1P3AX cnt_i0_i1 (.D(cnt_2__N_22[1]), .SP(sys_clk_c_enable_154), .CK(sys_clk_c), 
            .Q(cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_i0_i1.GSR = "ENABLED";
    FD1P3AX cnt_i0_i2 (.D(cnt_2__N_22[2]), .SP(sys_clk_c_enable_154), .CK(sys_clk_c), 
            .Q(cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam cnt_i0_i2.GSR = "ENABLED";
    FD1P3AX state_i0_i1 (.D(state_2__N_119[1]), .SP(sys_clk_c_enable_155), 
            .CK(sys_clk_c), .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam state_i0_i1.GSR = "ENABLED";
    FD1P3AX state_i0_i2 (.D(state_2__N_119[2]), .SP(sys_clk_c_enable_156), 
            .CK(sys_clk_c), .Q(\state_back_2__N_122[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam state_i0_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_594 (.A(cnt[0]), .B(cnt[1]), .Z(n27709)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(177[20:43])
    defparam i1_2_lut_rep_594.init = 16'heeee;
    LUT4 i23752_2_lut_2_lut_3_lut_4_lut (.A(cnt[0]), .B(cnt[1]), .C(n11374), 
         .D(cnt[2]), .Z(sys_clk_c_enable_49)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/fpga/ds18b20/ds18b20.v(177[20:43])
    defparam i23752_2_lut_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i23749_2_lut_2_lut_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(n11374), 
         .D(cnt[2]), .Z(sys_clk_c_enable_50)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(177[20:43])
    defparam i23749_2_lut_2_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i23761_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .D(n11374), 
         .Z(sys_clk_c_enable_43)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(177[20:43])
    defparam i23761_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_rep_595 (.A(cnt_init[0]), .B(cnt_init[2]), .Z(n27710)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_rep_595.init = 16'heeee;
    LUT4 n25309_bdd_3_lut_24231_4_lut (.A(cnt_init[0]), .B(cnt_init[2]), 
         .C(state[1]), .D(cnt_init[1]), .Z(n26653)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam n25309_bdd_3_lut_24231_4_lut.init = 16'he0f0;
    LUT4 i1_2_lut_3_lut_adj_34 (.A(cnt_init[0]), .B(cnt_init[2]), .C(state[0]), 
         .Z(n6)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_3_lut_adj_34.init = 16'hfefe;
    LUT4 i23191_2_lut_3_lut_4_lut (.A(cnt_init[0]), .B(cnt_init[2]), .C(n27727), 
         .D(\state_back_2__N_122[2] ), .Z(n25541)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i23191_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_596 (.A(cnt_read[0]), .B(cnt_read[1]), .Z(n27711)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_596.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_35 (.A(cnt_read[0]), .B(cnt_read[1]), .C(cnt_read[2]), 
         .D(state[0]), .Z(n6_adj_1634)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_4_lut_adj_35.init = 16'hffef;
    CCU2D add_77_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21616), .COUT(n21617), .S0(n339[13]), .S1(n339[14]));   // c:/fpga/ds18b20/ds18b20.v(188[29:45])
    defparam add_77_15.INIT0 = 16'h5aaa;
    defparam add_77_15.INIT1 = 16'h5aaa;
    defparam add_77_15.INJECT1_0 = "NO";
    defparam add_77_15.INJECT1_1 = "NO";
    CCU2D add_77_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21615), .COUT(n21616), .S0(n339[11]), .S1(n339[12]));   // c:/fpga/ds18b20/ds18b20.v(188[29:45])
    defparam add_77_13.INIT0 = 16'h5aaa;
    defparam add_77_13.INIT1 = 16'h5aaa;
    defparam add_77_13.INJECT1_0 = "NO";
    defparam add_77_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_597 (.A(state[1]), .B(\state_back_2__N_122[2] ), .Z(n27712)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_rep_597.init = 16'h2222;
    FD1P3AX num_delay_i0_i12 (.D(n27698), .SP(sys_clk_c_enable_172), .CK(sys_clk_c), 
            .Q(num_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam num_delay_i0_i12.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i8 (.D(num_delay_19__N_212[7]), .SP(sys_clk_c_enable_173), 
            .CK(sys_clk_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam num_delay_i0_i8.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut (.A(state[1]), .B(\state_back_2__N_122[2] ), .C(n14526), 
         .D(n25252), .Z(n12355)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_4_lut_4_lut.init = 16'he2c0;
    FD1P3AX num_delay_i0_i3 (.D(\num_delay_19__N_212[3] ), .SP(sys_clk_c_enable_174), 
            .CK(sys_clk_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam num_delay_i0_i3.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i1 (.D(num_delay_19__N_212[1]), .SP(sys_clk_c_enable_175), 
            .CK(sys_clk_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam num_delay_i0_i1.GSR = "DISABLED";
    LUT4 i23295_1_lut_2_lut (.A(state[1]), .B(\state_back_2__N_122[2] ), 
         .Z(n25650)) /* synthesis lut_function=((B)+!A) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i23295_1_lut_2_lut.init = 16'hdddd;
    LUT4 i3439_2_lut_rep_598 (.A(cnt[1]), .B(cnt[0]), .Z(n27713)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(165[60:70])
    defparam i3439_2_lut_rep_598.init = 16'h8888;
    LUT4 i2_2_lut_rep_528_3_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .Z(n27643)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(165[60:70])
    defparam i2_2_lut_rep_528_3_lut.init = 16'h8080;
    LUT4 i14898_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(n12355), .D(cnt[2]), 
         .Z(cnt_2__N_22[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(165[60:70])
    defparam i14898_3_lut_4_lut.init = 16'h7080;
    FD1P3AX data_wr_i0_i7 (.D(n16523), .SP(sys_clk_c_enable_178), .CK(sys_clk_c), 
            .Q(data_wr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_wr_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i6 (.D(n7), .SP(sys_clk_c_enable_178), .CK(sys_clk_c), 
            .Q(data_wr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_wr_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i1 (.D(n27666), .SP(sys_clk_c_enable_178), .CK(sys_clk_c), 
            .Q(data_wr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_wr_i0_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_599 (.A(cnt_write[1]), .B(cnt_write[2]), .Z(n27714)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_599.init = 16'h8888;
    FD1P3AX data_out_i0_i11 (.D(temperature[11]), .SP(sys_clk_c_enable_189), 
            .CK(sys_clk_c), .Q(\temp_raw_data[11] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_out_i0_i11.GSR = "DISABLED";
    LUT4 i3346_2_lut_rep_527_3_lut (.A(cnt_write[1]), .B(cnt_write[2]), 
         .C(cnt_write[3]), .Z(n27642)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i3346_2_lut_rep_527_3_lut.init = 16'hf8f8;
    LUT4 i1_3_lut_rep_524_4_lut_3_lut (.A(cnt_write[1]), .B(cnt_write[2]), 
         .C(cnt_write[0]), .Z(n27639)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam i1_3_lut_rep_524_4_lut_3_lut.init = 16'h8e8e;
    FD1P3AX data_out_i0_i10 (.D(temperature[10]), .SP(sys_clk_c_enable_189), 
            .CK(sys_clk_c), .Q(\temp_raw_data[10] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_out_i0_i10.GSR = "DISABLED";
    FD1P3AX data_out_i0_i9 (.D(temperature[9]), .SP(sys_clk_c_enable_189), 
            .CK(sys_clk_c), .Q(\temp_raw_data[9] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_out_i0_i9.GSR = "DISABLED";
    FD1P3AX data_out_i0_i8 (.D(temperature[8]), .SP(sys_clk_c_enable_189), 
            .CK(sys_clk_c), .Q(\temp_raw_data[8] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_out_i0_i8.GSR = "DISABLED";
    FD1P3AX data_out_i0_i7 (.D(temperature[7]), .SP(sys_clk_c_enable_189), 
            .CK(sys_clk_c), .Q(\temp_raw_data[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_out_i0_i7.GSR = "DISABLED";
    FD1P3AX data_out_i0_i6 (.D(temperature[6]), .SP(sys_clk_c_enable_189), 
            .CK(sys_clk_c), .Q(\temp_raw_data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_out_i0_i6.GSR = "DISABLED";
    FD1P3AX data_out_i0_i5 (.D(temperature[5]), .SP(sys_clk_c_enable_189), 
            .CK(sys_clk_c), .Q(\temp_raw_data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_out_i0_i5.GSR = "DISABLED";
    FD1P3AX data_out_i0_i4 (.D(temperature[4]), .SP(sys_clk_c_enable_189), 
            .CK(sys_clk_c), .Q(\temp_raw_data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_out_i0_i4.GSR = "DISABLED";
    FD1P3AX data_out_i0_i3 (.D(temperature[3]), .SP(sys_clk_c_enable_189), 
            .CK(sys_clk_c), .Q(\temp_raw_data[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_out_i0_i3.GSR = "DISABLED";
    LUT4 i11841_1_lut_rep_600 (.A(cnt_init[0]), .Z(n27715)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i11841_1_lut_rep_600.init = 16'h5555;
    FD1P3AX data_out_i0_i2 (.D(temperature[2]), .SP(sys_clk_c_enable_189), 
            .CK(sys_clk_c), .Q(\temp_raw_data[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_out_i0_i2.GSR = "DISABLED";
    FD1P3AX data_out_i0_i1 (.D(temperature[1]), .SP(sys_clk_c_enable_189), 
            .CK(sys_clk_c), .Q(\temp_raw_data[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_out_i0_i1.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i7 (.D(data_wr[7]), .SP(sys_clk_c_enable_192), 
            .CK(sys_clk_c), .Q(data_wr_buffer[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_wr_buffer_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i6 (.D(data_wr[6]), .SP(sys_clk_c_enable_192), 
            .CK(sys_clk_c), .Q(data_wr_buffer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_wr_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i4 (.D(data_wr[1]), .SP(sys_clk_c_enable_192), 
            .CK(sys_clk_c), .Q(data_wr_buffer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam data_wr_buffer_i0_i4.GSR = "DISABLED";
    LUT4 i10126_3_lut_4_lut (.A(state[0]), .B(n27605), .C(state[1]), .D(n27725), 
         .Z(n12441)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i10126_3_lut_4_lut.init = 16'h1101;
    LUT4 i1_2_lut_3_lut_3_lut_2_lut (.A(cnt_init[0]), .B(cnt_init[1]), .Z(n110[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_3_lut_3_lut_2_lut.init = 16'h6666;
    FD1S3IX cnt_1mhz_2261__i0 (.D(n17[0]), .CK(sys_clk_c), .CD(n27689), 
            .Q(cnt_1mhz[0]));   // c:/fpga/ds18b20/ds18b20.v(56[16:31])
    defparam cnt_1mhz_2261__i0.GSR = "ENABLED";
    CCU2D sub_1707_add_2_21 (.A0(cnt_delay[19]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21709), .S1(n337));
    defparam sub_1707_add_2_21.INIT0 = 16'h5999;
    defparam sub_1707_add_2_21.INIT1 = 16'h0000;
    defparam sub_1707_add_2_21.INJECT1_0 = "NO";
    defparam sub_1707_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_1707_add_2_19 (.A0(cnt_delay[17]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21708), .COUT(n21709));
    defparam sub_1707_add_2_19.INIT0 = 16'h5999;
    defparam sub_1707_add_2_19.INIT1 = 16'h5555;
    defparam sub_1707_add_2_19.INJECT1_0 = "NO";
    defparam sub_1707_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_1707_add_2_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[16]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n21707), .COUT(n21708));
    defparam sub_1707_add_2_17.INIT0 = 16'h5555;
    defparam sub_1707_add_2_17.INIT1 = 16'h5999;
    defparam sub_1707_add_2_17.INJECT1_0 = "NO";
    defparam sub_1707_add_2_17.INJECT1_1 = "NO";
    PFUMX i18427 (.BLUT(n2), .ALUT(n20629), .C0(\state_back_2__N_122[2] ), 
          .Z(state_2__N_119[0]));
    LUT4 i23512_3_lut (.A(n27775), .B(n2_adj_1642), .C(state[1]), .Z(n3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(89[4] 190[11])
    defparam i23512_3_lut.init = 16'hcaca;
    FD1P3AX temperature_buffer_i0_i0 (.D(one_wire_out), .SP(sys_clk_c_enable_195), 
            .CK(sys_clk_c), .Q(temperature_buffer[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam temperature_buffer_i0_i0.GSR = "DISABLED";
    LUT4 state_2__I_0_181_i2_4_lut (.A(n27710), .B(cnt_write[0]), .C(state[0]), 
         .D(n27642), .Z(n2_adj_1643)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(89[4] 190[11])
    defparam state_2__I_0_181_i2_4_lut.init = 16'h05c5;
    PFUMX state_2__I_0_181_i7 (.BLUT(n2_adj_1643), .ALUT(n3_adj_1644), .C0(n25650), 
          .Z(one_wire_N_283)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;
    PFUMX state_2__I_0_167_Mux_2_i7 (.BLUT(n3), .ALUT(n4_adj_1645), .C0(\state_back_2__N_122[2] ), 
          .Z(state_2__N_119[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;
    LUT4 i18426_4_lut (.A(cnt_read[0]), .B(state_back[0]), .C(state[0]), 
         .D(n27728), .Z(n20629)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(72[15:20])
    defparam i18426_4_lut.init = 16'hc5cf;
    CCU2D sub_1707_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n21706), .COUT(n21707));
    defparam sub_1707_add_2_15.INIT0 = 16'h5999;
    defparam sub_1707_add_2_15.INIT1 = 16'h5999;
    defparam sub_1707_add_2_15.INJECT1_0 = "NO";
    defparam sub_1707_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_1707_add_2_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n21705), .COUT(n21706));
    defparam sub_1707_add_2_13.INIT0 = 16'h5555;
    defparam sub_1707_add_2_13.INIT1 = 16'h5999;
    defparam sub_1707_add_2_13.INJECT1_0 = "NO";
    defparam sub_1707_add_2_13.INJECT1_1 = "NO";
    FD1P3AX i140_163 (.D(one_wire_N_288), .SP(one_wire_N_283), .CK(clk_1mhz), 
            .Q(one_wire_N_273));   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i140_163.GSR = "ENABLED";
    CCU2D add_77_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21614), .COUT(n21615), .S0(n339[9]), .S1(n339[10]));   // c:/fpga/ds18b20/ds18b20.v(188[29:45])
    defparam add_77_11.INIT0 = 16'h5aaa;
    defparam add_77_11.INIT1 = 16'h5aaa;
    defparam add_77_11.INJECT1_0 = "NO";
    defparam add_77_11.INJECT1_1 = "NO";
    CCU2D add_77_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21613), .COUT(n21614), .S0(n339[7]), .S1(n339[8]));   // c:/fpga/ds18b20/ds18b20.v(188[29:45])
    defparam add_77_9.INIT0 = 16'h5aaa;
    defparam add_77_9.INIT1 = 16'h5aaa;
    defparam add_77_9.INJECT1_0 = "NO";
    defparam add_77_9.INJECT1_1 = "NO";
    CCU2D sub_1707_add_2_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n21704), .COUT(n21705));
    defparam sub_1707_add_2_11.INIT0 = 16'h5555;
    defparam sub_1707_add_2_11.INIT1 = 16'h5555;
    defparam sub_1707_add_2_11.INJECT1_0 = "NO";
    defparam sub_1707_add_2_11.INJECT1_1 = "NO";
    CCU2D add_77_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n21612), .COUT(n21613), .S0(n339[5]), .S1(n339[6]));   // c:/fpga/ds18b20/ds18b20.v(188[29:45])
    defparam add_77_7.INIT0 = 16'h5aaa;
    defparam add_77_7.INIT1 = 16'h5aaa;
    defparam add_77_7.INJECT1_0 = "NO";
    defparam add_77_7.INJECT1_1 = "NO";
    CCU2D sub_1707_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n21703), .COUT(n21704));
    defparam sub_1707_add_2_9.INIT0 = 16'h5999;
    defparam sub_1707_add_2_9.INIT1 = 16'h5999;
    defparam sub_1707_add_2_9.INJECT1_0 = "NO";
    defparam sub_1707_add_2_9.INJECT1_1 = "NO";
    LUT4 i14897_3_lut (.A(cnt[1]), .B(n12354), .C(cnt[0]), .Z(cnt_2__N_22[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(89[4] 190[11])
    defparam i14897_3_lut.init = 16'h4848;
    LUT4 i10039_4_lut (.A(state[1]), .B(n14526), .C(\state_back_2__N_122[2] ), 
         .D(n25252), .Z(n12354)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(89[4] 190[11])
    defparam i10039_4_lut.init = 16'hcac0;
    LUT4 i14794_2_lut_rep_609 (.A(state[0]), .B(state[1]), .Z(n27724)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14794_2_lut_rep_609.init = 16'heeee;
    LUT4 i1_2_lut_rep_493_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(n27728), 
         .D(cnt_read[0]), .Z(n27608)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_493_3_lut_4_lut.init = 16'h0100;
    LUT4 state_2__I_0_181_i3_4_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), 
         .C(n27663), .D(\state_back_2__N_122[2] ), .Z(n3_adj_1644)) /* synthesis lut_function=(!(A+(B (D)+!B (C (D))))) */ ;
    defparam state_2__I_0_181_i3_4_lut_4_lut_4_lut.init = 16'h0155;
    LUT4 i1_2_lut_3_lut_adj_36 (.A(state[0]), .B(state[1]), .C(n5338), 
         .Z(n14525)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_36.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_37 (.A(state[0]), .B(state[1]), .C(clk_1mhz), 
         .D(n27689), .Z(sys_clk_c_enable_75)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_37.init = 16'h0100;
    LUT4 i1_2_lut_rep_610 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n27725)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_610.init = 16'h8888;
    LUT4 i23156_2_lut_rep_536_3_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .Z(n27651)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i23156_2_lut_rep_536_3_lut.init = 16'h7070;
    LUT4 i23086_2_lut_3_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(\state_back_2__N_122[2] ), 
         .Z(n25409)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i23086_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i6859_3_lut_rep_611 (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .Z(n27726)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(147[7] 161[14])
    defparam i6859_3_lut_rep_611.init = 16'h2b2b;
    LUT4 n9148_bdd_2_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .D(cnt_write[3]), .Z(n27104)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B+(C+(D))))) */ ;   // c:/fpga/ds18b20/ds18b20.v(147[7] 161[14])
    defparam n9148_bdd_2_lut_4_lut.init = 16'h002b;
    LUT4 i15123_2_lut_rep_535_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), 
         .C(cnt_write[2]), .D(cnt_write[3]), .Z(n27650)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (D)+!B ((D)+!C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(147[7] 161[14])
    defparam i15123_2_lut_rep_535_4_lut.init = 16'hff2b;
    LUT4 i23733_4_lut (.A(n25541), .B(n21850), .C(\state_back_2__N_122[2] ), 
         .D(n25330), .Z(n25941)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i23733_4_lut.init = 16'h2220;
    LUT4 i9778_2_lut_rep_612 (.A(state[0]), .B(state[1]), .Z(n27727)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(89[4] 190[11])
    defparam i9778_2_lut_rep_612.init = 16'hbbbb;
    LUT4 i15103_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(\state_back_2__N_122[2] ), 
         .Z(state_back_2__N_122[0])) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(89[4] 190[11])
    defparam i15103_2_lut_3_lut.init = 16'h0b0b;
    LUT4 i14682_2_lut_rep_613 (.A(cnt_read[1]), .B(cnt_read[2]), .Z(n27728)) /* synthesis lut_function=(A (B)) */ ;
    defparam i14682_2_lut_rep_613.init = 16'h8888;
    LUT4 i1_2_lut_rep_534_3_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[0]), 
         .Z(n27649)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i1_2_lut_rep_534_3_lut.init = 16'h7070;
    LUT4 state_2__I_0_167_Mux_2_i4_3_lut_3_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), 
         .C(state_back[2]), .D(state[0]), .Z(n4_adj_1645)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam state_2__I_0_167_Mux_2_i4_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 i1_2_lut_3_lut_4_lut_adj_38 (.A(cnt_read[1]), .B(cnt_read[2]), 
         .C(\state_back_2__N_122[2] ), .D(cnt_read[0]), .Z(n25277)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_38.init = 16'h0070;
    LUT4 i2_3_lut_adj_39 (.A(n337), .B(state_back[1]), .C(state[0]), .Z(n21874)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(72[15:20])
    defparam i2_3_lut_adj_39.init = 16'h8080;
    LUT4 state_0__bdd_3_lut_24275 (.A(cnt_init[2]), .B(cnt_init[0]), .C(cnt_init[1]), 
         .Z(n27130)) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;
    defparam state_0__bdd_3_lut_24275.init = 16'h7d7d;
    LUT4 n25573_bdd_3_lut_4_lut (.A(cnt_main[2]), .B(cnt_main[0]), .C(state[0]), 
         .D(cnt_main[3]), .Z(n26517)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam n25573_bdd_3_lut_4_lut.init = 16'hefff;
    LUT4 n9148_bdd_3_lut_4_lut (.A(cnt_main[2]), .B(cnt_main[0]), .C(cnt_main[3]), 
         .D(\state_back_2__N_122[2] ), .Z(n27105)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam n9148_bdd_3_lut_4_lut.init = 16'h0010;
    LUT4 i23825_2_lut_rep_615 (.A(cnt_main[2]), .B(cnt_main[0]), .Z(n27730)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i23825_2_lut_rep_615.init = 16'h1111;
    LUT4 state_1__bdd_4_lut_24840 (.A(cnt_init[2]), .B(one_wire_out), .C(cnt_init[0]), 
         .D(cnt_init[1]), .Z(n27142)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam state_1__bdd_4_lut_24840.init = 16'h0002;
    LUT4 i18446_4_lut (.A(n28848), .B(n21874), .C(\state_back_2__N_122[2] ), 
         .D(state[1]), .Z(state_2__N_119[1])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(73[15:25])
    defparam i18446_4_lut.init = 16'hfaca;
    LUT4 n14114_bdd_4_lut (.A(n27700), .B(cnt_init[2]), .C(state[0]), 
         .D(cnt_write[3]), .Z(n2_adj_1642)) /* synthesis lut_function=(!(A (C (D))+!A (B ((D)+!C)+!B (C (D))))) */ ;
    defparam n14114_bdd_4_lut.init = 16'h0bfb;
    LUT4 i2_4_lut_4_lut (.A(n27698), .B(n27577), .C(n27635), .D(n27553), 
         .Z(sys_clk_c_enable_134)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i2_4_lut_4_lut.init = 16'hd000;
    LUT4 i23645_2_lut_3_lut_4_lut (.A(n27689), .B(clk_1mhz), .C(state[1]), 
         .D(\state_back_2__N_122[2] ), .Z(sys_clk_c_enable_83)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i23645_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_3_lut_4_lut_adj_40 (.A(n27689), .B(clk_1mhz), .C(cnt_write[0]), 
         .D(sys_rst_n_c), .Z(n6_adj_1646)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_40.init = 16'hfdff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_41 (.A(n27689), .B(clk_1mhz), .C(state[0]), 
         .D(sys_rst_n_c), .Z(n25159)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_41.init = 16'h2000;
    PFUMX i23862 (.BLUT(n26517), .ALUT(n26516), .C0(\state_back_2__N_122[2] ), 
          .Z(n26518));
    LUT4 i623_2_lut_rep_476_3_lut (.A(n27689), .B(clk_1mhz), .C(sys_rst_n_c), 
         .Z(n27591)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i623_2_lut_rep_476_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_rep_490_3_lut (.A(n27689), .B(clk_1mhz), .C(\state_back_2__N_122[2] ), 
         .Z(n27605)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i1_2_lut_rep_490_3_lut.init = 16'hfdfd;
    LUT4 i23734_2_lut_3_lut (.A(n27689), .B(clk_1mhz), .C(n25941), .Z(sys_clk_c_enable_155)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i23734_2_lut_3_lut.init = 16'h2020;
    LUT4 i23651_2_lut_rep_456_3_lut_4_lut (.A(n27689), .B(clk_1mhz), .C(state[0]), 
         .D(\state_back_2__N_122[2] ), .Z(sys_clk_c_enable_80)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i23651_2_lut_rep_456_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_rep_451_3_lut_4_lut (.A(cnt_main[2]), .B(n27688), .C(state[0]), 
         .D(cnt_main[3]), .Z(n27566)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_rep_451_3_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_462_3_lut_4_lut (.A(cnt_main[2]), .B(n27688), .C(state[0]), 
         .D(cnt_main[3]), .Z(n27577)) /* synthesis lut_function=(!(A (C)+!A (B (C (D))+!B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_rep_462_3_lut_4_lut.init = 16'h0f4f;
    LUT4 data_wr_buffer_6__bdd_4_lut (.A(data_wr_buffer[6]), .B(cnt[2]), 
         .C(cnt[0]), .D(data_wr_buffer[7]), .Z(n27324)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam data_wr_buffer_6__bdd_4_lut.init = 16'hfb0b;
    LUT4 i1_2_lut_rep_440_3_lut_4_lut_4_lut (.A(n27698), .B(state[0]), .C(n27636), 
         .D(cnt_main[3]), .Z(n27555)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_440_3_lut_4_lut_4_lut.init = 16'h55d5;
    LUT4 data_wr_buffer_6__bdd_3_lut (.A(data_wr_buffer[4]), .B(cnt[2]), 
         .C(cnt[0]), .Z(n27325)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam data_wr_buffer_6__bdd_3_lut.init = 16'ha8a8;
    LUT4 i1_2_lut_rep_432_3_lut_4_lut_4_lut (.A(n27698), .B(n27591), .C(n27607), 
         .D(state[0]), .Z(n27547)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;
    defparam i1_2_lut_rep_432_3_lut_4_lut_4_lut.init = 16'hc444;
    LUT4 i2_3_lut_rep_431_4_lut_4_lut (.A(n27698), .B(n27591), .C(n27576), 
         .D(n27566), .Z(n27546)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;
    defparam i2_3_lut_rep_431_4_lut_4_lut.init = 16'hc040;
    LUT4 i4637_3_lut_rep_484_4_lut (.A(cnt[2]), .B(n27713), .C(n27714), 
         .D(cnt_write[3]), .Z(n27599)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i4637_3_lut_rep_484_4_lut.init = 16'hff70;
    LUT4 i14905_4_lut (.A(n12030), .B(\state_back_2__N_122[2] ), .C(state[1]), 
         .D(state[0]), .Z(num_delay_19__N_212[7])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(89[4] 190[11])
    defparam i14905_4_lut.init = 16'h0323;
    LUT4 i1_2_lut_adj_42 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n12030)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_adj_42.init = 16'hbbbb;
    LUT4 i14900_2_lut (.A(cnt_read[2]), .B(\state_back_2__N_122[2] ), .Z(\num_delay_19__N_212[3] )) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(89[4] 190[11])
    defparam i14900_2_lut.init = 16'h8888;
    LUT4 one_wire_I_0_4_lut (.A(one_wire_out), .B(n9), .C(one_wire_N_283), 
         .D(n10), .Z(one_wire_N_277)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam one_wire_I_0_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_43 (.A(n27547), .B(state[0]), .C(n34_adj_1647), 
         .D(n27_adj_1648), .Z(sys_clk_c_enable_175)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;
    defparam i1_4_lut_adj_43.init = 16'ha2a0;
    LUT4 i1_4_lut_adj_44 (.A(\state_back_2__N_122[2] ), .B(state[1]), .C(n27639), 
         .D(n27675), .Z(n34_adj_1647)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_44.init = 16'h5111;
    LUT4 i1_4_lut_adj_45 (.A(cnt_init[0]), .B(state[1]), .C(n25409), .D(n27649), 
         .Z(n27_adj_1648)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;
    defparam i1_4_lut_adj_45.init = 16'h3b0a;
    LUT4 mux_84_Mux_1_i7_4_lut (.A(n7_adj_1649), .B(n17591), .C(\state_back_2__N_122[2] ), 
         .D(n27665), .Z(num_delay_19__N_212[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(89[4] 190[11])
    defparam mux_84_Mux_1_i7_4_lut.init = 16'h3a30;
    LUT4 i14854_3_lut (.A(cnt_write[0]), .B(cnt_write[2]), .C(cnt_write[1]), 
         .Z(n7_adj_1649)) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(147[7] 161[14])
    defparam i14854_3_lut.init = 16'h7373;
    LUT4 i3_4_lut_adj_46 (.A(n6951), .B(cnt_main[3]), .C(n27698), .D(n25159), 
         .Z(sys_clk_c_enable_178)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut_adj_46.init = 16'h2000;
    LUT4 i1_2_lut_adj_47 (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n16523)) /* synthesis lut_function=((B)+!A) */ ;   // c:/fpga/ds18b20/ds18b20.v(88[12] 191[6])
    defparam i1_2_lut_adj_47.init = 16'hdddd;
    LUT4 i23633_4_lut (.A(cnt_write[2]), .B(n25378), .C(state[0]), .D(n6_adj_1646), 
         .Z(sys_clk_c_enable_192)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i23633_4_lut.init = 16'h0010;
    LUT4 i4_4_lut_adj_48 (.A(one_wire_N_281), .B(cnt_write[2]), .C(cnt_write[3]), 
         .D(\state_back_2__N_122[2] ), .Z(n10)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i4_4_lut_adj_48.init = 16'h0002;
    LUT4 i19403_1_lut (.A(cnt_1mhz[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(56[16:31])
    defparam i19403_1_lut.init = 16'h5555;
    LUT4 i23613_4_lut (.A(n27711), .B(cnt[2]), .C(n25247), .D(n27709), 
         .Z(sys_clk_c_enable_195)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(177[20:43])
    defparam i23613_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_461_3_lut_4_lut (.A(cnt_read[0]), .B(n27728), .C(\state_back_2__N_122[2] ), 
         .D(n27724), .Z(n27576)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (C))) */ ;
    defparam i1_2_lut_rep_461_3_lut_4_lut.init = 16'h0f2f;
    LUT4 i14280_3_lut_rep_477_4_lut (.A(cnt_write[3]), .B(n27726), .C(state[0]), 
         .D(n27651), .Z(n27592)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i14280_3_lut_rep_477_4_lut.init = 16'h1f10;
    PFUMX i23960 (.BLUT(n26653), .ALUT(n26652), .C0(\state_back_2__N_122[2] ), 
          .Z(n26654));
    LUT4 i23758_2_lut_3_lut_4_lut (.A(cnt[1]), .B(n11374), .C(cnt[2]), 
         .D(cnt[0]), .Z(sys_clk_c_enable_44)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(177[20:43])
    defparam i23758_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i23746_2_lut_3_lut_4_lut (.A(cnt[1]), .B(n11374), .C(cnt[2]), 
         .D(cnt[0]), .Z(sys_clk_c_enable_55)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(177[20:43])
    defparam i23746_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i23755_2_lut_3_lut_4_lut (.A(cnt[1]), .B(n11374), .C(cnt[2]), 
         .D(cnt[0]), .Z(sys_clk_c_enable_47)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(177[20:43])
    defparam i23755_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i23744_2_lut_3_lut_4_lut (.A(cnt[1]), .B(n11374), .C(cnt[2]), 
         .D(cnt[0]), .Z(sys_clk_c_enable_58)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(177[20:43])
    defparam i23744_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 n25573_bdd_3_lut_23861_4_lut (.A(cnt_read[0]), .B(n27728), .C(state[0]), 
         .D(n337), .Z(n26516)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam n25573_bdd_3_lut_23861_4_lut.init = 16'hfe0e;
    PFUMX i24506 (.BLUT(n27782), .ALUT(n27783), .C0(state[0]), .Z(sys_clk_c_enable_154));
    PFUMX i24500 (.BLUT(n27773), .ALUT(n27774), .C0(cnt_main[1]), .Z(n27775));
    
endmodule
