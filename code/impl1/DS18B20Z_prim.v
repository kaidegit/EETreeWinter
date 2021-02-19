// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Thu Feb 04 19:48:48 2021
//
// Verilog Description of module DS18B20Z
//

module DS18B20Z (clk_in, rst_n_in, one_wire, data_out, data_out_en) /* synthesis syn_module_defined=1 */ ;   // c:/fpga/ds18b20/ds18b20.v(18[8:16])
    input clk_in;   // c:/fpga/ds18b20/ds18b20.v(20[11:17])
    input rst_n_in;   // c:/fpga/ds18b20/ds18b20.v(21[11:19])
    inout one_wire;   // c:/fpga/ds18b20/ds18b20.v(22[11:19])
    output [15:0]data_out;   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    output data_out_en;   // c:/fpga/ds18b20/ds18b20.v(24[22:33])
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/fpga/ds18b20/ds18b20.v(20[11:17])
    wire clk_1mhz /* synthesis is_clock=1, SET_AS_NETWORK=clk_1mhz */ ;   // c:/fpga/ds18b20/ds18b20.v(41[10:18])
    
    wire GND_net, VCC_net, rst_n_in_c, data_out_c_15, data_out_c_14, 
        data_out_c_13, data_out_c_12, data_out_c_11, data_out_c_10, 
        data_out_c_9, data_out_c_8, data_out_c_7, data_out_c_6, data_out_c_5, 
        data_out_c_4, data_out_c_3, data_out_c_2, data_out_c_1, data_out_c_0, 
        data_out_en_c;
    wire [2:0]cnt_1mhz;   // c:/fpga/ds18b20/ds18b20.v(42[14:22])
    wire [2:0]cnt;   // c:/fpga/ds18b20/ds18b20.v(55[14:17])
    wire [3:0]cnt_main;   // c:/fpga/ds18b20/ds18b20.v(57[14:22])
    wire [7:0]data_wr;   // c:/fpga/ds18b20/ds18b20.v(58[14:21])
    wire [7:0]data_wr_buffer;   // c:/fpga/ds18b20/ds18b20.v(59[14:28])
    wire [2:0]cnt_init;   // c:/fpga/ds18b20/ds18b20.v(60[14:22])
    wire [19:0]cnt_delay;   // c:/fpga/ds18b20/ds18b20.v(61[15:24])
    wire [19:0]num_delay;   // c:/fpga/ds18b20/ds18b20.v(62[15:24])
    wire [3:0]cnt_write;   // c:/fpga/ds18b20/ds18b20.v(63[14:23])
    wire [2:0]cnt_read;   // c:/fpga/ds18b20/ds18b20.v(64[14:22])
    wire [15:0]temperature;   // c:/fpga/ds18b20/ds18b20.v(65[15:26])
    wire [7:0]temperature_buffer;   // c:/fpga/ds18b20/ds18b20.v(66[14:32])
    wire [2:0]state;   // c:/fpga/ds18b20/ds18b20.v(67[15:20])
    wire [2:0]state_back;   // c:/fpga/ds18b20/ds18b20.v(68[15:25])
    
    wire clk_1mhz_N_276, n26, n29, data_out_en_N_275, n7791, n111;
    wire [3:0]cnt_write_3__N_185;
    
    wire one_wire_N_281, n262, n263, n264, n6983, n337, n340, 
        n341, n342, n343, n344, n345, n346, n347, n348, n349, 
        n350, n351, n352, n353, n354, n355, n356, n357, n358, 
        n359, n6988, n5095;
    wire [19:0]cnt_delay_19__N_48;
    wire [2:0]state_2__N_119;
    
    wire clk_in_c_enable_92;
    wire [2:0]cnt_2__N_22;
    wire [19:0]num_delay_19__N_212;
    wire [2:0]state_back_2__N_122;
    
    wire one_wire_N_272, n7, n7783, n6987, one_wire_N_283, one_wire_N_288, 
        one_wire_N_273, one_wire_N_277, n6986, n7832, n1779, n7831, 
        clk_in_c_enable_45, n20, n19, n18, one_wire_out, n1736, 
        n3172, n7032, clk_in_c_enable_85, n6985, n6984, clk_in_c_enable_8, 
        n6981, n7830, n6940, n86, n6999, n7610, n18_adj_1, n7495, 
        clk_in_c_enable_22, clk_in_c_enable_47, n7828, clk_in_c_enable_83, 
        n7790, n7789, n7006, n6977, n37, clk_in_c_enable_96, n7356, 
        n7827, n2, n3, n2_adj_2, n3_adj_3, n7826, n7825, n1, 
        n7824, n7823, n7822, clk_in_c_enable_21, clk_in_c_enable_93, 
        n4773, n7531, clk_in_c_enable_91, n6982, n7821, n7499, clk_in_c_enable_97, 
        n7820, n6996, n11, clk_in_c_enable_41, n7071, clk_in_c_enable_94, 
        n28, n6995, n11_adj_4, n33, n7440, n5913, n7031, clk_in_c_enable_81, 
        clk_in_c_enable_66, n5391, n33_adj_5, n6994, n7788, n7487, 
        clk_in_c_enable_43, clk_in_c_enable_98, n7818, n2152, n44, 
        n7817, n7780, n82, n7019, n7816, n6175, n7815, n7814, 
        n28_adj_6, n7787, n5074, n6978, n7045, n6979, n10, n9, 
        n10_adj_7, n7_adj_8, n7813, n7383, clk_in_c_enable_95, n4, 
        n7812, n7811, n7810, n109, n6980, n7809, clk_in_c_enable_84, 
        clk_in_c_enable_73, n7808, clk_in_c_enable_89, clk_in_c_enable_2, 
        n69, n6993, n85, n7807, n6992, n47, n55, clk_in_c_enable_88, 
        n6991, clk_in_c_enable_7, n29_adj_9, n6001, n7806, n6990, 
        n6989, n7775, n7542, n20_adj_10, n7805, clk_in_c_enable_40, 
        n7548, n7804, n4_adj_11, clk_in_c_enable_6, clk_in_c_enable_86, 
        n4554, n32, n7781, n7786, n7541, n7803, n36, clk_in_c_enable_9, 
        n6066, n7777, n7540, n7776, clk_1mhz_enable_1, n7456, n7773, 
        n7784, n7802, n39, n7538, n7801, n7800, clk_in_c_enable_25, 
        n7704, n7799, n16, clk_in_c_enable_82, n4106, n15, n7703, 
        n7798, n7785, n7447, n48, clk_in_c_enable_44, n7797, n7838, 
        n7837, n7796, n7836, n6, clk_in_c_enable_46, n5, n7834, 
        n7701, n7465, n7794, n7951, n7793, n7833, n7792;
    
    VHI i6864 (.Z(VCC_net));
    LUT4 i15_2_lut_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n7356)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i15_2_lut_3_lut.init = 16'h7878;
    BB one_wire_pad (.I(one_wire_N_272), .T(n1779), .B(one_wire), .O(one_wire_out));   // c:/fpga/ds18b20/ds18b20.v(70[2] 187[5])
    PFUMX i51 (.BLUT(n36), .ALUT(n32), .C0(state[1]), .Z(n47));
    CCU2D add_77_19 (.A0(cnt_delay[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6985), .COUT(n6986), .S0(n342), .S1(n341));   // c:/fpga/ds18b20/ds18b20.v(183[29:45])
    defparam add_77_19.INIT0 = 16'h5aaa;
    defparam add_77_19.INIT1 = 16'h5aaa;
    defparam add_77_19.INJECT1_0 = "NO";
    defparam add_77_19.INJECT1_1 = "NO";
    FD1P3AX data_out_en_157 (.D(data_out_en_N_275), .SP(clk_1mhz_enable_1), 
            .CK(clk_1mhz), .Q(data_out_en_c));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_en_157.GSR = "ENABLED";
    FD1P3AX data_out_i0_i1 (.D(temperature[0]), .SP(clk_in_c_enable_40), 
            .CK(clk_in_c), .Q(data_out_c_0));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_i0_i1.GSR = "DISABLED";
    FD1P3AX state_back_i0_i0 (.D(state_back_2__N_122[0]), .SP(clk_in_c_enable_2), 
            .CK(clk_in_c), .Q(state_back[0])) /* synthesis lse_init_val=0 */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam state_back_i0_i0.GSR = "ENABLED";
    FD1S3AX one_wire_buffer_155 (.D(one_wire_N_277), .CK(clk_1mhz), .Q(one_wire_N_272));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam one_wire_buffer_155.GSR = "ENABLED";
    FD1P3AX cnt_i0_i0 (.D(cnt_2__N_22[0]), .SP(clk_in_c_enable_21), .CK(clk_in_c), 
            .Q(cnt[0]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_i0_i0.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i0 (.D(cnt_delay_19__N_48[0]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[0]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    FD1P3AX temperature_i0_i0 (.D(temperature_buffer[0]), .SP(clk_in_c_enable_73), 
            .CK(clk_in_c), .Q(temperature[0]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_i0_i0.GSR = "ENABLED";
    FD1P3AX state_i0_i0 (.D(state_2__N_119[0]), .SP(clk_in_c_enable_6), 
            .CK(clk_in_c), .Q(state[0])) /* synthesis lse_init_val=0 */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam state_i0_i0.GSR = "ENABLED";
    FD1P3AX i140_163 (.D(one_wire_N_288), .SP(one_wire_N_283), .CK(clk_1mhz), 
            .Q(one_wire_N_273));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i140_163.GSR = "ENABLED";
    FD1S3IX cnt_1mhz_708__i0 (.D(n20), .CK(clk_in_c), .CD(n7821), .Q(cnt_1mhz[0]));   // c:/fpga/ds18b20/ds18b20.v(51[16:31])
    defparam cnt_1mhz_708__i0.GSR = "ENABLED";
    CCU2D sub_662_add_2_21 (.A0(cnt_delay[19]), .B0(num_delay[13]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6996), .S1(n337));
    defparam sub_662_add_2_21.INIT0 = 16'h5999;
    defparam sub_662_add_2_21.INIT1 = 16'h0000;
    defparam sub_662_add_2_21.INJECT1_0 = "NO";
    defparam sub_662_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_662_add_2_19 (.A0(cnt_delay[17]), .B0(num_delay[13]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6995), .COUT(n6996));
    defparam sub_662_add_2_19.INIT0 = 16'h5999;
    defparam sub_662_add_2_19.INIT1 = 16'h5555;
    defparam sub_662_add_2_19.INJECT1_0 = "NO";
    defparam sub_662_add_2_19.INJECT1_1 = "NO";
    CCU2D add_77_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6978), .COUT(n6979), .S0(n356), .S1(n355));   // c:/fpga/ds18b20/ds18b20.v(183[29:45])
    defparam add_77_5.INIT0 = 16'h5aaa;
    defparam add_77_5.INIT1 = 16'h5aaa;
    defparam add_77_5.INJECT1_0 = "NO";
    defparam add_77_5.INJECT1_1 = "NO";
    LUT4 i6705_2_lut_2_lut_3_lut_4_lut (.A(state_back_2__N_122[2]), .B(state[1]), 
         .C(n7821), .D(clk_1mhz), .Z(clk_in_c_enable_98)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i6705_2_lut_2_lut_3_lut_4_lut.init = 16'h0010;
    OB data_out_pad_15 (.I(data_out_c_15), .O(data_out[15]));   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    OB data_out_pad_14 (.I(data_out_c_14), .O(data_out[14]));   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    OB data_out_pad_13 (.I(data_out_c_13), .O(data_out[13]));   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    OB data_out_pad_12 (.I(data_out_c_12), .O(data_out[12]));   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    OB data_out_pad_11 (.I(data_out_c_11), .O(data_out[11]));   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    OB data_out_pad_10 (.I(data_out_c_10), .O(data_out[10]));   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    OB data_out_pad_9 (.I(data_out_c_9), .O(data_out[9]));   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    OB data_out_pad_8 (.I(data_out_c_8), .O(data_out[8]));   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    OB data_out_pad_7 (.I(data_out_c_7), .O(data_out[7]));   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    OB data_out_pad_6 (.I(data_out_c_6), .O(data_out[6]));   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    OB data_out_pad_5 (.I(data_out_c_5), .O(data_out[5]));   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    OB data_out_pad_4 (.I(data_out_c_4), .O(data_out[4]));   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    OB data_out_pad_3 (.I(data_out_c_3), .O(data_out[3]));   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    OB data_out_pad_2 (.I(data_out_c_2), .O(data_out[2]));   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    OB data_out_pad_1 (.I(data_out_c_1), .O(data_out[1]));   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    OB data_out_pad_0 (.I(data_out_c_0), .O(data_out[0]));   // c:/fpga/ds18b20/ds18b20.v(23[20:28])
    OB data_out_en_pad (.I(data_out_en_c), .O(data_out_en));   // c:/fpga/ds18b20/ds18b20.v(24[22:33])
    IB clk_in_pad (.I(clk_in), .O(clk_in_c));   // c:/fpga/ds18b20/ds18b20.v(20[11:17])
    IB rst_n_in_pad (.I(rst_n_in), .O(rst_n_in_c));   // c:/fpga/ds18b20/ds18b20.v(21[11:19])
    PFUMX i6653 (.BLUT(n7540), .ALUT(n7541), .C0(state_back_2__N_122[2]), 
          .Z(n7542));
    CCU2D sub_662_add_2_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[16]), .B1(num_delay[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6994), .COUT(n6995));
    defparam sub_662_add_2_17.INIT0 = 16'h5555;
    defparam sub_662_add_2_17.INIT1 = 16'h5999;
    defparam sub_662_add_2_17.INJECT1_0 = "NO";
    defparam sub_662_add_2_17.INJECT1_1 = "NO";
    CCU2D add_77_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6980), .COUT(n6981), .S0(n352), .S1(n351));   // c:/fpga/ds18b20/ds18b20.v(183[29:45])
    defparam add_77_9.INIT0 = 16'h5aaa;
    defparam add_77_9.INIT1 = 16'h5aaa;
    defparam add_77_9.INJECT1_0 = "NO";
    defparam add_77_9.INJECT1_1 = "NO";
    CCU2D sub_662_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[13]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6993), .COUT(n6994));
    defparam sub_662_add_2_15.INIT0 = 16'h5999;
    defparam sub_662_add_2_15.INIT1 = 16'h5999;
    defparam sub_662_add_2_15.INJECT1_0 = "NO";
    defparam sub_662_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_662_add_2_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6992), .COUT(n6993));
    defparam sub_662_add_2_13.INIT0 = 16'h5555;
    defparam sub_662_add_2_13.INIT1 = 16'h5999;
    defparam sub_662_add_2_13.INJECT1_0 = "NO";
    defparam sub_662_add_2_13.INJECT1_1 = "NO";
    FD1P3AX num_delay_i0_i6 (.D(num_delay_19__N_212[6]), .SP(clk_in_c_enable_7), 
            .CK(clk_in_c), .Q(num_delay[6]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam num_delay_i0_i6.GSR = "DISABLED";
    FD1P3AX state_i0_i2 (.D(state_2__N_119[2]), .SP(clk_in_c_enable_8), 
            .CK(clk_in_c), .Q(state_back_2__N_122[2])) /* synthesis lse_init_val=0 */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam state_i0_i2.GSR = "ENABLED";
    FD1P3AX state_i0_i1 (.D(state_2__N_119[1]), .SP(clk_in_c_enable_9), 
            .CK(clk_in_c), .Q(state[1])) /* synthesis lse_init_val=0 */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam state_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i2 (.D(n262), .SP(clk_in_c_enable_89), .CD(n5391), 
            .CK(clk_in_c), .Q(cnt_read[2]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_read_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i1 (.D(n263), .SP(clk_in_c_enable_89), .CD(n5391), 
            .CK(clk_in_c), .Q(cnt_read[1]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_read_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i3 (.D(cnt_write_3__N_185[3]), .SP(clk_in_c_enable_96), 
            .CD(n6940), .CK(clk_in_c), .Q(cnt_write[3]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i2 (.D(cnt_write_3__N_185[2]), .SP(clk_in_c_enable_96), 
            .CD(n6940), .CK(clk_in_c), .Q(cnt_write[2]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i1 (.D(cnt_write_3__N_185[1]), .SP(clk_in_c_enable_96), 
            .CD(n6940), .CK(clk_in_c), .Q(cnt_write[1]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i2 (.D(n111), .SP(clk_in_c_enable_97), .CD(n5095), 
            .CK(clk_in_c), .Q(cnt_init[2]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i1 (.D(n7548), .SP(clk_in_c_enable_97), .CD(n5095), 
            .CK(clk_in_c), .Q(cnt_init[1]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i3 (.D(n26), .SP(clk_in_c_enable_98), .CD(n5913), 
            .CK(clk_in_c), .Q(data_out_en_N_275));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i2 (.D(n7356), .SP(clk_in_c_enable_98), .CD(n5913), 
            .CK(clk_in_c), .Q(cnt_main[2]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i1 (.D(n2152), .SP(clk_in_c_enable_98), .CD(n5913), 
            .CK(clk_in_c), .Q(cnt_main[1]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    FD1P3AX cnt_i0_i2 (.D(cnt_2__N_22[2]), .SP(clk_in_c_enable_21), .CK(clk_in_c), 
            .Q(cnt[2]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_i0_i1 (.D(cnt_2__N_22[1]), .SP(clk_in_c_enable_21), .CK(clk_in_c), 
            .Q(cnt[1]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_i0_i1.GSR = "ENABLED";
    FD1P3AX temperature_buffer_i0_i7 (.D(one_wire_out), .SP(clk_in_c_enable_22), 
            .CK(clk_in_c), .Q(temperature_buffer[7]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_buffer_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i3 (.D(data_wr[3]), .SP(clk_in_c_enable_25), 
            .CK(clk_in_c), .Q(data_wr_buffer[3]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_wr_buffer_i0_i3.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i4 (.D(data_wr[5]), .SP(clk_in_c_enable_25), 
            .CK(clk_in_c), .Q(data_wr_buffer[4]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_wr_buffer_i0_i4.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i6 (.D(data_wr[6]), .SP(clk_in_c_enable_25), 
            .CK(clk_in_c), .Q(data_wr_buffer[6]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_wr_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX data_out_i0_i2 (.D(temperature[1]), .SP(clk_in_c_enable_40), 
            .CK(clk_in_c), .Q(data_out_c_1));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_i0_i2.GSR = "DISABLED";
    FD1P3AX data_out_i0_i3 (.D(temperature[2]), .SP(clk_in_c_enable_40), 
            .CK(clk_in_c), .Q(data_out_c_2));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_i0_i3.GSR = "DISABLED";
    FD1P3AX data_out_i0_i4 (.D(temperature[3]), .SP(clk_in_c_enable_40), 
            .CK(clk_in_c), .Q(data_out_c_3));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_i0_i4.GSR = "DISABLED";
    FD1P3AX data_out_i0_i5 (.D(temperature[4]), .SP(clk_in_c_enable_40), 
            .CK(clk_in_c), .Q(data_out_c_4));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_i0_i5.GSR = "DISABLED";
    FD1P3AX data_out_i0_i6 (.D(temperature[5]), .SP(clk_in_c_enable_40), 
            .CK(clk_in_c), .Q(data_out_c_5));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_i0_i6.GSR = "DISABLED";
    FD1P3AX data_out_i0_i7 (.D(temperature[6]), .SP(clk_in_c_enable_40), 
            .CK(clk_in_c), .Q(data_out_c_6));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_i0_i7.GSR = "DISABLED";
    FD1P3AX data_out_i0_i8 (.D(temperature[7]), .SP(clk_in_c_enable_40), 
            .CK(clk_in_c), .Q(data_out_c_7));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_i0_i8.GSR = "DISABLED";
    FD1P3AX data_out_i0_i9 (.D(temperature[8]), .SP(clk_in_c_enable_40), 
            .CK(clk_in_c), .Q(data_out_c_8));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_i0_i9.GSR = "DISABLED";
    FD1P3AX data_out_i0_i10 (.D(temperature[9]), .SP(clk_in_c_enable_40), 
            .CK(clk_in_c), .Q(data_out_c_9));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_i0_i10.GSR = "DISABLED";
    FD1P3AX data_out_i0_i11 (.D(temperature[10]), .SP(clk_in_c_enable_40), 
            .CK(clk_in_c), .Q(data_out_c_10));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_i0_i11.GSR = "DISABLED";
    FD1P3AX data_out_i0_i12 (.D(temperature[11]), .SP(clk_in_c_enable_40), 
            .CK(clk_in_c), .Q(data_out_c_11));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_i0_i12.GSR = "DISABLED";
    FD1P3AX data_out_i0_i13 (.D(temperature[12]), .SP(clk_in_c_enable_40), 
            .CK(clk_in_c), .Q(data_out_c_12));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_i0_i13.GSR = "DISABLED";
    FD1P3AX data_out_i0_i14 (.D(temperature[13]), .SP(clk_in_c_enable_40), 
            .CK(clk_in_c), .Q(data_out_c_13));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_i0_i14.GSR = "DISABLED";
    FD1P3AX data_out_i0_i15 (.D(temperature[14]), .SP(clk_in_c_enable_40), 
            .CK(clk_in_c), .Q(data_out_c_14));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_i0_i15.GSR = "DISABLED";
    FD1P3AX data_out_i0_i16 (.D(temperature[15]), .SP(clk_in_c_enable_40), 
            .CK(clk_in_c), .Q(data_out_c_15));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_out_i0_i16.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i3 (.D(n7), .SP(clk_in_c_enable_41), .CK(clk_in_c), 
            .Q(data_wr[3]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_wr_i0_i3.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i5 (.D(n7813), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .Q(data_wr[5]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_wr_i0_i5.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i6 (.D(n6001), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .Q(data_wr[6]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam data_wr_i0_i6.GSR = "DISABLED";
    FD1P3AX state_back_i0_i1 (.D(n7951), .SP(clk_in_c_enable_44), .CK(clk_in_c), 
            .Q(state_back[1])) /* synthesis lse_init_val=0 */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam state_back_i0_i1.GSR = "ENABLED";
    FD1P3AX state_back_i0_i2 (.D(state_back_2__N_122[2]), .SP(clk_in_c_enable_45), 
            .CK(clk_in_c), .Q(state_back[2])) /* synthesis lse_init_val=0 */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam state_back_i0_i2.GSR = "ENABLED";
    LUT4 i765_3_lut (.A(cnt_init[2]), .B(cnt_init[0]), .C(cnt_init[1]), 
         .Z(n111)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(121[24:39])
    defparam i765_3_lut.init = 16'h6a6a;
    PFUMX i32 (.BLUT(n5), .ALUT(n6), .C0(state_back_2__N_122[2]), .Z(n15));
    PFUMX i4544 (.BLUT(n82), .ALUT(n86), .C0(state_back_2__N_122[2]), 
          .Z(n5074));
    FD1P3AX temperature_buffer_i0_i6 (.D(one_wire_out), .SP(clk_in_c_enable_46), 
            .CK(clk_in_c), .Q(temperature_buffer[6]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i0 (.D(one_wire_out), .SP(clk_in_c_enable_47), 
            .CK(clk_in_c), .Q(temperature_buffer[0]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_buffer_i0_i0.GSR = "DISABLED";
    FD1P3AX cnt_delay_i0_i1 (.D(cnt_delay_19__N_48[1]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[1]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i2 (.D(cnt_delay_19__N_48[2]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[2]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i3 (.D(cnt_delay_19__N_48[3]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[3]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i4 (.D(cnt_delay_19__N_48[4]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[4]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i5 (.D(cnt_delay_19__N_48[5]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[5]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i6 (.D(cnt_delay_19__N_48[6]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[6]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i7 (.D(cnt_delay_19__N_48[7]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[7]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i8 (.D(cnt_delay_19__N_48[8]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[8]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i9 (.D(cnt_delay_19__N_48[9]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[9]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i10 (.D(cnt_delay_19__N_48[10]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[10]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i11 (.D(cnt_delay_19__N_48[11]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[11]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i12 (.D(cnt_delay_19__N_48[12]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[12]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i13 (.D(cnt_delay_19__N_48[13]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[13]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i14 (.D(cnt_delay_19__N_48[14]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[14]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i15 (.D(cnt_delay_19__N_48[15]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[15]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i16 (.D(cnt_delay_19__N_48[16]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[16]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i16.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i17 (.D(cnt_delay_19__N_48[17]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[17]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i17.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i18 (.D(cnt_delay_19__N_48[18]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[18]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i18.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i19 (.D(cnt_delay_19__N_48[19]), .SP(clk_in_c_enable_66), 
            .CK(clk_in_c), .Q(cnt_delay[19]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_delay_i0_i19.GSR = "ENABLED";
    FD1P3AX temperature_i0_i1 (.D(temperature_buffer[1]), .SP(clk_in_c_enable_73), 
            .CK(clk_in_c), .Q(temperature[1]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n11)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    FD1P3AX temperature_i0_i2 (.D(temperature_buffer[2]), .SP(clk_in_c_enable_73), 
            .CK(clk_in_c), .Q(temperature[2]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_i0_i2.GSR = "ENABLED";
    FD1P3AX temperature_i0_i3 (.D(temperature_buffer[3]), .SP(clk_in_c_enable_73), 
            .CK(clk_in_c), .Q(temperature[3]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_i0_i3.GSR = "ENABLED";
    FD1P3AX temperature_i0_i4 (.D(temperature_buffer[4]), .SP(clk_in_c_enable_73), 
            .CK(clk_in_c), .Q(temperature[4]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_i0_i4.GSR = "ENABLED";
    FD1P3AX temperature_i0_i5 (.D(temperature_buffer[5]), .SP(clk_in_c_enable_73), 
            .CK(clk_in_c), .Q(temperature[5]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_i0_i5.GSR = "ENABLED";
    FD1P3AX temperature_i0_i6 (.D(temperature_buffer[6]), .SP(clk_in_c_enable_73), 
            .CK(clk_in_c), .Q(temperature[6]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_i0_i6.GSR = "ENABLED";
    FD1P3AX temperature_i0_i7 (.D(temperature_buffer[7]), .SP(clk_in_c_enable_73), 
            .CK(clk_in_c), .Q(temperature[7]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_i0_i7.GSR = "ENABLED";
    FD1P3AX temperature_i0_i8 (.D(temperature_buffer[0]), .SP(clk_in_c_enable_81), 
            .CK(clk_in_c), .Q(temperature[8]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_i0_i8.GSR = "ENABLED";
    FD1P3AX temperature_i0_i9 (.D(temperature_buffer[1]), .SP(clk_in_c_enable_81), 
            .CK(clk_in_c), .Q(temperature[9]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_i0_i9.GSR = "ENABLED";
    FD1P3AX temperature_i0_i10 (.D(temperature_buffer[2]), .SP(clk_in_c_enable_81), 
            .CK(clk_in_c), .Q(temperature[10]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_i0_i10.GSR = "ENABLED";
    FD1P3AX temperature_i0_i11 (.D(temperature_buffer[3]), .SP(clk_in_c_enable_81), 
            .CK(clk_in_c), .Q(temperature[11]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_i0_i11.GSR = "ENABLED";
    FD1P3AX temperature_i0_i12 (.D(temperature_buffer[4]), .SP(clk_in_c_enable_81), 
            .CK(clk_in_c), .Q(temperature[12]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_i0_i12.GSR = "ENABLED";
    FD1P3AX temperature_i0_i13 (.D(temperature_buffer[5]), .SP(clk_in_c_enable_81), 
            .CK(clk_in_c), .Q(temperature[13]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_i0_i13.GSR = "ENABLED";
    FD1P3AX temperature_i0_i14 (.D(temperature_buffer[6]), .SP(clk_in_c_enable_81), 
            .CK(clk_in_c), .Q(temperature[14]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_i0_i14.GSR = "ENABLED";
    FD1P3AX temperature_i0_i15 (.D(temperature_buffer[7]), .SP(clk_in_c_enable_81), 
            .CK(clk_in_c), .Q(temperature[15]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_i0_i15.GSR = "ENABLED";
    LUT4 i5205_4_lut_then_4_lut (.A(n7951), .B(cnt_write[1]), .C(cnt_write[0]), 
         .D(cnt_write[2]), .Z(n7834)) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i5205_4_lut_then_4_lut.init = 16'ha200;
    FD1S3IX cnt_1mhz_708__i1 (.D(n19), .CK(clk_in_c), .CD(n7821), .Q(cnt_1mhz[1]));   // c:/fpga/ds18b20/ds18b20.v(51[16:31])
    defparam cnt_1mhz_708__i1.GSR = "ENABLED";
    LUT4 i6699_2_lut_rep_108 (.A(state[1]), .B(state_back_2__N_122[2]), 
         .Z(n7951)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i6699_2_lut_rep_108.init = 16'h2222;
    CCU2D add_77_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6984), .COUT(n6985), .S0(n344), .S1(n343));   // c:/fpga/ds18b20/ds18b20.v(183[29:45])
    defparam add_77_17.INIT0 = 16'h5aaa;
    defparam add_77_17.INIT1 = 16'h5aaa;
    defparam add_77_17.INJECT1_0 = "NO";
    defparam add_77_17.INJECT1_1 = "NO";
    FD1P3AX temperature_buffer_i0_i5 (.D(one_wire_out), .SP(clk_in_c_enable_82), 
            .CK(clk_in_c), .Q(temperature_buffer[5]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_buffer_i0_i5.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_83_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n7808)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_83_3_lut.init = 16'h0808;
    LUT4 i6706_4_lut_4_lut_then_4_lut (.A(n7811), .B(state_back_2__N_122[2]), 
         .C(cnt_write[3]), .D(state[0]), .Z(n7837)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i6706_4_lut_4_lut_then_4_lut.init = 16'hfdff;
    CCU2D add_77_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6981), .COUT(n6982), .S0(n350), .S1(n349));   // c:/fpga/ds18b20/ds18b20.v(183[29:45])
    defparam add_77_11.INIT0 = 16'h5aaa;
    defparam add_77_11.INIT1 = 16'h5aaa;
    defparam add_77_11.INJECT1_0 = "NO";
    defparam add_77_11.INJECT1_1 = "NO";
    LUT4 i6629_2_lut_3_lut_4_lut (.A(data_out_en_N_275), .B(n7808), .C(state_back_2__N_122[2]), 
         .D(state[0]), .Z(n36)) /* synthesis lut_function=(!(A (C)+!A (B (C+(D))+!B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i6629_2_lut_3_lut_4_lut.init = 16'h0b0f;
    FD1S3AX clk_1mhz_145 (.D(clk_1mhz_N_276), .CK(clk_in_c), .Q(clk_1mhz));   // c:/fpga/ds18b20/ds18b20.v(47[12] 52[6])
    defparam clk_1mhz_145.GSR = "ENABLED";
    CCU2D sub_662_add_2_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6991), .COUT(n6992));
    defparam sub_662_add_2_11.INIT0 = 16'h5555;
    defparam sub_662_add_2_11.INIT1 = 16'h5555;
    defparam sub_662_add_2_11.INJECT1_0 = "NO";
    defparam sub_662_add_2_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_1 (.A(state_back_2__N_122[2]), .B(n337), .C(n344), 
         .Z(cnt_delay_19__N_48[15])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_1.init = 16'h2020;
    LUT4 i6706_4_lut_4_lut_else_4_lut (.A(n7827), .B(state_back_2__N_122[2]), 
         .C(state[0]), .Z(n7836)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i6706_4_lut_4_lut_else_4_lut.init = 16'hefef;
    LUT4 i5205_4_lut_else_4_lut_4_lut (.A(state[1]), .B(state_back_2__N_122[2]), 
         .C(cnt_init[2]), .D(cnt_init[0]), .Z(n7833)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i5205_4_lut_else_4_lut_4_lut.init = 16'h0200;
    CCU2D sub_662_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[7]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6990), .COUT(n6991));
    defparam sub_662_add_2_9.INIT0 = 16'h5999;
    defparam sub_662_add_2_9.INIT1 = 16'h5999;
    defparam sub_662_add_2_9.INJECT1_0 = "NO";
    defparam sub_662_add_2_9.INJECT1_1 = "NO";
    FD1P3AX temperature_buffer_i0_i4 (.D(one_wire_out), .SP(clk_in_c_enable_83), 
            .CK(clk_in_c), .Q(temperature_buffer[4]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_buffer_i0_i4.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i3 (.D(one_wire_out), .SP(clk_in_c_enable_84), 
            .CK(clk_in_c), .Q(temperature_buffer[3]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_buffer_i0_i3.GSR = "DISABLED";
    LUT4 i2_4_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[0]), 
         .D(cnt_write[3]), .Z(n7071)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/fpga/ds18b20/ds18b20.v(68[15:25])
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i1_2_lut_3_lut_adj_2 (.A(state_back_2__N_122[2]), .B(n337), .C(n343), 
         .Z(cnt_delay_19__N_48[16])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_2.init = 16'h2020;
    LUT4 i1_4_lut (.A(n7801), .B(n85), .C(state_back_2__N_122[2]), .D(n11_adj_4), 
         .Z(clk_in_c_enable_21)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut.init = 16'h4544;
    LUT4 i6734_3_lut_4_lut (.A(rst_n_in_c), .B(n7801), .C(n47), .D(n7610), 
         .Z(clk_in_c_enable_7)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i6734_3_lut_4_lut.init = 16'h0200;
    FD1P3AX temperature_buffer_i0_i2 (.D(one_wire_out), .SP(clk_in_c_enable_85), 
            .CK(clk_in_c), .Q(temperature_buffer[2]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_buffer_i0_i2.GSR = "DISABLED";
    LUT4 i12_3_lut_4_lut (.A(n7807), .B(n7810), .C(n1736), .D(cnt_write[0]), 
         .Z(cnt_write_3__N_185[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D))) */ ;   // c:/fpga/ds18b20/ds18b20.v(137[16] 140[10])
    defparam i12_3_lut_4_lut.init = 16'h808f;
    LUT4 i6678_4_lut (.A(cnt[1]), .B(n7447), .C(n7818), .D(n7465), .Z(clk_in_c_enable_47)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(172[20:43])
    defparam i6678_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_rep_73_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), 
         .C(data_out_en_N_275), .D(cnt_main[2]), .Z(n7798)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_73_3_lut_4_lut.init = 16'h0008;
    LUT4 i27_3_lut (.A(state[1]), .B(n1736), .C(state[0]), .Z(n11_adj_4)) /* synthesis lut_function=(A (B (C))+!A !(C)) */ ;
    defparam i27_3_lut.init = 16'h8585;
    CCU2D sub_662_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6989), .COUT(n6990));
    defparam sub_662_add_2_7.INIT0 = 16'h5999;
    defparam sub_662_add_2_7.INIT1 = 16'h5999;
    defparam sub_662_add_2_7.INJECT1_0 = "NO";
    defparam sub_662_add_2_7.INJECT1_1 = "NO";
    CCU2D add_77_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6983), .COUT(n6984), .S0(n346), .S1(n345));   // c:/fpga/ds18b20/ds18b20.v(183[29:45])
    defparam add_77_15.INIT0 = 16'h5aaa;
    defparam add_77_15.INIT1 = 16'h5aaa;
    defparam add_77_15.INJECT1_0 = "NO";
    defparam add_77_15.INJECT1_1 = "NO";
    LUT4 i6638_2_lut_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(data_out_en_N_275), 
         .D(state[1]), .Z(n5)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam i6638_2_lut_3_lut_4_lut.init = 16'h0007;
    FD1P3AX temperature_buffer_i0_i1 (.D(one_wire_out), .SP(clk_in_c_enable_86), 
            .CK(clk_in_c), .Q(temperature_buffer[1]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam temperature_buffer_i0_i1.GSR = "DISABLED";
    CCU2D sub_662_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6988), .COUT(n6989));
    defparam sub_662_add_2_5.INIT0 = 16'h5999;
    defparam sub_662_add_2_5.INIT1 = 16'h5999;
    defparam sub_662_add_2_5.INJECT1_0 = "NO";
    defparam sub_662_add_2_5.INJECT1_1 = "NO";
    CCU2D add_77_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6979), .COUT(n6980), .S0(n354), .S1(n353));   // c:/fpga/ds18b20/ds18b20.v(183[29:45])
    defparam add_77_7.INIT0 = 16'h5aaa;
    defparam add_77_7.INIT1 = 16'h5aaa;
    defparam add_77_7.INJECT1_0 = "NO";
    defparam add_77_7.INJECT1_1 = "NO";
    PFUMX i6759 (.BLUT(n7704), .ALUT(n7538), .C0(state_back_2__N_122[2]), 
          .Z(state_2__N_119[0]));
    LUT4 i41_3_lut_rep_66_4_lut (.A(cnt_init[0]), .B(n7814), .C(state[0]), 
         .D(n3172), .Z(n7791)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;
    defparam i41_3_lut_rep_66_4_lut.init = 16'h02f2;
    PFUMX state_2__I_0_181_i7 (.BLUT(n2), .ALUT(n3), .C0(n7820), .Z(one_wire_N_283));
    LUT4 i782_2_lut_rep_106 (.A(cnt[1]), .B(cnt[0]), .Z(n7831)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(160[60:70])
    defparam i782_2_lut_rep_106.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_3 (.A(state_back_2__N_122[2]), .B(n337), .C(n342), 
         .Z(cnt_delay_19__N_48[17])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_3.init = 16'h2020;
    LUT4 i6725_2_lut_rep_82_3_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), 
         .Z(n7807)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(160[60:70])
    defparam i6725_2_lut_rep_82_3_lut.init = 16'h7f7f;
    LUT4 state_2__I_0_i3_4_lut (.A(state[0]), .B(cnt_read[1]), .C(state_back_2__N_122[2]), 
         .D(n7456), .Z(n3_adj_3)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam state_2__I_0_i3_4_lut.init = 16'hfa3a;
    LUT4 i1_2_lut_3_lut_adj_4 (.A(state_back_2__N_122[2]), .B(n337), .C(n351), 
         .Z(cnt_delay_19__N_48[8])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_4.init = 16'h2020;
    LUT4 i5209_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(n5074), .D(cnt[2]), 
         .Z(cnt_2__N_22[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(160[60:70])
    defparam i5209_3_lut_4_lut.init = 16'h7080;
    CCU2D add_77_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6977), .COUT(n6978), .S0(n358), .S1(n357));   // c:/fpga/ds18b20/ds18b20.v(183[29:45])
    defparam add_77_3.INIT0 = 16'h5aaa;
    defparam add_77_3.INIT1 = 16'h5aaa;
    defparam add_77_3.INJECT1_0 = "NO";
    defparam add_77_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_107 (.A(cnt_write[1]), .B(cnt_write[2]), .Z(n7832)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_107.init = 16'h8888;
    LUT4 i874_2_lut_rep_85_3_lut (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[3]), 
         .Z(n7810)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i874_2_lut_rep_85_3_lut.init = 16'hf8f8;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n7824), .B(n7788), .C(n7045), .D(n7789), 
         .Z(clk_in_c_enable_44)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hc040;
    LUT4 i1_2_lut_3_lut_adj_5 (.A(state_back_2__N_122[2]), .B(n337), .C(n341), 
         .Z(cnt_delay_19__N_48[18])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_5.init = 16'h2020;
    LUT4 i1_2_lut (.A(cnt[0]), .B(n5074), .Z(cnt_2__N_22[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(68[15:25])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_60_3_lut_4_lut_4_lut (.A(n7824), .B(state[0]), .C(n7808), 
         .D(data_out_en_N_275), .Z(n7785)) /* synthesis lut_function=(!(A (B ((D)+!C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_2_lut_rep_60_3_lut_4_lut_4_lut.init = 16'h77f7;
    LUT4 i1_2_lut_3_lut_adj_6 (.A(state_back_2__N_122[2]), .B(n337), .C(n340), 
         .Z(cnt_delay_19__N_48[19])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_6.init = 16'h2020;
    LUT4 i2_3_lut_4_lut (.A(n7786), .B(n7794), .C(n7792), .D(n7045), 
         .Z(clk_in_c_enable_95)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(21[11:19])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_adj_7 (.A(state_back_2__N_122[2]), .B(n337), .C(n350), 
         .Z(cnt_delay_19__N_48[9])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_7.init = 16'h2020;
    LUT4 i6685_2_lut_4_lut (.A(n7809), .B(cnt[0]), .C(n7787), .D(cnt[1]), 
         .Z(clk_in_c_enable_84)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/fpga/ds18b20/ds18b20.v(172[20:43])
    defparam i6685_2_lut_4_lut.init = 16'h4000;
    LUT4 i6681_2_lut_4_lut (.A(n7809), .B(cnt[0]), .C(n7787), .D(cnt[1]), 
         .Z(clk_in_c_enable_86)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(172[20:43])
    defparam i6681_2_lut_4_lut.init = 16'h0040;
    LUT4 i6695_2_lut_3_lut (.A(cnt[1]), .B(n4554), .C(cnt[0]), .Z(clk_in_c_enable_22)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(172[20:43])
    defparam i6695_2_lut_3_lut.init = 16'h2020;
    LUT4 i6693_2_lut_3_lut (.A(cnt[1]), .B(n4554), .C(cnt[0]), .Z(clk_in_c_enable_46)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(172[20:43])
    defparam i6693_2_lut_3_lut.init = 16'h0202;
    LUT4 i6722_3_lut_4_lut (.A(clk_1mhz), .B(n7821), .C(state[0]), .D(state_back_2__N_122[2]), 
         .Z(clk_in_c_enable_97)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i6722_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_3_lut_adj_8 (.A(state_back_2__N_122[2]), .B(n337), .C(n359), 
         .Z(cnt_delay_19__N_48[0])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_8.init = 16'h2020;
    PFUMX i6800 (.BLUT(n7781), .ALUT(n7780), .C0(cnt[1]), .Z(one_wire_N_281));
    LUT4 i1_2_lut_3_lut_4_lut (.A(clk_1mhz), .B(n7821), .C(n7817), .D(state_back_2__N_122[2]), 
         .Z(clk_in_c_enable_96)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i6708_2_lut_3_lut_4_lut (.A(clk_1mhz), .B(n7821), .C(n7838), 
         .D(n4773), .Z(clk_in_c_enable_9)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i6708_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_63_3_lut_4_lut (.A(clk_1mhz), .B(n7821), .C(state_back_2__N_122[2]), 
         .D(n7006), .Z(n7788)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_2_lut_rep_63_3_lut_4_lut.init = 16'h4404;
    FD1P3AX num_delay_i0_i0 (.D(num_delay_19__N_212[0]), .SP(clk_in_c_enable_91), 
            .CK(clk_in_c), .Q(num_delay[0]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam num_delay_i0_i0.GSR = "DISABLED";
    LUT4 i2_4_lut_adj_9 (.A(state[1]), .B(state_back_2__N_122[2]), .C(n7801), 
         .D(state[0]), .Z(clk_in_c_enable_66)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i2_4_lut_adj_9.init = 16'h0401;
    LUT4 i1_2_lut_rep_65_3_lut_4_lut (.A(clk_1mhz), .B(n7821), .C(state_back_2__N_122[2]), 
         .D(rst_n_in_c), .Z(n7790)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_2_lut_rep_65_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_69_3_lut (.A(clk_1mhz), .B(n7821), .C(rst_n_in_c), 
         .Z(n7794)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_2_lut_rep_69_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_68_3_lut (.A(clk_1mhz), .B(n7821), .C(n4773), .Z(n7793)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_2_lut_rep_68_3_lut.init = 16'hbfbf;
    LUT4 i3_4_lut (.A(cnt_main[1]), .B(n7801), .C(n7827), .D(n7803), 
         .Z(clk_in_c_enable_81)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0200;
    LUT4 i898_1_lut (.A(one_wire_N_273), .Z(n1779)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(70[2] 187[5])
    defparam i898_1_lut.init = 16'h5555;
    LUT4 i6096_2_lut (.A(cnt_1mhz[1]), .B(cnt_1mhz[0]), .Z(n19)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(51[16:31])
    defparam i6096_2_lut.init = 16'h6666;
    LUT4 i6731_4_lut (.A(cnt_main[1]), .B(n7801), .C(n7824), .D(n7805), 
         .Z(clk_in_c_enable_73)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i6731_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_adj_10 (.A(cnt_write[2]), .B(cnt_write[1]), .Z(n4)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(67[15:20])
    defparam i1_2_lut_adj_10.init = 16'h2222;
    LUT4 n7427_bdd_4_lut (.A(cnt_main[2]), .B(data_out_en_N_275), .C(cnt_main[1]), 
         .D(cnt_main[0]), .Z(n7773)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+(D))))) */ ;
    defparam n7427_bdd_4_lut.init = 16'h4001;
    LUT4 i1_2_lut_3_lut_adj_11 (.A(state_back_2__N_122[2]), .B(n337), .C(n357), 
         .Z(cnt_delay_19__N_48[2])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_11.init = 16'h2020;
    LUT4 i1_2_lut_rep_61_3_lut_4_lut_4_lut (.A(n7824), .B(state[0]), .C(n7808), 
         .D(data_out_en_N_275), .Z(n7786)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_2_lut_rep_61_3_lut_4_lut_4_lut.init = 16'h55d5;
    LUT4 i1_2_lut_rep_59_3_lut_4_lut_4_lut (.A(n7824), .B(n7794), .C(n7798), 
         .D(state[0]), .Z(n7784)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_2_lut_rep_59_3_lut_4_lut_4_lut.init = 16'hc444;
    LUT4 i1_2_lut_3_lut_adj_12 (.A(state_back_2__N_122[2]), .B(n337), .C(n349), 
         .Z(cnt_delay_19__N_48[10])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_12.init = 16'h2020;
    CCU2D sub_662_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6987), .COUT(n6988));
    defparam sub_662_add_2_3.INIT0 = 16'h5999;
    defparam sub_662_add_2_3.INIT1 = 16'h5999;
    defparam sub_662_add_2_3.INJECT1_0 = "NO";
    defparam sub_662_add_2_3.INJECT1_1 = "NO";
    LUT4 n9_bdd_4_lut_6761 (.A(cnt_main[0]), .B(data_out_en_N_275), .C(cnt_main[1]), 
         .D(cnt_main[2]), .Z(n7701)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+!(C)))) */ ;
    defparam n9_bdd_4_lut_6761.init = 16'h1232;
    LUT4 i6683_3_lut_4_lut (.A(n7828), .B(n7790), .C(cnt[1]), .D(n7465), 
         .Z(clk_in_c_enable_85)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i6683_3_lut_4_lut.init = 16'h0080;
    LUT4 i6670_2_lut (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n7548)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i6670_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_rep_71_4_lut (.A(n7825), .B(state_back_2__N_122[2]), .C(cnt_write[3]), 
         .D(n7811), .Z(n7796)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/fpga/ds18b20/ds18b20.v(68[15:25])
    defparam i1_2_lut_rep_71_4_lut.init = 16'hfdff;
    LUT4 i4_4_lut (.A(n7801), .B(n7_adj_8), .C(n7032), .D(n4773), .Z(n10_adj_7)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i4_4_lut.init = 16'h4000;
    LUT4 i6690_2_lut_3_lut (.A(cnt[1]), .B(n4554), .C(cnt[0]), .Z(clk_in_c_enable_82)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(172[20:43])
    defparam i6690_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_4_lut_adj_13 (.A(n7794), .B(n20_adj_10), .C(n7006), .D(state_back_2__N_122[2]), 
         .Z(clk_in_c_enable_91)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_13.init = 16'ha088;
    PFUMX i6796 (.BLUT(n7776), .ALUT(n7775), .C0(state[1]), .Z(n7777));
    LUT4 i5_3_lut_4_lut_4_lut (.A(n7824), .B(n7796), .C(n10_adj_7), .D(n7805), 
         .Z(clk_in_c_enable_6)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i5_3_lut_4_lut_4_lut.init = 16'hc040;
    LUT4 i6688_2_lut_3_lut (.A(cnt[1]), .B(n4554), .C(cnt[0]), .Z(clk_in_c_enable_83)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(172[20:43])
    defparam i6688_2_lut_3_lut.init = 16'h0101;
    LUT4 i2_3_lut (.A(state_back_2__N_122[2]), .B(cnt_read[1]), .C(cnt_read[2]), 
         .Z(num_delay_19__N_212[0])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    LUT4 i6103_3_lut (.A(cnt_1mhz[2]), .B(cnt_1mhz[1]), .C(cnt_1mhz[0]), 
         .Z(n18)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(51[16:31])
    defparam i6103_3_lut.init = 16'h6a6a;
    FD1S3IX cnt_1mhz_708__i2 (.D(n18), .CK(clk_in_c), .CD(n7821), .Q(cnt_1mhz[2]));   // c:/fpga/ds18b20/ds18b20.v(51[16:31])
    defparam cnt_1mhz_708__i2.GSR = "ENABLED";
    FD1P3AX num_delay_i0_i1 (.D(num_delay_19__N_212[1]), .SP(clk_in_c_enable_88), 
            .CK(clk_in_c), .Q(num_delay[1]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam num_delay_i0_i1.GSR = "DISABLED";
    LUT4 i3224_3_lut_4_lut (.A(n7798), .B(state[0]), .C(state[1]), .D(n7791), 
         .Z(n4106)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i3224_3_lut_4_lut.init = 16'hfb0b;
    LUT4 i6711_4_lut_4_lut (.A(n7793), .B(n7_adj_8), .C(n7487), .D(n6999), 
         .Z(clk_in_c_enable_8)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i6711_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_3_lut_adj_14 (.A(state_back_2__N_122[2]), .B(n337), .C(n348), 
         .Z(cnt_delay_19__N_48[11])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_14.init = 16'h2020;
    LUT4 i4186_4_lut (.A(state_back_2__N_122[2]), .B(state[1]), .C(n337), 
         .D(state[0]), .Z(n7_adj_8)) /* synthesis lut_function=(!(A (B+!(C+!(D))))) */ ;
    defparam i4186_4_lut.init = 16'h7577;
    LUT4 i1_4_lut_adj_15 (.A(n7784), .B(n28_adj_6), .C(state_back_2__N_122[2]), 
         .D(n33_adj_5), .Z(clk_in_c_enable_88)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_15.init = 16'h8a88;
    LUT4 i995_3_lut_4_lut (.A(cnt[2]), .B(n7831), .C(n7832), .D(cnt_write[3]), 
         .Z(n1736)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i995_3_lut_4_lut.init = 16'hff70;
    LUT4 cnt_main_0__bdd_1_lut_6817 (.A(cnt_write[3]), .Z(n7775)) /* synthesis lut_function=(!(A)) */ ;
    defparam cnt_main_0__bdd_1_lut_6817.init = 16'h5555;
    LUT4 cnt_main_0__bdd_4_lut_6818 (.A(cnt_main[0]), .B(data_out_en_N_275), 
         .C(cnt_main[1]), .D(cnt_main[2]), .Z(n7776)) /* synthesis lut_function=(!((B (C+(D))+!B !(C))+!A)) */ ;
    defparam cnt_main_0__bdd_4_lut_6818.init = 16'h2028;
    LUT4 i2_3_lut_4_lut_adj_16 (.A(n7794), .B(n7803), .C(n7808), .D(data_out_en_N_275), 
         .Z(clk_in_c_enable_40)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_16.init = 16'h8000;
    LUT4 i26_4_lut (.A(n7802), .B(n6175), .C(state_back_2__N_122[2]), 
         .D(n7825), .Z(num_delay_19__N_212[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i26_4_lut.init = 16'h3530;
    PFUMX state_2__I_0_i7 (.BLUT(n2_adj_2), .ALUT(n3_adj_3), .C0(n7820), 
          .Z(one_wire_N_288));
    LUT4 i5297_2_lut (.A(cnt_read[1]), .B(cnt_read[2]), .Z(n6175)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5297_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_17 (.A(n7794), .B(n7803), .C(n2152), .D(data_out_en_N_275), 
         .Z(clk_in_c_enable_41)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_17.init = 16'h0080;
    FD1P3IX cnt_read_i0_i0 (.D(n264), .SP(clk_in_c_enable_89), .CD(n5391), 
            .CK(clk_in_c), .Q(cnt_read[0]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_read_i0_i0.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_18 (.A(cnt_read[0]), .B(state[0]), .C(n7815), .D(state_back_2__N_122[2]), 
         .Z(n7032)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_4_lut_adj_18.init = 16'hfeff;
    LUT4 i1_3_lut_rep_72_4_lut (.A(cnt[2]), .B(n7831), .C(cnt_read[0]), 
         .D(cnt_read[1]), .Z(n7797)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_3_lut_rep_72_4_lut.init = 16'hff70;
    LUT4 i1_2_lut_adj_19 (.A(cnt_init[2]), .B(cnt_init[0]), .Z(n44)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_19.init = 16'heeee;
    LUT4 i6662_3_lut (.A(n48), .B(n7071), .C(state[0]), .Z(n2_adj_2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i6662_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_20 (.A(state_back_2__N_122[2]), .B(n337), .C(n356), 
         .Z(cnt_delay_19__N_48[3])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_20.init = 16'h2020;
    LUT4 i1_2_lut_adj_21 (.A(state[1]), .B(cnt_read[0]), .Z(n7440)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_21.init = 16'h4444;
    LUT4 i6094_1_lut (.A(cnt_1mhz[0]), .Z(n20)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(51[16:31])
    defparam i6094_1_lut.init = 16'h5555;
    LUT4 i800_1_lut (.A(cnt_read[0]), .Z(n264)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(164[31:46])
    defparam i800_1_lut.init = 16'h5555;
    LUT4 i42_3_lut_4_lut (.A(state[0]), .B(n7798), .C(state[1]), .D(n7791), 
         .Z(n20_adj_10)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i42_3_lut_4_lut.init = 16'hf808;
    LUT4 i2916_2_lut_rep_64_3_lut_4_lut (.A(cnt_main[2]), .B(n7830), .C(state[0]), 
         .D(data_out_en_N_275), .Z(n7789)) /* synthesis lut_function=(!(A (C)+!A (B (C (D))+!B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i2916_2_lut_rep_64_3_lut_4_lut.init = 16'h0f4f;
    LUT4 i2_4_lut_adj_22 (.A(n28), .B(n7784), .C(state_back_2__N_122[2]), 
         .D(n37), .Z(clk_in_c_enable_93)) /* synthesis lut_function=(A (B)+!A !((C+!(D))+!B)) */ ;
    defparam i2_4_lut_adj_22.init = 16'h8c88;
    LUT4 i6732_4_lut (.A(n7792), .B(n29_adj_9), .C(n7951), .D(state[0]), 
         .Z(n7610)) /* synthesis lut_function=(!((B (C (D)))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(67[15:20])
    defparam i6732_4_lut.init = 16'h2aaa;
    LUT4 i1_2_lut_3_lut_adj_23 (.A(state_back_2__N_122[2]), .B(n337), .C(n358), 
         .Z(cnt_delay_19__N_48[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_23.init = 16'h2020;
    LUT4 n69_bdd_4_lut_6833 (.A(n69), .B(cnt_write[3]), .C(n7701), .D(state[1]), 
         .Z(n7783)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam n69_bdd_4_lut_6833.init = 16'h77f0;
    CCU2D sub_662_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n6987));
    defparam sub_662_add_2_1.INIT0 = 16'h0000;
    defparam sub_662_add_2_1.INIT1 = 16'h5999;
    defparam sub_662_add_2_1.INJECT1_0 = "NO";
    defparam sub_662_add_2_1.INJECT1_1 = "NO";
    LUT4 i390_2_lut_rep_74_3_lut_4_lut (.A(n7832), .B(cnt_write[3]), .C(n7831), 
         .D(cnt[2]), .Z(n7799)) /* synthesis lut_function=(!(A (C (D))+!A ((C (D))+!B))) */ ;
    defparam i390_2_lut_rep_74_3_lut_4_lut.init = 16'h0eee;
    LUT4 i5200_2_lut (.A(cnt_read[2]), .B(state_back_2__N_122[2]), .Z(num_delay_19__N_212[3])) /* synthesis lut_function=(A (B)) */ ;
    defparam i5200_2_lut.init = 16'h8888;
    LUT4 i2400_3_lut_rep_86 (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .Z(n7811)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(142[7] 156[14])
    defparam i2400_3_lut_rep_86.init = 16'h2b2b;
    LUT4 i2401_2_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .D(cnt_write[3]), .Z(n3172)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (D)+!B ((D)+!C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(142[7] 156[14])
    defparam i2401_2_lut_4_lut.init = 16'hff2b;
    CCU2D add_77_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6982), .COUT(n6983), .S0(n348), .S1(n347));   // c:/fpga/ds18b20/ds18b20.v(183[29:45])
    defparam add_77_13.INIT0 = 16'h5aaa;
    defparam add_77_13.INIT1 = 16'h5aaa;
    defparam add_77_13.INJECT1_0 = "NO";
    defparam add_77_13.INJECT1_1 = "NO";
    LUT4 i5236_2_lut_rep_87 (.A(state[1]), .B(data_out_en_N_275), .Z(n7812)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5236_2_lut_rep_87.init = 16'heeee;
    LUT4 i1_4_lut_adj_24 (.A(n7784), .B(n28), .C(state_back_2__N_122[2]), 
         .D(n33), .Z(clk_in_c_enable_92)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_24.init = 16'h8a88;
    LUT4 i1_4_lut_adj_25 (.A(state[1]), .B(n7800), .C(n39), .D(state[0]), 
         .Z(n33)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;
    defparam i1_4_lut_adj_25.init = 16'hf5dd;
    FD1P3AX num_delay_i0_i2 (.D(num_delay_19__N_212[2]), .SP(clk_in_c_enable_93), 
            .CK(clk_in_c), .Q(num_delay[2]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam num_delay_i0_i2.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i3 (.D(num_delay_19__N_212[3]), .SP(clk_in_c_enable_91), 
            .CK(clk_in_c), .Q(num_delay[3]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam num_delay_i0_i3.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i4 (.D(num_delay_19__N_212[4]), .SP(clk_in_c_enable_92), 
            .CK(clk_in_c), .Q(num_delay[4]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam num_delay_i0_i4.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i5 (.D(num_delay_19__N_212[5]), .SP(clk_in_c_enable_93), 
            .CK(clk_in_c), .Q(num_delay[5]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam num_delay_i0_i5.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i7 (.D(num_delay_19__N_212[8]), .SP(clk_in_c_enable_94), 
            .CK(clk_in_c), .Q(num_delay[7]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam num_delay_i0_i7.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_26 (.A(state_back_2__N_122[2]), .B(n337), .C(n355), 
         .Z(cnt_delay_19__N_48[4])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_26.init = 16'h2020;
    FD1P3AX num_delay_i0_i13 (.D(n7824), .SP(clk_in_c_enable_95), .CK(clk_in_c), 
            .Q(num_delay[13]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam num_delay_i0_i13.GSR = "DISABLED";
    LUT4 i33_4_lut (.A(state[1]), .B(cnt_read[2]), .C(state_back_2__N_122[2]), 
         .D(n18_adj_1), .Z(num_delay_19__N_212[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i33_4_lut.init = 16'hc5cf;
    LUT4 i34_4_lut (.A(cnt_init[1]), .B(n7802), .C(state[0]), .D(cnt_init[2]), 
         .Z(n18_adj_1)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i34_4_lut.init = 16'h303a;
    LUT4 data_wr_buffer_6__bdd_4_lut (.A(data_wr_buffer[6]), .B(cnt[2]), 
         .C(cnt[0]), .D(data_wr_buffer[3]), .Z(n7780)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam data_wr_buffer_6__bdd_4_lut.init = 16'hfb0b;
    LUT4 i1_2_lut_rep_88 (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n7813)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_2_lut_rep_88.init = 16'h8888;
    LUT4 data_wr_buffer_6__bdd_3_lut (.A(data_wr_buffer[4]), .B(cnt[2]), 
         .C(cnt[0]), .Z(n7781)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam data_wr_buffer_6__bdd_3_lut.init = 16'ha8a8;
    LUT4 mux_84_Mux_5_i7_4_lut (.A(n7823), .B(cnt_read[2]), .C(state_back_2__N_122[2]), 
         .D(state[1]), .Z(num_delay_19__N_212[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam mux_84_Mux_5_i7_4_lut.init = 16'hc5cf;
    FD1P3IX cnt_write_i0_i0 (.D(cnt_write_3__N_185[0]), .SP(clk_in_c_enable_96), 
            .CD(n6940), .CK(clk_in_c), .Q(cnt_write[0]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_27 (.A(cnt_main[0]), .B(n109), .C(state[1]), .D(n7826), 
         .Z(n6999)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i3_4_lut_adj_27.init = 16'h0400;
    GSR GSR_INST (.GSR(rst_n_in_c));
    LUT4 i3_4_lut_adj_28 (.A(rst_n_in_c), .B(n7786), .C(n7031), .D(n7383), 
         .Z(clk_in_c_enable_94)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_28.init = 16'h8000;
    LUT4 i1_4_lut_adj_29 (.A(state_back_2__N_122[2]), .B(cnt_init[0]), .C(state[1]), 
         .D(n7495), .Z(num_delay_19__N_212[8])) /* synthesis lut_function=(!(A+(B (C (D))+!B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_4_lut_adj_29.init = 16'h0545;
    LUT4 i1_2_lut_3_lut_adj_30 (.A(state_back_2__N_122[2]), .B(n337), .C(n347), 
         .Z(cnt_delay_19__N_48[12])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_30.init = 16'h2020;
    FD1P3IX cnt_init_i0_i0 (.D(n1), .SP(clk_in_c_enable_97), .CD(n5095), 
            .CK(clk_in_c), .Q(cnt_init[0]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    LUT4 i5125_1_lut_2_lut (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n6001)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i5125_1_lut_2_lut.init = 16'h7777;
    LUT4 i1_2_lut_rep_89 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n7814)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_89.init = 16'h8888;
    LUT4 i2_4_lut_adj_31 (.A(n7383), .B(state[0]), .C(n7785), .D(n4_adj_11), 
         .Z(clk_in_c_enable_2)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_31.init = 16'ha080;
    LUT4 i1_2_lut_rep_75_3_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .Z(n7800)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i1_2_lut_rep_75_3_lut.init = 16'h7070;
    LUT4 i1_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .D(state[0]), .Z(n6066)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (C+(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h008f;
    LUT4 i1_2_lut_3_lut_adj_32 (.A(state_back_2__N_122[2]), .B(n337), .C(n346), 
         .Z(cnt_delay_19__N_48[13])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_32.init = 16'h2020;
    LUT4 i4212_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(state[1]), 
         .D(clk_in_c_enable_97), .Z(n5095)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i4212_3_lut_4_lut.init = 16'h8f00;
    LUT4 i1_1_lut (.A(cnt_init[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_adj_33 (.A(data_out_en_N_275), .B(cnt_main[2]), .Z(n109)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_2_lut_adj_33.init = 16'h2222;
    LUT4 i2_3_lut_4_lut_adj_34 (.A(cnt_init[2]), .B(cnt_init[1]), .C(state_back_2__N_122[2]), 
         .D(cnt_init[0]), .Z(n7019)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_34.init = 16'h0700;
    LUT4 i1_2_lut_3_lut_adj_35 (.A(state_back_2__N_122[2]), .B(n337), .C(n354), 
         .Z(cnt_delay_19__N_48[5])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_35.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .D(n7951), .Z(n4_adj_11)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A !(C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h70ff;
    LUT4 i727_1_lut (.A(cnt_main[0]), .Z(n29)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(98[24:39])
    defparam i727_1_lut.init = 16'h5555;
    CCU2D add_77_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n6977), .S1(n359));   // c:/fpga/ds18b20/ds18b20.v(183[29:45])
    defparam add_77_1.INIT0 = 16'hF000;
    defparam add_77_1.INIT1 = 16'h5555;
    defparam add_77_1.INJECT1_0 = "NO";
    defparam add_77_1.INJECT1_1 = "NO";
    LUT4 state_2__I_0_181_i2_4_lut (.A(n44), .B(cnt_write[0]), .C(state[0]), 
         .D(n7810), .Z(n2)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam state_2__I_0_181_i2_4_lut.init = 16'h05c5;
    LUT4 i5214_2_lut_rep_90 (.A(cnt_read[1]), .B(cnt_read[2]), .Z(n7815)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5214_2_lut_rep_90.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_36 (.A(state_back_2__N_122[2]), .B(n337), .C(n353), 
         .Z(cnt_delay_19__N_48[6])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_36.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_37 (.A(state_back_2__N_122[2]), .B(n337), .C(n352), 
         .Z(cnt_delay_19__N_48[7])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_37.init = 16'h2020;
    LUT4 n7703_bdd_3_lut (.A(n7703), .B(n7783), .C(state[0]), .Z(n7704)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n7703_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_38 (.A(n16), .B(state[1]), .C(state_back_2__N_122[2]), 
         .D(n7531), .Z(state_2__N_119[1])) /* synthesis lut_function=(A+(B (C+!(D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i1_4_lut_adj_38.init = 16'heaee;
    LUT4 i6652_3_lut_3_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(state_back[2]), 
         .D(state[0]), .Z(n7541)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam i6652_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 i1_3_lut_4_lut_adj_39 (.A(cnt_read[1]), .B(cnt_read[2]), .C(n7440), 
         .D(state[0]), .Z(n28)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_39.init = 16'h0070;
    LUT4 i884_2_lut_rep_91 (.A(cnt_read[0]), .B(cnt_read[1]), .Z(n7816)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i884_2_lut_rep_91.init = 16'heeee;
    LUT4 i1_2_lut_adj_40 (.A(state[0]), .B(n15), .Z(n16)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i1_2_lut_adj_40.init = 16'h8888;
    FD1P3IX cnt_main_i0_i0 (.D(n29), .SP(clk_in_c_enable_98), .CD(n5913), 
            .CK(clk_in_c), .Q(cnt_main[0]));   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    LUT4 i6641_4_lut (.A(n7495), .B(cnt_init[0]), .C(one_wire_out), .D(cnt_init[2]), 
         .Z(n7531)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i6641_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_41 (.A(cnt_read[0]), .B(cnt_read[1]), 
         .C(cnt[0]), .D(cnt[2]), .Z(n7465)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_41.init = 16'hfffe;
    LUT4 i1_2_lut_rep_84_3_lut (.A(cnt_read[0]), .B(cnt_read[1]), .C(cnt[2]), 
         .Z(n7809)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_84_3_lut.init = 16'hfefe;
    LUT4 i5098_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[2]), .C(cnt_main[1]), 
         .D(data_out_en_N_275), .Z(n26)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i5098_3_lut_4_lut.init = 16'h7f80;
    LUT4 i6672_2_lut_rep_92 (.A(state[1]), .B(state[0]), .Z(n7817)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i6672_2_lut_rep_92.init = 16'h6666;
    LUT4 i6606_2_lut (.A(state[0]), .B(cnt_init[1]), .Z(n7495)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6606_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_4_lut_adj_42 (.A(state[1]), .B(state[0]), .C(n7801), 
         .D(state_back_2__N_122[2]), .Z(n6940)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2_3_lut_4_lut_4_lut_adj_42.init = 16'h0001;
    CCU2D add_77_21 (.A0(cnt_delay[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6986), 
          .S0(n340));   // c:/fpga/ds18b20/ds18b20.v(183[29:45])
    defparam add_77_21.INIT0 = 16'h5aaa;
    defparam add_77_21.INIT1 = 16'h0000;
    defparam add_77_21.INJECT1_0 = "NO";
    defparam add_77_21.INJECT1_1 = "NO";
    LUT4 i833_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(n1736), 
         .D(cnt_write[2]), .Z(cnt_write_3__N_185[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(137[16] 140[10])
    defparam i833_3_lut_4_lut.init = 16'h0800;
    LUT4 i6593_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .D(n1736), .Z(cnt_write_3__N_185[2])) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(137[16] 140[10])
    defparam i6593_3_lut_4_lut.init = 16'h0078;
    LUT4 i1266_2_lut_rep_93 (.A(state[0]), .B(state[1]), .Z(n7818)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i1266_2_lut_rep_93.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_43 (.A(state[0]), .B(state[1]), .C(cnt_read[2]), 
         .D(cnt_read[0]), .Z(n7456)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i2_3_lut_4_lut_adj_43.init = 16'hfffe;
    LUT4 i6702_2_lut_2_lut_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(n7821), 
         .D(clk_1mhz), .Z(clk_in_c_enable_89)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i6702_2_lut_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i6736_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(state_back_2__N_122[2]), 
         .Z(state_back_2__N_122[0])) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;
    defparam i6736_2_lut_3_lut.init = 16'h0b0b;
    LUT4 i3_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state_back_2__N_122[2]), 
         .D(n44), .Z(n4773)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_3_lut_4_lut.init = 16'hfffb;
    LUT4 i6649_4_lut (.A(cnt_read[0]), .B(state_back[0]), .C(state[0]), 
         .D(n7815), .Z(n7538)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;
    defparam i6649_4_lut.init = 16'hc5cf;
    LUT4 i1_3_lut_4_lut_adj_44 (.A(state[0]), .B(cnt_write[3]), .C(n7822), 
         .D(state[1]), .Z(n33_adj_5)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (D))) */ ;
    defparam i1_3_lut_4_lut_adj_44.init = 16'h20ff;
    LUT4 i6740_2_lut_rep_95 (.A(state_back_2__N_122[2]), .B(state[1]), .Z(n7820)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i6740_2_lut_rep_95.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_45 (.A(state_back_2__N_122[2]), .B(state[1]), 
         .C(n7823), .D(n7542), .Z(state_2__N_119[2])) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_45.init = 16'hff04;
    LUT4 i1_2_lut_3_lut_adj_46 (.A(state_back_2__N_122[2]), .B(n337), .C(n345), 
         .Z(cnt_delay_19__N_48[14])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_46.init = 16'h2020;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(state_back_2__N_122[2]), .B(state[1]), 
         .C(n7823), .D(n6175), .Z(num_delay_19__N_212[2])) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'hae04;
    LUT4 i1_2_lut_4_lut (.A(n7800), .B(n3172), .C(state[0]), .D(state[1]), 
         .Z(n37)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (D)+!B !(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h3aff;
    LUT4 i110_4_lut (.A(state_back_2__N_122[2]), .B(clk_in_c_enable_89), 
         .C(cnt_read[2]), .D(n7797), .Z(n5391)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;
    defparam i110_4_lut.init = 16'hc444;
    LUT4 i809_3_lut (.A(cnt_read[2]), .B(cnt_read[1]), .C(cnt_read[0]), 
         .Z(n262)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(164[31:46])
    defparam i809_3_lut.init = 16'h6a6a;
    LUT4 i893_3_lut_rep_96 (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .Z(n7821)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i893_3_lut_rep_96.init = 16'hc8c8;
    LUT4 i6728_2_lut_3_lut_4_lut (.A(rst_n_in_c), .B(n7801), .C(n7804), 
         .D(n69), .Z(clk_in_c_enable_25)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i6728_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_4_lut_adj_47 (.A(n7816), .B(n85), .C(cnt_read[2]), .D(n7807), 
         .Z(n86)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_4_lut_adj_47.init = 16'h8000;
    LUT4 i1_2_lut_rep_67 (.A(n7006), .B(state_back_2__N_122[2]), .Z(n7792)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_67.init = 16'hbbbb;
    LUT4 i1_4_lut_adj_48 (.A(state[0]), .B(n7788), .C(n3172), .D(n7951), 
         .Z(n7383)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B))) */ ;
    defparam i1_4_lut_adj_48.init = 16'h4ccc;
    LUT4 i802_2_lut (.A(cnt_read[1]), .B(cnt_read[0]), .Z(n263)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(164[31:46])
    defparam i802_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_49 (.A(state[1]), .B(n7799), .C(n1736), .D(state[0]), 
         .Z(n82)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_4_lut_adj_49.init = 16'h8000;
    LUT4 i1_2_lut_adj_50 (.A(state_back[1]), .B(n337), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i1_2_lut_adj_50.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_51 (.A(rst_n_in_c), .B(n7801), .C(cnt_read[2]), 
         .D(state_back_2__N_122[2]), .Z(n7447)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_51.init = 16'h2000;
    LUT4 clk_1mhz_I_0_2_lut_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(clk_1mhz_N_276)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam clk_1mhz_I_0_2_lut_4_lut.init = 16'h37c8;
    LUT4 i193_2_lut_rep_76_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(n7801)) /* synthesis lut_function=(A ((D)+!B)+!A (((D)+!C)+!B)) */ ;
    defparam i193_2_lut_rep_76_4_lut.init = 16'hff37;
    LUT4 i1_3_lut_4_lut_adj_52 (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .D(cnt_write[3]), .Z(n29_adj_9)) /* synthesis lut_function=(A ((D)+!C)+!A (B (D)+!B ((D)+!C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(142[7] 156[14])
    defparam i1_3_lut_4_lut_adj_52.init = 16'hff0b;
    LUT4 i6612_2_lut_rep_77_3_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .Z(n7802)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(142[7] 156[14])
    defparam i6612_2_lut_rep_77_3_lut.init = 16'hb0b0;
    LUT4 i2_4_lut_3_lut_rep_97 (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .Z(n7822)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(142[7] 156[14])
    defparam i2_4_lut_3_lut_rep_97.init = 16'hd4d4;
    LUT4 i1_2_lut_4_lut_adj_53 (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .D(cnt_write[3]), .Z(n39)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(142[7] 156[14])
    defparam i1_2_lut_4_lut_adj_53.init = 16'h00d4;
    LUT4 i1_2_lut_rep_78_3_lut (.A(state_back_2__N_122[2]), .B(state[1]), 
         .C(state[0]), .Z(n7803)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_2_lut_rep_78_3_lut.init = 16'h1010;
    LUT4 i2_4_lut_adj_54 (.A(state[0]), .B(clk_in_c_enable_98), .C(data_out_en_N_275), 
         .D(n11), .Z(n5913)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i2_4_lut_adj_54.init = 16'hc444;
    LUT4 i1_2_lut_rep_98 (.A(state[0]), .B(cnt_init[2]), .Z(n7823)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(67[15:20])
    defparam i1_2_lut_rep_98.init = 16'heeee;
    LUT4 i5286_3_lut (.A(n1736), .B(cnt_write[1]), .C(cnt_write[0]), .Z(cnt_write_3__N_185[1])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(137[16] 140[10])
    defparam i5286_3_lut.init = 16'h1414;
    LUT4 i6719_2_lut_rep_99 (.A(state_back_2__N_122[2]), .B(state[1]), .Z(n7824)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i6719_2_lut_rep_99.init = 16'h1111;
    LUT4 i6598_2_lut_3_lut (.A(n7804), .B(n7811), .C(n7032), .Z(n7487)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i6598_2_lut_3_lut.init = 16'hb0b0;
    LUT4 n720_bdd_2_lut_3_lut_4_lut (.A(state_back_2__N_122[2]), .B(state[1]), 
         .C(n7773), .D(state[0]), .Z(clk_1mhz_enable_1)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam n720_bdd_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_62_3_lut_4_lut (.A(rst_n_in_c), .B(n7801), .C(n7828), 
         .D(state_back_2__N_122[2]), .Z(n7787)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_rep_62_3_lut_4_lut.init = 16'h2000;
    LUT4 i6664_3_lut (.A(n55), .B(n7777), .C(state[0]), .Z(n7540)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6664_3_lut.init = 16'hcaca;
    LUT4 i43_2_lut (.A(cnt_main[0]), .B(cnt_main[1]), .Z(n2152)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(57[14:22])
    defparam i43_2_lut.init = 16'h6666;
    LUT4 i1_3_lut (.A(cnt[0]), .B(n5074), .C(cnt[1]), .Z(cnt_2__N_22[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(68[15:25])
    defparam i1_3_lut.init = 16'h4848;
    LUT4 i1_2_lut_4_lut_adj_55 (.A(cnt_read[1]), .B(n7807), .C(cnt_read[0]), 
         .D(n7828), .Z(n85)) /* synthesis lut_function=(A (D)+!A (B (C (D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(64[14:22])
    defparam i1_2_lut_4_lut_adj_55.init = 16'hea00;
    LUT4 i1_3_lut_3_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[2]), 
         .Z(n48)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n7006), .B(state_back_2__N_122[2]), .C(n4106), 
         .D(n7801), .Z(clk_in_c_enable_45)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h00b8;
    LUT4 i3_4_lut_adj_56 (.A(n7816), .B(n7794), .C(state_back_2__N_122[2]), 
         .D(n7499), .Z(n4554)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i3_4_lut_adj_56.init = 16'hbfff;
    LUT4 i1_3_lut_3_lut_adj_57 (.A(cnt_init[1]), .B(cnt_init[0]), .C(state[1]), 
         .Z(n55)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_3_lut_3_lut_adj_57.init = 16'h4040;
    LUT4 i1_2_lut_rep_100 (.A(state[1]), .B(state[0]), .Z(n7825)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i1_2_lut_rep_100.init = 16'h8888;
    LUT4 i2_4_lut_adj_58 (.A(cnt_read[0]), .B(state[1]), .C(state[0]), 
         .D(n7815), .Z(n7006)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i2_4_lut_adj_58.init = 16'h0002;
    LUT4 i2_3_lut_rep_79_4_lut (.A(state[1]), .B(state[0]), .C(cnt_write[3]), 
         .D(state_back_2__N_122[2]), .Z(n7804)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i2_3_lut_rep_79_4_lut.init = 16'hfff7;
    LUT4 i2_4_lut_4_lut (.A(state[1]), .B(state[0]), .C(n6066), .D(state_back_2__N_122[2]), 
         .Z(n7031)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i2_4_lut_4_lut.init = 16'hffdf;
    LUT4 state_2__I_0_181_i3_3_lut_3_lut (.A(state[0]), .B(state_back_2__N_122[2]), 
         .C(n7456), .Z(n3)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)))) */ ;
    defparam state_2__I_0_181_i3_3_lut_3_lut.init = 16'h1d1d;
    LUT4 i1_4_lut_4_lut_4_lut (.A(state[0]), .B(n7019), .C(n7440), .D(n7815), 
         .Z(n28_adj_6)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h4454;
    LUT4 i1_2_lut_rep_101 (.A(state[0]), .B(state_back_2__N_122[2]), .Z(n7826)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_2_lut_rep_101.init = 16'h2222;
    LUT4 i1_4_lut_adj_59 (.A(n7951), .B(n7806), .C(n6066), .D(n4), .Z(n32)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/fpga/ds18b20/ds18b20.v(67[15:20])
    defparam i1_4_lut_adj_59.init = 16'heca0;
    LUT4 i2_3_lut_adj_60 (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .Z(n69)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i2_3_lut_adj_60.init = 16'hfefe;
    LUT4 i3_2_lut_3_lut_4_lut (.A(state[0]), .B(state_back_2__N_122[2]), 
         .C(cnt_write[3]), .D(cnt_write[0]), .Z(n9)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i3_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_rep_81_3_lut (.A(state[0]), .B(state_back_2__N_122[2]), 
         .C(cnt_write[0]), .Z(n7806)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_2_lut_rep_81_3_lut.init = 16'h2020;
    LUT4 i2_3_lut_rep_102 (.A(cnt_main[2]), .B(data_out_en_N_275), .C(cnt_main[0]), 
         .Z(n7827)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i2_3_lut_rep_102.init = 16'hfbfb;
    LUT4 i1_2_lut_rep_80_4_lut (.A(cnt_main[2]), .B(data_out_en_N_275), 
         .C(cnt_main[0]), .D(state[0]), .Z(n7805)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_2_lut_rep_80_4_lut.init = 16'hfbff;
    LUT4 n9_bdd_3_lut_6764_4_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[2]), 
         .D(state[1]), .Z(n7703)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+!(C (D))))) */ ;   // c:/fpga/ds18b20/ds18b20.v(60[14:22])
    defparam n9_bdd_3_lut_6764_4_lut.init = 16'h6fff;
    LUT4 i2_3_lut_rep_103 (.A(state[1]), .B(cnt_read[2]), .C(state[0]), 
         .Z(n7828)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(162[16] 165[10])
    defparam i2_3_lut_rep_103.init = 16'h0404;
    LUT4 i1_2_lut_adj_61 (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n7)) /* synthesis lut_function=((B)+!A) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam i1_2_lut_adj_61.init = 16'hdddd;
    LUT4 i6610_2_lut_4_lut (.A(state[1]), .B(cnt_read[2]), .C(state[0]), 
         .D(cnt[2]), .Z(n7499)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/fpga/ds18b20/ds18b20.v(162[16] 165[10])
    defparam i6610_2_lut_4_lut.init = 16'h0400;
    LUT4 i3_4_lut_adj_62 (.A(n2152), .B(n7794), .C(n7812), .D(n7826), 
         .Z(clk_in_c_enable_43)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_62.init = 16'h0800;
    LUT4 one_wire_I_0_4_lut (.A(one_wire_out), .B(n9), .C(one_wire_N_283), 
         .D(n10), .Z(one_wire_N_277)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/fpga/ds18b20/ds18b20.v(83[12] 186[6])
    defparam one_wire_I_0_4_lut.init = 16'hca0a;
    LUT4 i2_3_lut_adj_63 (.A(state[1]), .B(state_back_2__N_122[2]), .C(n7791), 
         .Z(n7045)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i2_3_lut_adj_63.init = 16'hfdfd;
    LUT4 i4_4_lut_adj_64 (.A(one_wire_N_281), .B(cnt_write[2]), .C(state[1]), 
         .D(cnt_write[1]), .Z(n10)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/fpga/ds18b20/ds18b20.v(84[4] 185[11])
    defparam i4_4_lut_adj_64.init = 16'h2000;
    LUT4 i5226_2_lut_rep_105 (.A(cnt_main[0]), .B(cnt_main[1]), .Z(n7830)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5226_2_lut_rep_105.init = 16'h8888;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PFUMX i6804 (.BLUT(n7836), .ALUT(n7837), .C0(state[1]), .Z(n7838));
    PFUMX i6802 (.BLUT(n7833), .ALUT(n7834), .C0(state[0]), .Z(num_delay_19__N_212[6]));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

