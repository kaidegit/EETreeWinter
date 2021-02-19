// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Thu Feb 04 20:11:46 2021
//
// Verilog Description of module OLED12832
//

module OLED12832 (clk, rst_n, oled_data, oled_show_en, sw, oled_csn, 
            oled_rst, oled_dcn, oled_clk, oled_dat) /* synthesis syn_module_defined=1 */ ;   // c:/fpga/ds18b20/oled.v(18[8:17])
    input clk;   // c:/fpga/ds18b20/oled.v(20[11:14])
    input rst_n;   // c:/fpga/ds18b20/oled.v(21[11:16])
    input oled_data;   // c:/fpga/ds18b20/oled.v(22[22:31])
    input oled_show_en;   // c:/fpga/ds18b20/oled.v(23[22:34])
    input [3:0]sw;   // c:/fpga/ds18b20/oled.v(25[15:17])
    output oled_csn;   // c:/fpga/ds18b20/oled.v(27[15:23])
    output oled_rst;   // c:/fpga/ds18b20/oled.v(28[15:23])
    output oled_dcn;   // c:/fpga/ds18b20/oled.v(29[15:23])
    output oled_clk;   // c:/fpga/ds18b20/oled.v(30[15:23])
    output oled_dat;   // c:/fpga/ds18b20/oled.v(31[15:23])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/fpga/ds18b20/oled.v(20[11:14])
    
    wire GND_net, VCC_net, rst_n_c, sw_c_3, sw_c_2, sw_c_1, sw_c_0, 
        oled_csn_c, oled_rst_c, oled_dcn_c, oled_clk_c, oled_dat_c;
    wire [7:0]y_p;   // c:/fpga/ds18b20/oled.v(41[12:15])
    wire [7:0]x_ph;   // c:/fpga/ds18b20/oled.v(41[17:21])
    
    wire n15008, n13843, n11, n11_adj_1;
    wire [167:0]char;   // c:/fpga/ds18b20/oled.v(42[19:23])
    
    wire n9165, n11_adj_2, clk_c_enable_76;
    wire [7:0]num;   // c:/fpga/ds18b20/oled.v(43[12:15])
    wire [7:0]char_reg;   // c:/fpga/ds18b20/oled.v(43[17:25])
    wire [4:0]cnt_main;   // c:/fpga/ds18b20/oled.v(44[12:20])
    wire [4:0]cnt_init;   // c:/fpga/ds18b20/oled.v(44[22:30])
    wire [4:0]cnt_scan;   // c:/fpga/ds18b20/oled.v(44[32:40])
    wire [4:0]cnt_write;   // c:/fpga/ds18b20/oled.v(44[42:51])
    wire [15:0]num_delay;   // c:/fpga/ds18b20/oled.v(45[13:22])
    wire [15:0]cnt_delay;   // c:/fpga/ds18b20/oled.v(45[24:33])
    wire [15:0]cnt;   // c:/fpga/ds18b20/oled.v(45[35:38])
    wire [5:0]state;   // c:/fpga/ds18b20/oled.v(46[13:18])
    wire [5:0]state_back;   // c:/fpga/ds18b20/oled.v(46[20:30])
    
    wire n11_adj_3, n9152, n9169, clk_c_enable_71, n12, n10, n17, 
        n14164, n6757, n13894, n14, n6735, n10_adj_4, n6694, n13886, 
        n13103, n6658, n12_adj_5, n14138, n242, n243, n244, oled_dcn_N_650, 
        n278, n279, n280, n281, n282, n283, n284, n285, n286, 
        n287, n288, n289, n290, n291, n292, n293, n6, n304, 
        n305, n306, n307, n308, n309, n310, n311, n312, n313, 
        n314, n315, n316, n317, n318, n319, n13880;
    wire [15:0]num_delay_15__N_542;
    
    wire n14972;
    wire [5:0]state_back_5__N_620;
    wire [7:0]char_reg_7__N_526;
    
    wire n442, n24, n14692, n453, n454, n455;
    wire [4:0]cnt_scan_4__N_308;
    
    wire n643, n644, n809, n810, n811, n812, n813, n814, n815, 
        n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1565, 
        n1566, n1567, n1568, n1569, n1570, n1571, n1943, n1944, 
        n1945, n1946, n1947, n1948, n1949, n2321, n2322, n2323, 
        n2324, n2325, n2326, n2327, n9151, n12636, n2381, n2382, 
        n2383, n2384, n2385, n9820, oled_dat_N_672, n2402, n2405, 
        n2406, n2407, n2408, n2409, n2410, n2411, n2412, n2413, 
        n2414, n2415, n2416, n2417, n2418, n2419, n2420, n14528, 
        n14971, n13970;
    wire [7:0]y_p_7__N_1;
    
    wire n6_adj_6;
    wire [7:0]char_reg_7__N_203;
    wire [15:0]num_delay_15__N_231;
    wire [5:0]state_back_5__N_285;
    
    wire n14158, n15034, n16, n13888, n12633, n4171, n1, n24_adj_7, 
        n6_adj_8, n8363, n31, n35, n24_adj_9, n24_adj_10, n6_adj_11, 
        n13897, n14487, n14486, n43, n42, n39, n38, n41, n40, 
        n9156, n8022, n6_adj_12, n24_adj_13, n12_adj_14, n6_adj_15, 
        n24_adj_16, n22, n85, n14970, n13840, n15007, n14_adj_17, 
        n15006, n15005, n3, n9162, n13898, n16_adj_18, n15003, 
        n15035, clk_c_enable_72, n15002, n57, n14143, n10224, n15001, 
        n16_adj_19, n14142, n76, n15000, n14999, n14141, n14140, 
        n14139, n8959, n14997, n13887, n13848, n14584, n14_adj_20, 
        clk_c_enable_77, n12725, n14996, n12_adj_21, n6_adj_22, n24_adj_23, 
        n14_adj_24, n15110, n15490, n16_adj_25, n15109, n14137, 
        n45, n14136, n14480, n15107, n14135, n15106, n15105, n15497, 
        n13883, n16_adj_26, n15104, n64, n13911, n12651, n14479, 
        n14163, n16_adj_27, n16_adj_28, n14478, n24_adj_29, n8924, 
        n8, n16_adj_30, n6_adj_31, n27, n24_adj_32, n13, n6_adj_33, 
        n24_adj_34, n8817, n12650, n12_adj_35, n3780, n3779, n3778, 
        n14475, n3775, n3774, n12_adj_36, n6_adj_37, n24_adj_38, 
        n14949, n12_adj_39, n6_adj_40, n24_adj_41, n15, n12_adj_42, 
        n6_adj_43, n24_adj_44, n14126, n16_adj_45, n51, n60, n12649, 
        n61, n64_adj_46, clk_c_enable_42, n16_adj_47, n19, n14477, 
        n14639, n14638, n14125, n19_adj_48, n14476, n14637, n13958, 
        n19_adj_49, n15_adj_50, n13_adj_51, n16_adj_52, n16_adj_53, 
        n16_adj_54, n12637, n16_adj_55, n14918, n14636, n14917, 
        n14916, n16_adj_56, n14120, n12_adj_57, n27_adj_58, n16_adj_59, 
        n7554, n7552, clk_c_enable_68, n12648, n64_adj_60, n50, 
        n12_adj_61, n6_adj_62, n30, n16_adj_63, n16_adj_64, n16_adj_65, 
        n14995, n16_adj_66, n14994, n24_adj_67, n6_adj_68, n24_adj_69, 
        n15039, n14_adj_70, n14966, n8179, n7, n13908, n13901, 
        n14964, n10_adj_71, n14474, n44, n27_adj_72, n14881, n14472, 
        n34, n13979, n41_adj_73, n4, n42_adj_74, n14880, n14879, 
        n12_adj_75, n9058, n16_adj_76, clk_c_enable_22, n12647, n16_adj_77, 
        n9159, n15500, n15033, clk_c_enable_73, n16_adj_78, n15613, 
        n12646, n16_adj_79, n14993, n14992, n13909, n12634, n15496, 
        n14991, n7353, n15495, n14990, n14473, n57_adj_80, n14969, 
        n14989, n15494, n14988, n14987, n64_adj_81, n14968, clk_c_enable_51, 
        clk_c_enable_11, n15493, n15492, n12645, n12644, n9211, 
        n57_adj_82, n15491, clk_c_enable_79, n15489, n14986, n7054, 
        n12643, n12642, n10782, n12659, n12641, n12640, n15487, 
        n15486, n12658, n12639, n15485, n15484, n14985, n13821, 
        n12854, n14984, n17_adj_83, n14967, n12665, n13922, n14470, 
        n14962, n8109, n12657, n12656, n12638, n14469, n14016, 
        n14983, n14613, n12655, n14982, n14090, n12654, n9081, 
        n12630, n12635, n8892, n12653, clk_c_enable_38, n12652, 
        n12632, n16_adj_84, n6447, n41_adj_85, n14981, n14980, n46, 
        n50_adj_86, n52, n13957, n15042, n13816, n13815, n4_adj_87, 
        n10855, n14979, n9192, n9149, n14591, n13825, n14590, 
        n14589, n80, n14106, n10837, n15032, n15066, clk_c_enable_1, 
        n45_adj_88, n51_adj_89, n12_adj_90, clk_c_enable_10, n2129, 
        n2130, n2131, n2132, n2135, n14585, n13823, n14073, n18, 
        n13633, n13818, n14963, n14069, n14200, n14054, n14779, 
        n13912, n14554, n14553, n13904, n13955, n13819, n13855, 
        n8_adj_91, n15043, n4_adj_92, n13891, n13817, n13885, n13896, 
        n7_adj_93, n14544, n14542, n14541, n14540, n14539, n15045, 
        n15177, n15176, n6_adj_94, n15174, n26, n15173, n15172, 
        n19_adj_95, n5, n7_adj_96, n15171, n13902, n13845, n13683, 
        n15612, n15027, n24_adj_97, n15026, n15025, n15044, n13941, 
        n15024, n4_adj_98, n14094, n14457, n15023, n14456, n15022, 
        n15021, n14455, n13723, n15020, n14978, n4_adj_99, n14051, 
        n15041, n20, n16_adj_100, n15019, n15029, n15017, n4_adj_101, 
        n15016, n15015, n14454, n15013, n13859, n15036, n15012, 
        n15011, n14977, n4_adj_102, n14976, n15040, n15038, clk_c_enable_36, 
        n18_adj_103, n15037, n15611, n15009;
    
    VHI i8672 (.Z(VCC_net));
    LUT4 cnt_0__bdd_4_lut_8316 (.A(cnt[0]), .B(cnt[3]), .C(cnt[2]), .D(cnt[4]), 
         .Z(n14880)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C)+!B (D)))) */ ;
    defparam cnt_0__bdd_4_lut_8316.init = 16'h041d;
    FD1P3AY oled_clk_309 (.D(n6757), .SP(clk_c_enable_1), .CK(clk_c), 
            .Q(oled_clk_c));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam oled_clk_309.GSR = "ENABLED";
    LUT4 i25_4_lut_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[2]), 
         .D(cnt_scan[3]), .Z(n18)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam i25_4_lut_4_lut.init = 16'hf008;
    LUT4 i7891_4_lut_4_lut (.A(char[126]), .B(num[0]), .C(num[1]), .D(num[2]), 
         .Z(n14164)) /* synthesis lut_function=(!((B (C+!(D))+!B !(C))+!A)) */ ;
    defparam i7891_4_lut_4_lut.init = 16'h2820;
    FD1P3IX cnt_init_i0_i1 (.D(n15017), .SP(clk_c_enable_71), .CD(n9165), 
            .CK(clk_c), .Q(cnt_init[1]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_i0_i1 (.D(n318), .SP(clk_c_enable_68), .CD(n9156), .CK(clk_c), 
            .Q(cnt[1]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_i0_i1.GSR = "ENABLED";
    LUT4 n45_bdd_3_lut (.A(n45_adj_88), .B(n15029), .C(state[3]), .Z(n15611)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n45_bdd_3_lut.init = 16'hacac;
    FD1P3IX cnt_delay_i0_i7 (.D(n2413), .SP(clk_c_enable_79), .CD(n9152), 
            .CK(clk_c), .Q(cnt_delay[7]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    PFUMX i92 (.BLUT(n13885), .ALUT(n13883), .C0(cnt_scan[1]), .Z(n57_adj_80));
    LUT4 i8_4_lut (.A(cnt[5]), .B(cnt[11]), .C(cnt[10]), .D(cnt[13]), 
         .Z(n19_adj_95)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    FD1P3IX cnt_main_1473__i0 (.D(n9081), .SP(clk_c_enable_51), .CD(n9162), 
            .CK(clk_c), .Q(cnt_main[0]));   // c:/fpga/ds18b20/oled.v(68[12:40])
    defparam cnt_main_1473__i0.GSR = "ENABLED";
    LUT4 i2_4_lut_4_lut_4_lut_3_lut (.A(cnt_main[1]), .B(cnt_main[2]), .C(cnt_main[0]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_4_lut_4_lut_4_lut_3_lut.init = 16'hfefe;
    IB sw_pad_0 (.I(sw[0]), .O(sw_c_0));   // c:/fpga/ds18b20/oled.v(25[15:17])
    IB sw_pad_1 (.I(sw[1]), .O(sw_c_1));   // c:/fpga/ds18b20/oled.v(25[15:17])
    IB sw_pad_2 (.I(sw[2]), .O(sw_c_2));   // c:/fpga/ds18b20/oled.v(25[15:17])
    IB sw_pad_3 (.I(sw[3]), .O(sw_c_3));   // c:/fpga/ds18b20/oled.v(25[15:17])
    LUT4 n14881_bdd_3_lut_4_lut (.A(oled_dcn_N_650), .B(n14986), .C(char_reg[5]), 
         .D(n14881), .Z(char_reg_7__N_526[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/fpga/ds18b20/oled.v(85[7] 101[14])
    defparam n14881_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i9_4_lut (.A(cnt[9]), .B(n18_adj_103), .C(cnt[8]), .D(cnt[6]), 
         .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i7981_4_lut_rep_224 (.A(n14997), .B(state[1]), .C(n14_adj_24), 
         .D(state[0]), .Z(n14985)) /* synthesis lut_function=(A+!(B (C)+!B (C+(D)))) */ ;
    defparam i7981_4_lut_rep_224.init = 16'haeaf;
    FD1P3AX x_ph_i0_i0 (.D(n15066), .SP(clk_c_enable_77), .CK(clk_c), 
            .Q(x_ph[0]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam x_ph_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_i0_i10 (.D(n309), .SP(clk_c_enable_68), .CD(n9156), .CK(clk_c), 
            .Q(cnt[10]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_i0_i10.GSR = "ENABLED";
    FD1P3IX num_1472__i3 (.D(n42), .SP(clk_c_enable_72), .CD(n9169), .CK(clk_c), 
            .Q(num[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam num_1472__i3.GSR = "ENABLED";
    FD1S3AX y_p_i0 (.D(y_p_7__N_1[0]), .CK(clk_c), .Q(y_p[0]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam y_p_i0.GSR = "ENABLED";
    FD1P3AY state_i0_i0 (.D(n42_adj_74), .SP(clk_c_enable_73), .CK(clk_c), 
            .Q(state[0]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam state_i0_i0.GSR = "ENABLED";
    FD1S3AX char_reg_i0 (.D(char_reg_7__N_203[0]), .CK(clk_c), .Q(char_reg[0]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam char_reg_i0.GSR = "ENABLED";
    FD1S3AY state_back_i0 (.D(state_back_5__N_285[0]), .CK(clk_c), .Q(state_back[0]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam state_back_i0.GSR = "ENABLED";
    FD1P3AY oled_csn_306 (.D(n6658), .SP(clk_c_enable_10), .CK(clk_c), 
            .Q(oled_csn_c));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam oled_csn_306.GSR = "ENABLED";
    LUT4 n14471_bdd_2_lut_4_lut (.A(n14470), .B(n15041), .C(cnt_scan[3]), 
         .D(cnt_scan[4]), .Z(n14472)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n14471_bdd_2_lut_4_lut.init = 16'h00ca;
    FD1P3AX oled_dcn_308 (.D(n13683), .SP(clk_c_enable_11), .CK(clk_c), 
            .Q(oled_dcn_c));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam oled_dcn_308.GSR = "ENABLED";
    FD1S3AY num_delay_i0 (.D(num_delay_15__N_231[0]), .CK(clk_c), .Q(num_delay[0]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam num_delay_i0.GSR = "ENABLED";
    LUT4 i2_3_lut_3_lut_4_lut_4_lut_4_lut (.A(num[4]), .B(n2130), .C(n2131), 
         .D(n2129), .Z(n6_adj_31)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i1920_2_lut_rep_207_3_lut (.A(cnt_init[0]), .B(n15002), .C(oled_dcn_N_650), 
         .Z(n14968)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam i1920_2_lut_rep_207_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n14997), 
         .D(n13815), .Z(clk_c_enable_76)) /* synthesis lut_function=(!(A (B+(C))+!A ((C+!(D))+!B))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0602;
    LUT4 cnt_0__bdd_3_lut_8317 (.A(cnt[3]), .B(cnt[2]), .C(cnt[4]), .Z(n14879)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam cnt_0__bdd_3_lut_8317.init = 16'h0404;
    LUT4 y_p_0__bdd_4_lut (.A(y_p[0]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .D(cnt_main[1]), .Z(n15042)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;
    defparam y_p_0__bdd_4_lut.init = 16'hcccd;
    FD1P3IX num_1472__i5 (.D(n40), .SP(clk_c_enable_72), .CD(n9169), .CK(clk_c), 
            .Q(num[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam num_1472__i5.GSR = "ENABLED";
    LUT4 i7849_2_lut_rep_203_3_lut_4_lut (.A(cnt_init[0]), .B(n15002), .C(cnt[4]), 
         .D(oled_dcn_N_650), .Z(n14964)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam i7849_2_lut_rep_203_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_then_4_lut (.A(cnt_scan[2]), .B(n1944), .C(n2322), .D(cnt_scan[0]), 
         .Z(n15044)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_2_lut_then_4_lut.init = 16'h5044;
    LUT4 i7798_3_lut_4_lut_4_lut_4_lut (.A(state[1]), .B(state[5]), .C(state[3]), 
         .D(state[2]), .Z(n14069)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7798_3_lut_4_lut_4_lut_4_lut.init = 16'hfffe;
    LUT4 i4439_2_lut (.A(n291), .B(oled_dcn_N_650), .Z(n317)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam i4439_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_else_4_lut (.A(cnt_scan[2]), .B(n1566), .C(n1188), .D(cnt_scan[0]), 
         .Z(n15043)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam i1_2_lut_else_4_lut.init = 16'h4450;
    LUT4 i1_3_lut_4_lut (.A(cnt_init[0]), .B(n15003), .C(n14991), .D(num_delay[14]), 
         .Z(n4_adj_92)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;   // c:/fpga/ds18b20/oled.v(89[8:12])
    defparam i1_3_lut_4_lut.init = 16'hf222;
    LUT4 i1_4_lut (.A(n13894), .B(n13912), .C(state[0]), .D(n14984), 
         .Z(clk_c_enable_1)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'hc088;
    ROM128X1A mux_496_Mux_37 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n810)) /* synthesis initstate=0x00A5E93E05A7FDFF016980700000FD69 */ ;
    defparam mux_496_Mux_37.initval = 128'h00A5E93E05A7FDFF016980700000FD69;
    LUT4 i1_3_lut_4_lut_adj_1 (.A(cnt_init[0]), .B(n15003), .C(n14991), 
         .D(num_delay[7]), .Z(n4_adj_98)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;   // c:/fpga/ds18b20/oled.v(89[8:12])
    defparam i1_3_lut_4_lut_adj_1.init = 16'hf222;
    LUT4 i1_4_lut_adj_2 (.A(state[2]), .B(n14474), .C(char_reg[4]), .D(n14968), 
         .Z(n6_adj_43)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_2.init = 16'ha088;
    ROM128X1A mux_496_Mux_30 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1187)) /* synthesis initstate=0x04A8927EACAA96BD4BEF426800007BEF */ ;
    defparam mux_496_Mux_30.initval = 128'h04A8927EACAA96BD4BEF426800007BEF;
    ROM128X1A mux_496_Mux_22 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1565)) /* synthesis initstate=0x0478923EBE7A96BD836F405000007B6F */ ;
    defparam mux_496_Mux_22.initval = 128'h0478923EBE7A96BD836F405000007B6F;
    LUT4 i7885_3_lut (.A(n1949), .B(n2327), .C(cnt_scan[0]), .Z(n14158)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7885_3_lut.init = 16'hcaca;
    ROM128X1A mux_496_Mux_14 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1943)) /* synthesis initstate=0x04989E3EACA892AD117F11080000597F */ ;
    defparam mux_496_Mux_14.initval = 128'h04989E3EACA892AD117F11080000597F;
    LUT4 n812_bdd_3_lut (.A(n812), .B(cnt_scan[3]), .C(cnt_scan[1]), .Z(n15104)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n812_bdd_3_lut.init = 16'h2020;
    ROM128X1A mux_496_Mux_6 (.AD0(n14967), .AD1(n14972), .AD2(n644), .AD3(n643), 
            .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n2321)) /* synthesis initstate=0x07226192950679A20004004000004404 */ ;
    defparam mux_496_Mux_6.initval = 128'h07226192950679A20004004000004404;
    LUT4 n9_bdd_4_lut (.A(n14976), .B(n15019), .C(n13902), .D(state[4]), 
         .Z(n14962)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam n9_bdd_4_lut.init = 16'hf011;
    FD1P3AX num_1472__i0 (.D(n15611), .SP(clk_c_enable_72), .CK(clk_c), 
            .Q(num[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam num_1472__i0.GSR = "ENABLED";
    ROM128X1A mux_496_Mux_39 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n809)) /* synthesis initstate=0x050D6D04950D7976000400200000EC04 */ ;
    defparam mux_496_Mux_39.initval = 128'h050D6D04950D7976000400200000EC04;
    LUT4 n812_bdd_4_lut (.A(n1568), .B(n2324), .C(cnt_scan[3]), .D(cnt_scan[1]), 
         .Z(n15105)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam n812_bdd_4_lut.init = 16'hc0a0;
    LUT4 i4528_2_lut (.A(cnt_init[0]), .B(n14966), .Z(n7054)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i4528_2_lut.init = 16'h4444;
    LUT4 i1_3_lut (.A(cnt_init[0]), .B(num_delay[13]), .C(n14969), .Z(n16)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut.init = 16'h4040;
    ROM128X1A mux_496_Mux_8 (.AD0(n14967), .AD1(n14972), .AD2(n644), .AD3(n643), 
            .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1949)) /* synthesis initstate=0x000004402C1F86ED93FD012C0000DBFD */ ;
    defparam mux_496_Mux_8.initval = 128'h000004402C1F86ED93FD012C0000DBFD;
    ROM128X1A mux_496_Mux_9 (.AD0(n14967), .AD1(n14972), .AD2(n644), .AD3(n643), 
            .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1948)) /* synthesis initstate=0x0000000070002C120018007C00002418 */ ;
    defparam mux_496_Mux_9.initval = 128'h0000000070002C120018007C00002418;
    ROM128X1A mux_496_Mux_10 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1947)) /* synthesis initstate=0x040DEDAF2500040060B1820C000000B1 */ ;
    defparam mux_496_Mux_10.initval = 128'h040DEDAF2500040060B1820C000000B1;
    ROM128X1A mux_496_Mux_11 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1946)) /* synthesis initstate=0x05020410320D05E4835C2E180000CB5C */ ;
    defparam mux_496_Mux_11.initval = 128'h05020410320D05E4835C2E180000CB5C;
    ROM128X1A mux_496_Mux_12 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1945)) /* synthesis initstate=0x000A0422210044036010022800000410 */ ;
    defparam mux_496_Mux_12.initval = 128'h000A0422210044036010022800000410;
    ROM128X1A mux_496_Mux_13 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1944)) /* synthesis initstate=0x0361048030460C100210105800002210 */ ;
    defparam mux_496_Mux_13.initval = 128'h0361048030460C100210105800002210;
    LUT4 n809_bdd_3_lut (.A(n809), .B(cnt_scan[3]), .C(cnt_scan[1]), .Z(n15171)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n809_bdd_3_lut.init = 16'h2020;
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/fpga/ds18b20/oled.v(21[11:16])
    LUT4 i1_4_lut_4_lut (.A(n15009), .B(n15008), .C(oled_dcn_N_650), .D(num_delay[2]), 
         .Z(n15_adj_50)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B ((D)+!C)+!B (D)))) */ ;   // c:/fpga/ds18b20/oled.v(85[7] 101[14])
    defparam i1_4_lut_4_lut.init = 16'h7704;
    LUT4 i7724_2_lut_4_lut_4_lut (.A(n15009), .B(n15008), .C(state_back[0]), 
         .D(oled_dcn_N_650), .Z(n13979)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C (D))+!B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(85[7] 101[14])
    defparam i7724_2_lut_4_lut_4_lut.init = 16'h7030;
    LUT4 n809_bdd_4_lut (.A(n1565), .B(n2321), .C(cnt_scan[3]), .D(cnt_scan[1]), 
         .Z(n15172)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam n809_bdd_4_lut.init = 16'hc0a0;
    FD1P3IX cnt_i0_i2 (.D(n317), .SP(clk_c_enable_68), .CD(n9156), .CK(clk_c), 
            .Q(cnt[2]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_i0_i11 (.D(n308), .SP(clk_c_enable_68), .CD(n9156), .CK(clk_c), 
            .Q(cnt[11]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_i0_i11.GSR = "ENABLED";
    LUT4 i23_4_lut (.A(state[1]), .B(state_back[3]), .C(state[5]), .D(n15001), 
         .Z(n12_adj_75)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i23_4_lut.init = 16'h4a40;
    LUT4 n1187_bdd_4_lut_8620 (.A(n1187), .B(n1943), .C(cnt_scan[3]), 
         .D(cnt_scan[1]), .Z(n15174)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam n1187_bdd_4_lut_8620.init = 16'hc0a0;
    OB oled_rst_pad (.I(oled_rst_c), .O(oled_rst));   // c:/fpga/ds18b20/oled.v(28[15:23])
    FD1P3IX cnt_delay_i0_i15 (.D(n2405), .SP(clk_c_enable_79), .CD(n9152), 
            .CK(clk_c), .Q(cnt_delay[15]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    LUT4 i7705_2_lut_4_lut_4_lut (.A(n15009), .B(n15008), .C(state_back[5]), 
         .D(oled_dcn_N_650), .Z(n13957)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C (D))+!B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(85[7] 101[14])
    defparam i7705_2_lut_4_lut_4_lut.init = 16'h7030;
    LUT4 i1_3_lut_4_lut_adj_3 (.A(n15009), .B(n15008), .C(oled_dcn_N_650), 
         .D(state_back[2]), .Z(n8892)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/fpga/ds18b20/oled.v(85[7] 101[14])
    defparam i1_3_lut_4_lut_adj_3.init = 16'h4404;
    LUT4 i4430_2_lut (.A(n290), .B(oled_dcn_N_650), .Z(n316)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam i4430_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_202_4_lut (.A(n14978), .B(state[4]), .C(state[5]), 
         .D(n2402), .Z(n14963)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/fpga/ds18b20/oled.v(127[5:10])
    defparam i1_2_lut_rep_202_4_lut.init = 16'hffef;
    LUT4 n15176_bdd_2_lut (.A(n15176), .B(cnt_scan[4]), .Z(n15177)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n15176_bdd_2_lut.init = 16'h2222;
    LUT4 n3443_bdd_2_lut_8110_3_lut_4_lut (.A(n15009), .B(n15008), .C(n14553), 
         .D(cnt_init[0]), .Z(n14554)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/fpga/ds18b20/oled.v(85[7] 101[14])
    defparam n3443_bdd_2_lut_8110_3_lut_4_lut.init = 16'h0040;
    LUT4 i7868_3_lut (.A(char_reg[1]), .B(char_reg[0]), .C(cnt_write[1]), 
         .Z(n14141)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7868_3_lut.init = 16'hcaca;
    LUT4 i7867_3_lut (.A(char_reg[3]), .B(char_reg[2]), .C(cnt_write[1]), 
         .Z(n14140)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7867_3_lut.init = 16'hcaca;
    ROM128X1A mux_496_Mux_16 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1571)) /* synthesis initstate=0x000012407C1F86FF83EF00D20000FFEF */ ;
    defparam mux_496_Mux_16.initval = 128'h000012407C1F86FF83EF00D20000FFEF;
    ROM128X1A mux_496_Mux_17 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1570)) /* synthesis initstate=0x00001001001002005C120F9200000012 */ ;
    defparam mux_496_Mux_17.initval = 128'h00001001001002005C120F9200000012;
    ROM128X1A mux_496_Mux_18 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1569)) /* synthesis initstate=0x041FD7BE10102A002C2A0C5A0000002A */ ;
    defparam mux_496_Mux_18.initval = 128'h041FD7BE10102A002C2A0C5A0000002A;
    ROM128X1A mux_496_Mux_19 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1568)) /* synthesis initstate=0x00003A40059D63E503C3AC320000CBC3 */ ;
    defparam mux_496_Mux_19.initval = 128'h00003A40059D63E503C3AC320000CBC3;
    ROM128X1A mux_496_Mux_20 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1567)) /* synthesis initstate=0x0588322212960A03AC160C5800000416 */ ;
    defparam mux_496_Mux_20.initval = 128'h0588322212960A03AC160C5800000416;
    ROM128X1A mux_496_Mux_21 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1566)) /* synthesis initstate=0x02831A80029002005C025F1200000002 */ ;
    defparam mux_496_Mux_21.initval = 128'h02831A80029002005C025F1200000002;
    LUT4 i1_4_lut_4_lut_adj_4 (.A(n15009), .B(n15008), .C(oled_dcn_N_650), 
         .D(num_delay[0]), .Z(n15)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B ((D)+!C)+!B (D)))) */ ;   // c:/fpga/ds18b20/oled.v(85[7] 101[14])
    defparam i1_4_lut_4_lut_adj_4.init = 16'h7704;
    LUT4 i7866_3_lut (.A(char_reg[5]), .B(char_reg[4]), .C(cnt_write[1]), 
         .Z(n14139)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7866_3_lut.init = 16'hcaca;
    PFUMX i47 (.BLUT(n6_adj_12), .ALUT(n12_adj_5), .C0(state[3]), .Z(n24_adj_13));
    FD1P3IX cnt_i0_i12 (.D(n307), .SP(clk_c_enable_68), .CD(n9156), .CK(clk_c), 
            .Q(cnt[12]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_i0_i12.GSR = "ENABLED";
    IB clk_pad (.I(clk), .O(clk_c));   // c:/fpga/ds18b20/oled.v(20[11:14])
    LUT4 state_0__bdd_4_lut_8501 (.A(state[0]), .B(n11), .C(n15016), .D(n14992), 
         .Z(clk_c_enable_42)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B+!(C+(D))))) */ ;
    defparam state_0__bdd_4_lut_8501.init = 16'h333a;
    LUT4 cnt_0__bdd_3_lut_8117 (.A(cnt[0]), .B(cnt[2]), .C(cnt[1]), .Z(n14528)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;
    defparam cnt_0__bdd_3_lut_8117.init = 16'he7e7;
    FD1P3IX cnt_delay_i0_i8 (.D(n2412), .SP(clk_c_enable_79), .CD(n9152), 
            .CK(clk_c), .Q(cnt_delay[8]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    LUT4 n811_bdd_4_lut_8270 (.A(n811), .B(cnt_scan[0]), .C(cnt_scan[2]), 
         .D(x_ph[4]), .Z(n14469)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A !(B+(C+!(D)))) */ ;
    defparam n811_bdd_4_lut_8270.init = 16'h8380;
    LUT4 i1_2_lut_rep_229 (.A(cnt_scan[3]), .B(n8817), .Z(n14990)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_229.init = 16'hdddd;
    LUT4 cnt_0__bdd_4_lut_8331 (.A(cnt[0]), .B(cnt[3]), .C(cnt[1]), .D(cnt[2]), 
         .Z(n14916)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam cnt_0__bdd_4_lut_8331.init = 16'h0311;
    LUT4 cnt_0__bdd_3_lut_8330 (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), .Z(n14917)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam cnt_0__bdd_3_lut_8330.init = 16'h4040;
    LUT4 i7_4_lut (.A(cnt[7]), .B(cnt[14]), .C(cnt[12]), .D(cnt[15]), 
         .Z(n18_adj_103)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_scan[3]), .B(n8817), .C(n14996), 
         .D(cnt_scan[4]), .Z(n4_adj_102)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hddd0;
    LUT4 i4281_2_lut (.A(n293), .B(oled_dcn_N_650), .Z(n319)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam i4281_2_lut.init = 16'h2222;
    LUT4 i4436_2_lut (.A(n289), .B(oled_dcn_N_650), .Z(n315)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam i4436_2_lut.init = 16'h2222;
    OB oled_dat_pad (.I(oled_dat_c), .O(oled_dat));   // c:/fpga/ds18b20/oled.v(31[15:23])
    OB oled_csn_pad (.I(oled_csn_c), .O(oled_csn));   // c:/fpga/ds18b20/oled.v(27[15:23])
    LUT4 i1_2_lut_3_lut_3_lut (.A(n15011), .B(n9820), .C(num[4]), .Z(n8179)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_3_lut.init = 16'h0808;
    LUT4 i4435_2_lut (.A(n288), .B(oled_dcn_N_650), .Z(n314)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam i4435_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_2_lut (.A(n15011), .B(n2135), .Z(n13909)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_2_lut.init = 16'h8888;
    LUT4 i4519_2_lut_rep_219_2_lut (.A(n15011), .B(num[4]), .Z(n14980)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i4519_2_lut_rep_219_2_lut.init = 16'h2222;
    LUT4 char_126__bdd_4_lut_8092 (.A(char[126]), .B(char[1]), .C(num[2]), 
         .D(num[0]), .Z(n14541)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam char_126__bdd_4_lut_8092.init = 16'ha00c;
    LUT4 i76_3_lut_4_lut (.A(n15009), .B(cnt_init[2]), .C(cnt_init[0]), 
         .D(n14969), .Z(n80)) /* synthesis lut_function=(A+(B (C+(D))+!B !(C+!(D)))) */ ;   // c:/fpga/ds18b20/oled.v(99[8:12])
    defparam i76_3_lut_4_lut.init = 16'hefea;
    LUT4 i1_3_lut_4_lut_adj_5 (.A(cnt_main[0]), .B(n15025), .C(n13815), 
         .D(y_p[7]), .Z(n13818)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_5.init = 16'hf1f0;
    LUT4 i1_2_lut_4_lut (.A(n15009), .B(cnt_init[2]), .C(cnt_init[0]), 
         .D(state_back[2]), .Z(n19)) /* synthesis lut_function=(A (D)+!A (B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(99[8:12])
    defparam i1_2_lut_4_lut.init = 16'hea00;
    LUT4 i1_2_lut_4_lut_adj_6 (.A(n15009), .B(cnt_init[2]), .C(cnt_init[0]), 
         .D(state_back[0]), .Z(n19_adj_48)) /* synthesis lut_function=(A (D)+!A (B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(99[8:12])
    defparam i1_2_lut_4_lut_adj_6.init = 16'hea00;
    LUT4 i1_2_lut_4_lut_adj_7 (.A(n15009), .B(cnt_init[2]), .C(cnt_init[0]), 
         .D(state_back[5]), .Z(n19_adj_49)) /* synthesis lut_function=(A (D)+!A (B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(99[8:12])
    defparam i1_2_lut_4_lut_adj_7.init = 16'hea00;
    LUT4 i1_2_lut (.A(state[0]), .B(clk_c_enable_73), .Z(n10224)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i4437_2_lut (.A(n283), .B(oled_dcn_N_650), .Z(n309)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam i4437_2_lut.init = 16'h2222;
    LUT4 mux_366_Mux_3_i31_3_lut_4_lut (.A(oled_dcn_N_650), .B(n14986), 
         .C(char_reg[3]), .D(n10837), .Z(n3778)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // c:/fpga/ds18b20/oled.v(85[7] 101[14])
    defparam mux_366_Mux_3_i31_3_lut_4_lut.init = 16'he0f1;
    ROM128X1A mux_496_Mux_1 (.AD0(n14967), .AD1(n14972), .AD2(n644), .AD3(n643), 
            .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n2326)) /* synthesis initstate=0x0000005007E7E18D8385803000001B85 */ ;
    defparam mux_496_Mux_1.initval = 128'h0000005007E7E18D8385803000001B85;
    ROM128X1A mux_496_Mux_2 (.AD0(n14967), .AD1(n14972), .AD2(n644), .AD3(n643), 
            .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n2325)) /* synthesis initstate=0x07E2009052E7E117A305040800002F05 */ ;
    defparam mux_496_Mux_2.initval = 128'h07E2009052E7E117A305040800002F05;
    ROM128X1A mux_496_Mux_3 (.AD0(n14967), .AD1(n14972), .AD2(n644), .AD3(n643), 
            .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n2324)) /* synthesis initstate=0x02E7E1B600E2E1934221280000002621 */ ;
    defparam mux_496_Mux_3.initval = 128'h02E7E1B600E2E1934221280000002621;
    ROM128X1A mux_496_Mux_4 (.AD0(n14967), .AD1(n14972), .AD2(n644), .AD3(n643), 
            .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n2323)) /* synthesis initstate=0x02E3E1B610EAE1972379045800002F79 */ ;
    defparam mux_496_Mux_4.initval = 128'h02E3E1B610EAE1972379045800002F79;
    ROM128X1A mux_496_Mux_5 (.AD0(n14967), .AD1(n14972), .AD2(n644), .AD3(n643), 
            .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n2322)) /* synthesis initstate=0x02BAE19E01A8E18F0169002000001D69 */ ;
    defparam mux_496_Mux_5.initval = 128'h02BAE19E01A8E18F0169002000001D69;
    FD1P3IX num_1472__i6 (.D(n39), .SP(clk_c_enable_72), .CD(n9169), .CK(clk_c), 
            .Q(num[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam num_1472__i6.GSR = "ENABLED";
    FD1P3IX cnt_scan_i0_i1 (.D(cnt_scan_4__N_308[1]), .SP(clk_c_enable_36), 
            .CD(n9159), .CK(clk_c), .Q(cnt_scan[1]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_scan_i0_i1.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_211 (.A(num[4]), .B(n2130), .Z(n14972)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut_rep_211.init = 16'h4444;
    LUT4 i3_3_lut_4_lut (.A(num[4]), .B(n2130), .C(n2129), .D(n2131), 
         .Z(n3)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i3_3_lut_4_lut.init = 16'h4000;
    LUT4 cnt_0__bdd_3_lut (.A(cnt[0]), .B(cnt[2]), .C(cnt[1]), .Z(n14949)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam cnt_0__bdd_3_lut.init = 16'h1616;
    FD1P3IX cnt_scan_i0_i2 (.D(cnt_scan_4__N_308[2]), .SP(clk_c_enable_36), 
            .CD(n9159), .CK(clk_c), .Q(cnt_scan[2]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_scan_i0_i2.GSR = "ENABLED";
    FD1P3AY oled_rst_307 (.D(n6694), .SP(clk_c_enable_22), .CK(clk_c), 
            .Q(oled_rst_c));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam oled_rst_307.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(state[3]), .B(n15015), .C(n13_adj_51), 
         .D(state[1]), .Z(n27)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/oled.v(66[5:9])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 state_5__I_0_i8_2_lut_rep_232_3_lut (.A(state[2]), .B(state[1]), 
         .C(state[0]), .Z(n14993)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam state_5__I_0_i8_2_lut_rep_232_3_lut.init = 16'hfefe;
    LUT4 i8015_4_lut (.A(n17_adj_83), .B(state[2]), .C(n10782), .D(n15015), 
         .Z(clk_c_enable_72)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i8015_4_lut.init = 16'h0020;
    ROM128X1A mux_496_Mux_24 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1193)) /* synthesis initstate=0x001010012C1F82FDC3AD02CC0000FBAD */ ;
    defparam mux_496_Mux_24.initval = 128'h001010012C1F82FDC3AD02CC0000FBAD;
    ROM128X1A mux_496_Mux_25 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1192)) /* synthesis initstate=0x00100040580020020C42001C00000442 */ ;
    defparam mux_496_Mux_25.initval = 128'h00100040580020020C42001C00000442;
    ROM128X1A mux_496_Mux_26 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1191)) /* synthesis initstate=0x041BA2FA090040003C3001AC00000030 */ ;
    defparam mux_496_Mux_26.initval = 128'h041BA2FA090040003C3001AC00000030;
    ROM128X1A mux_496_Mux_27 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1190)) /* synthesis initstate=0x011441441A0D096503402D580000CB40 */ ;
    defparam mux_496_Mux_27.initval = 128'h011441441A0D096503402D580000CB40;
    ROM128X1A mux_496_Mux_28 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1189)) /* synthesis initstate=0x001808620D0000023C91810800000491 */ ;
    defparam mux_496_Mux_28.initval = 128'h001808620D0000023C91810800000491;
    ROM128X1A mux_496_Mux_29 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n1188)) /* synthesis initstate=0x075300C0184000000484403800000084 */ ;
    defparam mux_496_Mux_29.initval = 128'h075300C0184000000484403800000084;
    LUT4 char_126__bdd_3_lut_8306 (.A(char[126]), .B(num[2]), .C(num[0]), 
         .Z(n14540)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;
    defparam char_126__bdd_3_lut_8306.init = 16'h2828;
    LUT4 char_126__bdd_4_lut_8089 (.A(num[3]), .B(num[2]), .C(num[0]), 
         .D(char[17]), .Z(n14539)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam char_126__bdd_4_lut_8089.init = 16'h0100;
    LUT4 i8010_2_lut_rep_204_2_lut_4_lut_4_lut_4_lut (.A(state[2]), .B(state[1]), 
         .C(n14977), .D(state[0]), .Z(clk_c_enable_51)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (C+(D))+!B (C+!(D))))) */ ;
    defparam i8010_2_lut_rep_204_2_lut_4_lut_4_lut_4_lut.init = 16'h030e;
    OB oled_clk_pad (.I(oled_clk_c), .O(oled_clk));   // c:/fpga/ds18b20/oled.v(30[15:23])
    FD1P3IX cnt_scan_i0_i3 (.D(cnt_scan_4__N_308[3]), .SP(clk_c_enable_36), 
            .CD(n9159), .CK(clk_c), .Q(cnt_scan[3]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_scan_i0_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_217_3_lut_4_lut (.A(state[2]), .B(state[1]), .C(state[3]), 
         .D(state[0]), .Z(n14978)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_217_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX cnt_i0_i3 (.D(n316), .SP(clk_c_enable_68), .CD(n9156), .CK(clk_c), 
            .Q(cnt[3]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_i0_i3.GSR = "ENABLED";
    FD1P3IX state_i0_i2 (.D(n14457), .SP(clk_c_enable_73), .CD(n10224), 
            .CK(clk_c), .Q(state[2]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam state_i0_i2.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(cnt_write[3]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .Z(n13819)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i2868_3_lut (.A(clk_c_enable_42), .B(n14999), .C(n11), .Z(n9149)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam i2868_3_lut.init = 16'ha8a8;
    LUT4 i1784_1_lut (.A(cnt_write[0]), .Z(n2385)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/ds18b20/oled.v(129[25:41])
    defparam i1784_1_lut.init = 16'h5555;
    LUT4 i1714_2_lut_rep_256 (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n15017)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/oled.v(86[49:64])
    defparam i1714_2_lut_rep_256.init = 16'h6666;
    LUT4 i1_2_lut_rep_216_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(state[2]), 
         .D(state[3]), .Z(n14977)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_216_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX char__i1 (.D(sw_c_0), .SP(clk_c_enable_76), .CD(n9151), .CK(clk_c), 
            .Q(char[0]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam char__i1.GSR = "ENABLED";
    LUT4 i2881_2_lut_3_lut_3_lut_4_lut (.A(state[0]), .B(n15016), .C(n11_adj_2), 
         .D(n14970), .Z(n9162)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/fpga/ds18b20/oled.v(152[5:10])
    defparam i2881_2_lut_3_lut_3_lut_4_lut.init = 16'h00e0;
    LUT4 i6_4_lut (.A(n14990), .B(n14976), .C(n442), .D(cnt_scan[0]), 
         .Z(cnt_scan_4__N_308[0])) /* synthesis lut_function=(!(A ((D)+!B)+!A !(C))) */ ;   // c:/fpga/ds18b20/oled.v(44[32:40])
    defparam i6_4_lut.init = 16'h50d8;
    LUT4 i2_4_lut (.A(n2130), .B(n14981), .C(n2131), .D(n2132), .Z(n13855)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0004;
    FD1P3AX cnt_scan_i0_i4 (.D(n13845), .SP(clk_c_enable_36), .CK(clk_c), 
            .Q(cnt_scan[4]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_scan_i0_i4.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_8 (.A(n643), .B(n8363), .C(n14981), .D(n14016), 
         .Z(n1)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i1_4_lut_adj_8.init = 16'h3530;
    LUT4 i4521_3_lut (.A(n13922), .B(state[3]), .C(state[0]), .Z(n10782)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i4521_3_lut.init = 16'hfdfd;
    LUT4 i1786_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n2384)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/oled.v(129[25:41])
    defparam i1786_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_3_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(n15003), 
         .Z(n4_adj_101)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/fpga/ds18b20/oled.v(86[49:64])
    defparam i1_4_lut_3_lut.init = 16'hf4f4;
    LUT4 n14542_bdd_3_lut (.A(n14542), .B(n14539), .C(num[1]), .Z(n2130)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n14542_bdd_3_lut.init = 16'hcaca;
    LUT4 n15497_bdd_4_lut (.A(n15497), .B(n27_adj_72), .C(state[3]), .D(state[0]), 
         .Z(n15612)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n15497_bdd_4_lut.init = 16'h00ca;
    LUT4 char_126__bdd_4_lut_8305 (.A(num[1]), .B(num[0]), .C(num[2]), 
         .D(num[3]), .Z(n14544)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;
    defparam char_126__bdd_4_lut_8305.init = 16'h9402;
    LUT4 i1766_2_lut_3_lut_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n8022)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(108[24:39])
    defparam i1766_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 cnt_4__bdd_2_lut_8127 (.A(cnt[4]), .B(cnt[2]), .Z(n14589)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam cnt_4__bdd_2_lut_8127.init = 16'h4444;
    FD1P3AX cnt_init_i0_i0 (.D(n7054), .SP(clk_c_enable_71), .CK(clk_c), 
            .Q(cnt_init[0]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    FD1P3IX state_i0_i3 (.D(n13908), .SP(clk_c_enable_73), .CD(n10224), 
            .CK(clk_c), .Q(state[3]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam state_i0_i3.GSR = "ENABLED";
    LUT4 i1764_2_lut_3_lut_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n453)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/oled.v(108[24:39])
    defparam i1764_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1757_2_lut_3_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[2]), 
         .Z(n454)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/oled.v(108[24:39])
    defparam i1757_2_lut_3_lut.init = 16'h7878;
    FD1P3IX cnt_init_i0_i2 (.D(n244), .SP(clk_c_enable_71), .CD(n9165), 
            .CK(clk_c), .Q(cnt_init[2]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    LUT4 num_1472_mux_6_i1_4_lut_else_1_lut (.A(cnt_main[1]), .B(state[0]), 
         .C(cnt_main[2]), .D(cnt_main[0]), .Z(n15029)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C (D))))) */ ;   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam num_1472_mux_6_i1_4_lut_else_1_lut.init = 16'h3020;
    LUT4 i1_4_lut_adj_9 (.A(n12665), .B(n13912), .C(state[0]), .D(n14984), 
         .Z(clk_c_enable_38)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_9.init = 16'hc088;
    LUT4 i2_3_lut_adj_10 (.A(cnt_write[4]), .B(state[4]), .C(cnt_write[0]), 
         .Z(n12665)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut_adj_10.init = 16'h4040;
    LUT4 i4454_2_lut_rep_258 (.A(state[2]), .B(state[0]), .Z(n15019)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4454_2_lut_rep_258.init = 16'heeee;
    LUT4 i2_2_lut_2_lut_3_lut (.A(state[2]), .B(state[0]), .C(state_back[1]), 
         .Z(n30)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 n7_bdd_4_lut (.A(n15016), .B(n14971), .C(state[0]), .D(n14992), 
         .Z(clk_c_enable_79)) /* synthesis lut_function=(!(A (B)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam n7_bdd_4_lut.init = 16'h3372;
    LUT4 i8017_2_lut (.A(clk_c_enable_72), .B(state[3]), .Z(n9169)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i8017_2_lut.init = 16'h2222;
    LUT4 i24_2_lut_rep_259 (.A(state[0]), .B(state[1]), .Z(n15020)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i24_2_lut_rep_259.init = 16'h6666;
    LUT4 mux_1050_i1_3_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n13723), 
         .D(n14997), .Z(n6757)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (B (C (D))+!B (C))) */ ;
    defparam mux_1050_i1_3_lut_4_lut_4_lut.init = 16'hf0b2;
    LUT4 i1311_2_lut_3_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n15023), 
         .D(n15015), .Z(n7552)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1311_2_lut_3_lut_4_lut_4_lut.init = 16'h0002;
    LUT4 i2_3_lut_4_lut (.A(state[0]), .B(n15016), .C(state[3]), .D(n15015), 
         .Z(n11_adj_1)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/fpga/ds18b20/oled.v(152[5:10])
    defparam i2_3_lut_4_lut.init = 16'hffef;
    ROM128X1A mux_496_Mux_32 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n815)) /* synthesis initstate=0x0000090417F5797400A800000000E8A8 */ ;
    defparam mux_496_Mux_32.initval = 128'h0000090417F5797400A800000000E8A8;
    ROM128X1A mux_496_Mux_33 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n814)) /* synthesis initstate=0x0000090403EFF9FD832500600000FB25 */ ;
    defparam mux_496_Mux_33.initval = 128'h0000090403EFF9FD832500600000FB25;
    ROM128X1A mux_496_Mux_34 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n813)) /* synthesis initstate=0x07F5690452EFF9FE236104580000FF61 */ ;
    defparam mux_496_Mux_34.initval = 128'h07F5690452EFF9FE236104580000FF61;
    ROM128X1A mux_496_Mux_35 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n812)) /* synthesis initstate=0x02EFE9FC00E7F9FE105128000000FC51 */ ;
    defparam mux_496_Mux_35.initval = 128'h02EFE9FC00E7F9FE105128000000FC51;
    ROM128X1A mux_496_Mux_36 (.AD0(n14967), .AD1(n14972), .AD2(n644), 
            .AD3(n643), .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n811)) /* synthesis initstate=0x02E7E9BC10E7F9FF215104480000FD51 */ ;
    defparam mux_496_Mux_36.initval = 128'h02E7E9BC10E7F9FF215104480000FD51;
    LUT4 i1_2_lut_4_lut_adj_11 (.A(n15034), .B(char_reg[0]), .C(n14968), 
         .D(state[2]), .Z(n6_adj_62)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_11.init = 16'hca00;
    FD1P3IX cnt_i0_i0 (.D(n319), .SP(clk_c_enable_68), .CD(n9156), .CK(clk_c), 
            .Q(cnt[0]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_rep_205 (.A(n14968), .B(n14987), .C(n13955), .D(n12854), 
         .Z(n14966)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_rep_205.init = 16'h0002;
    LUT4 i2930_2_lut_2_lut (.A(n14985), .B(clk_c_enable_76), .Z(n9211)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2930_2_lut_2_lut.init = 16'h4444;
    LUT4 mux_1230_i1_3_lut (.A(cnt_main[2]), .B(cnt_main[1]), .C(n6447), 
         .Z(n8109)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;
    defparam mux_1230_i1_3_lut.init = 16'h3535;
    LUT4 i3_4_lut (.A(n15026), .B(cnt_main[2]), .C(n15005), .D(n14997), 
         .Z(n6447)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0020;
    ROM128X1A mux_496_Mux_0 (.AD0(n14967), .AD1(n14972), .AD2(n644), .AD3(n643), 
            .AD4(n14981), .AD5(n14980), .AD6(n14979), .DO0(n2327)) /* synthesis initstate=0x0000001017F86D6000A800200000C0A8 */ ;
    defparam mux_496_Mux_0.initval = 128'h0000001017F86D6000A800200000C0A8;
    LUT4 i1_2_lut_rep_260 (.A(cnt_scan[0]), .B(cnt_scan[1]), .Z(n15021)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/oled.v(44[32:40])
    defparam i1_2_lut_rep_260.init = 16'heeee;
    LUT4 mux_1230_i2_3_lut (.A(cnt_main[2]), .B(cnt_main[1]), .C(n6447), 
         .Z(n7353)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;
    defparam mux_1230_i2_3_lut.init = 16'hc5c5;
    LUT4 i1_2_lut_4_lut_adj_12 (.A(n14779), .B(n3778), .C(n14964), .D(state[2]), 
         .Z(n6_adj_12)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_12.init = 16'hac00;
    LUT4 i1_3_lut_rep_235_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n14996)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(44[32:40])
    defparam i1_3_lut_rep_235_4_lut.init = 16'hefff;
    CCU2D add_104_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12647), .S0(n2405));   // c:/fpga/ds18b20/oled.v(155[29:45])
    defparam add_104_17.INIT0 = 16'h5aaa;
    defparam add_104_17.INIT1 = 16'h0000;
    defparam add_104_17.INJECT1_0 = "NO";
    defparam add_104_17.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_13 (.A(cnt_main[2]), .B(cnt_main[1]), .C(cnt_main[0]), 
         .Z(n12725)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(68[12:40])
    defparam i2_3_lut_adj_13.init = 16'h4040;
    LUT4 n14_bdd_4_lut_8053 (.A(cnt[3]), .B(cnt[2]), .C(cnt[0]), .D(cnt[1]), 
         .Z(n14473)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam n14_bdd_4_lut_8053.init = 16'h4115;
    LUT4 i2_3_lut_4_lut_adj_14 (.A(cnt_scan[0]), .B(cnt_scan[1]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n8959)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(44[32:40])
    defparam i2_3_lut_4_lut_adj_14.init = 16'he000;
    LUT4 i1_3_lut_4_lut_adj_15 (.A(cnt_init[1]), .B(n14988), .C(n52), 
         .D(n15009), .Z(n46)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/fpga/ds18b20/oled.v(87[8:12])
    defparam i1_3_lut_4_lut_adj_15.init = 16'h44f4;
    LUT4 i2_2_lut_3_lut_4_lut_adj_16 (.A(cnt_scan[1]), .B(cnt_scan[2]), 
         .C(n14996), .D(cnt_scan[4]), .Z(n6_adj_94)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_16.init = 16'h0020;
    LUT4 i1_4_lut_adj_17 (.A(state[0]), .B(num_delay[12]), .C(n16_adj_65), 
         .D(n27), .Z(num_delay_15__N_231[12])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_17.init = 16'hdc50;
    LUT4 i1_2_lut_3_lut (.A(cnt_scan[1]), .B(cnt_scan[2]), .C(cnt_scan[0]), 
         .Z(n13904)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h2020;
    LUT4 i4374_2_lut_rep_261 (.A(state[1]), .B(state[0]), .Z(n15022)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4374_2_lut_rep_261.init = 16'heeee;
    LUT4 i1_4_lut_adj_18 (.A(cnt_scan[4]), .B(n57_adj_80), .C(n15045), 
         .D(cnt_scan[3]), .Z(n64_adj_81)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam i1_4_lut_adj_18.init = 16'h5044;
    CCU2D add_30_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12633), 
          .COUT(n12634), .S0(n290), .S1(n289));   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam add_30_5.INIT0 = 16'h5aaa;
    defparam add_30_5.INIT1 = 16'h5aaa;
    defparam add_30_5.INJECT1_0 = "NO";
    defparam add_30_5.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_19 (.A(cnt_init[1]), .B(n14988), .C(n4_adj_101), 
         .D(n14986), .Z(n12854)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(87[8:12])
    defparam i1_3_lut_4_lut_adj_19.init = 16'hb000;
    LUT4 i4426_2_lut_rep_234_3_lut_4_lut (.A(state[1]), .B(state[0]), .C(state[4]), 
         .D(state[5]), .Z(n14995)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4426_2_lut_rep_234_3_lut_4_lut.init = 16'hfffe;
    LUT4 n7_bdd_4_lut_8100_rep_213 (.A(n15016), .B(n11_adj_1), .C(state[0]), 
         .D(n14992), .Z(clk_c_enable_36)) /* synthesis lut_function=(!(A (B)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam n7_bdd_4_lut_8100_rep_213.init = 16'h3372;
    FD1P3IX cnt_main_1473__i1 (.D(n12630), .SP(clk_c_enable_51), .CD(n9162), 
            .CK(clk_c), .Q(cnt_main[1]));   // c:/fpga/ds18b20/oled.v(68[12:40])
    defparam cnt_main_1473__i1.GSR = "ENABLED";
    FD1P3IX cnt_i0_i4 (.D(n315), .SP(clk_c_enable_68), .CD(n9156), .CK(clk_c), 
            .Q(cnt[4]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_i0_i5 (.D(n314), .SP(clk_c_enable_68), .CD(n9156), .CK(clk_c), 
            .Q(cnt[5]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_i0_i5.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i0 (.D(n2385), .SP(clk_c_enable_42), .CD(n9149), 
            .CK(clk_c), .Q(cnt_write[0]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    LUT4 i2911_2_lut_3_lut (.A(state[1]), .B(state[0]), .C(clk_c_enable_73), 
         .Z(n9192)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i2911_2_lut_3_lut.init = 16'he0e0;
    LUT4 i4290_2_lut_rep_262 (.A(state[3]), .B(state[2]), .Z(n15023)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4290_2_lut_rep_262.init = 16'heeee;
    LUT4 i1_2_lut_rep_223_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(n15020), 
         .D(n15023), .Z(n14984)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_223_3_lut_4_lut.init = 16'h0010;
    FD1P3IX cnt_scan_i0_i0 (.D(cnt_scan_4__N_308[0]), .SP(clk_c_enable_36), 
            .CD(n9159), .CK(clk_c), .Q(cnt_scan[0]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_scan_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i1 (.D(n2384), .SP(clk_c_enable_42), .CD(n9149), 
            .CK(clk_c), .Q(cnt_write[1]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    LUT4 i4434_2_lut (.A(n287), .B(oled_dcn_N_650), .Z(n313)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam i4434_2_lut.init = 16'h2222;
    FD1P3AX oled_dat_310 (.D(n13843), .SP(clk_c_enable_38), .CK(clk_c), 
            .Q(oled_dat_c));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam oled_dat_310.GSR = "ENABLED";
    LUT4 i4428_2_lut (.A(n280), .B(oled_dcn_N_650), .Z(n306)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam i4428_2_lut.init = 16'h2222;
    LUT4 i4498_2_lut_rep_236_3_lut_4_lut (.A(state[3]), .B(state[2]), .C(state[4]), 
         .D(state[5]), .Z(n14997)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4498_2_lut_rep_236_3_lut_4_lut.init = 16'hfffe;
    LUT4 i7706_3_lut_4_lut (.A(state[3]), .B(state[2]), .C(state[4]), 
         .D(state[0]), .Z(n13958)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7706_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4423_2_lut (.A(n279), .B(oled_dcn_N_650), .Z(n305)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam i4423_2_lut.init = 16'h2222;
    FD1P3IX cnt_write_i0_i2 (.D(n2383), .SP(clk_c_enable_42), .CD(n9149), 
            .CK(clk_c), .Q(cnt_write[2]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    LUT4 i4466_2_lut_3_lut_3_lut (.A(cnt[0]), .B(cnt[2]), .C(cnt[1]), 
         .Z(n14_adj_17)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/fpga/ds18b20/oled.v(94[20] 97[14])
    defparam i4466_2_lut_3_lut_3_lut.init = 16'h5454;
    LUT4 i4433_2_lut (.A(n286), .B(oled_dcn_N_650), .Z(n312)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam i4433_2_lut.init = 16'h2222;
    OB oled_dcn_pad (.I(oled_dcn_c), .O(oled_dcn));   // c:/fpga/ds18b20/oled.v(29[15:23])
    LUT4 i2879_2_lut_4_lut (.A(n15016), .B(n11_adj_1), .C(state[0]), .D(n14992), 
         .Z(n9159)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2879_2_lut_4_lut.init = 16'h0040;
    FD1P3IX cnt_delay_i0_i9 (.D(n2411), .SP(clk_c_enable_79), .CD(n9152), 
            .CK(clk_c), .Q(cnt_delay[9]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i3 (.D(n2382), .SP(clk_c_enable_42), .CD(n9149), 
            .CK(clk_c), .Q(cnt_write[3]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    LUT4 i33_4_lut_4_lut (.A(state[4]), .B(state_back[4]), .C(state[5]), 
         .D(n15000), .Z(n17)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i33_4_lut_4_lut.init = 16'h4f40;
    LUT4 i3_4_lut_adj_20 (.A(n2131), .B(n2132), .C(n13821), .D(n9058), 
         .Z(n13823)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut_adj_20.init = 16'h0080;
    PFUMX i8032 (.BLUT(n14455), .ALUT(n14454), .C0(state[1]), .Z(n14456));
    LUT4 n15109_bdd_2_lut (.A(n15109), .B(cnt_scan[4]), .Z(n15110)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n15109_bdd_2_lut.init = 16'h2222;
    LUT4 i4388_2_lut (.A(n278), .B(oled_dcn_N_650), .Z(n304)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam i4388_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_21 (.A(n2129), .B(n8363), .Z(n7)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_21.init = 16'h2222;
    FD1P3IX cnt_write_i0_i4 (.D(n2381), .SP(clk_c_enable_42), .CD(n9149), 
            .CK(clk_c), .Q(cnt_write[4]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    LUT4 i7985_3_lut_3_lut (.A(state[4]), .B(state[3]), .C(state[5]), 
         .Z(n14090)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i7985_3_lut_3_lut.init = 16'hfefe;
    LUT4 i1788_2_lut_rep_263 (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n15024)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/oled.v(129[25:41])
    defparam i1788_2_lut_rep_263.init = 16'h8888;
    LUT4 i2_4_lut_adj_22 (.A(char[2]), .B(n14051), .C(char[18]), .D(num[1]), 
         .Z(n16_adj_100)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/fpga/ds18b20/oled.v(118[59:71])
    defparam i2_4_lut_adj_22.init = 16'h3022;
    FD1P3IX char__i2 (.D(sw_c_1), .SP(clk_c_enable_76), .CD(n9151), .CK(clk_c), 
            .Q(char[1]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam char__i2.GSR = "ENABLED";
    FD1P3IX char__i3 (.D(sw_c_2), .SP(clk_c_enable_76), .CD(n9151), .CK(clk_c), 
            .Q(char[2]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam char__i3.GSR = "ENABLED";
    GSR GSR_INST (.GSR(rst_n_c));
    LUT4 i1793_2_lut_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .Z(n2383)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/oled.v(129[25:41])
    defparam i1793_2_lut_3_lut.init = 16'h7878;
    LUT4 i4432_2_lut (.A(n285), .B(oled_dcn_N_650), .Z(n311)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam i4432_2_lut.init = 16'h2222;
    LUT4 n84_bdd_4_lut (.A(n15613), .B(n15007), .C(state[2]), .D(state[0]), 
         .Z(n14553)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam n84_bdd_4_lut.init = 16'h0440;
    FD1P3IX char__i4 (.D(sw_c_3), .SP(clk_c_enable_76), .CD(n9151), .CK(clk_c), 
            .Q(char[3]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam char__i4.GSR = "ENABLED";
    FD1P3IX char__i7 (.D(n8109), .SP(clk_c_enable_76), .CD(n9211), .CK(clk_c), 
            .Q(char[16]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam char__i7.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_23 (.A(n15015), .B(n15022), .C(n6735), 
         .D(n10_adj_4), .Z(n13912)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_23.init = 16'he0f0;
    FD1P3IX char__i8 (.D(n7353), .SP(clk_c_enable_76), .CD(n9211), .CK(clk_c), 
            .Q(char[17]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam char__i8.GSR = "ENABLED";
    LUT4 i1800_2_lut_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n2382)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/oled.v(129[25:41])
    defparam i1800_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 cnt_main_1__bdd_4_lut (.A(cnt_main[1]), .B(y_p[1]), .C(cnt_main[2]), 
         .D(cnt_main[0]), .Z(n15035)) /* synthesis lut_function=(A (D)+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam cnt_main_1__bdd_4_lut.init = 16'haa54;
    PFUMX i74 (.BLUT(n34), .ALUT(n41_adj_73), .C0(state[5]), .Z(n50));
    LUT4 i33_4_lut (.A(num_delay[12]), .B(num_delay_15__N_542[12]), .C(state[2]), 
         .D(n13941), .Z(n16_adj_65)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut.init = 16'h0aca;
    LUT4 i30_4_lut_3_lut (.A(state[3]), .B(state[0]), .C(state[1]), .Z(n17_adj_83)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i30_4_lut_3_lut.init = 16'h1616;
    LUT4 i1_2_lut_rep_215_4_lut (.A(n15021), .B(cnt_scan[2]), .C(cnt_scan[3]), 
         .D(cnt_scan[4]), .Z(n14976)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_2_lut_rep_215_4_lut.init = 16'hffbf;
    FD1P3AX char__i9 (.D(n5), .SP(clk_c_enable_76), .CK(clk_c), .Q(char[18]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam char__i9.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_264 (.A(cnt_main[2]), .B(cnt_main[1]), .Z(n15025)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_264.init = 16'heeee;
    FD1P3IX cnt_delay_i0_i1 (.D(n2419), .SP(clk_c_enable_79), .CD(n9152), 
            .CK(clk_c), .Q(cnt_delay[1]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_24 (.A(state[0]), .B(y_p[0]), .C(n16_adj_76), .D(n14970), 
         .Z(y_p_7__N_1[0])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_24.init = 16'hdc50;
    FD1P3IX cnt_delay_i0_i2 (.D(n2418), .SP(clk_c_enable_79), .CD(n9152), 
            .CK(clk_c), .Q(cnt_delay[2]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    LUT4 i36_2_lut_rep_265 (.A(cnt_main[0]), .B(cnt_main[1]), .Z(n15026)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i36_2_lut_rep_265.init = 16'h6666;
    LUT4 i6408_2_lut_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n12630)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;
    defparam i6408_2_lut_3_lut.init = 16'h0606;
    LUT4 i1393_2_lut_rep_266 (.A(cnt_init[0]), .B(cnt_init[1]), .Z(n15027)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i1393_2_lut_rep_266.init = 16'h8888;
    LUT4 i33_4_lut_adj_25 (.A(y_p[0]), .B(n15042), .C(state[1]), .D(n14997), 
         .Z(n16_adj_76)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut_adj_25.init = 16'h0a3a;
    LUT4 i1_4_lut_adj_26 (.A(cnt_init[0]), .B(num_delay[12]), .C(n14969), 
         .D(n14991), .Z(num_delay_15__N_542[12])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_26.init = 16'hcc40;
    FD1P3IX cnt_main_1473__i2 (.D(n12725), .SP(clk_c_enable_51), .CD(n9162), 
            .CK(clk_c), .Q(cnt_main[2]));   // c:/fpga/ds18b20/oled.v(68[12:40])
    defparam cnt_main_1473__i2.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i3 (.D(n2417), .SP(clk_c_enable_79), .CD(n9152), 
            .CK(clk_c), .Q(cnt_delay[3]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    CCU2D add_30_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12636), 
          .COUT(n12637), .S0(n284), .S1(n283));   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam add_30_11.INIT0 = 16'h5aaa;
    defparam add_30_11.INIT1 = 16'h5aaa;
    defparam add_30_11.INJECT1_0 = "NO";
    defparam add_30_11.INJECT1_1 = "NO";
    LUT4 i1721_2_lut_3_lut (.A(cnt_init[0]), .B(cnt_init[1]), .C(cnt_init[2]), 
         .Z(n244)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i1721_2_lut_3_lut.init = 16'h7878;
    LUT4 i2_4_lut_adj_27 (.A(cnt_scan[2]), .B(cnt_scan[0]), .C(cnt_scan[1]), 
         .D(cnt_scan[4]), .Z(n8817)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i2_4_lut_adj_27.init = 16'hffbf;
    LUT4 i1_2_lut_rep_222_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(n10_adj_4), 
         .D(n15022), .Z(n14983)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_222_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_adj_28 (.A(cnt_main[0]), .B(n15025), .C(n13815), 
         .D(y_p[5]), .Z(n13816)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_28.init = 16'hf1f0;
    LUT4 i1728_2_lut_3_lut_4_lut (.A(cnt_init[0]), .B(cnt_init[1]), .C(cnt_init[3]), 
         .D(cnt_init[2]), .Z(n243)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i1728_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i7847_3_lut_4_lut (.A(oled_dcn_N_650), .B(n14986), .C(cnt[3]), 
         .D(cnt[4]), .Z(n14120)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/fpga/ds18b20/oled.v(85[7] 101[14])
    defparam i7847_3_lut_4_lut.init = 16'h0100;
    FD1P3IX cnt_delay_i0_i4 (.D(n2416), .SP(clk_c_enable_79), .CD(n9152), 
            .CK(clk_c), .Q(cnt_delay[4]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    LUT4 i4431_2_lut (.A(n284), .B(oled_dcn_N_650), .Z(n310)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam i4431_2_lut.init = 16'h2222;
    LUT4 n3443_bdd_2_lut_8616 (.A(n15494), .B(cnt_scan[1]), .Z(n15495)) /* synthesis lut_function=(A (B)) */ ;
    defparam n3443_bdd_2_lut_8616.init = 16'h8888;
    LUT4 num_1472_mux_6_i5_4_lut (.A(n10855), .B(n41), .C(state[3]), .D(state[0]), 
         .Z(n51_adj_89)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam num_1472_mux_6_i5_4_lut.init = 16'hc0c5;
    LUT4 i7950_3_lut (.A(n13891), .B(n12), .C(state[2]), .Z(n14)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i7950_3_lut.init = 16'hcaca;
    CCU2D add_104_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12646), .COUT(n12647), .S0(n2407), .S1(n2406));   // c:/fpga/ds18b20/oled.v(155[29:45])
    defparam add_104_15.INIT0 = 16'h5aaa;
    defparam add_104_15.INIT1 = 16'h5aaa;
    defparam add_104_15.INJECT1_0 = "NO";
    defparam add_104_15.INJECT1_1 = "NO";
    LUT4 cnt_1__bdd_4_lut_8228 (.A(cnt[1]), .B(cnt[4]), .C(cnt[3]), .D(cnt[2]), 
         .Z(n14584)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (D))) */ ;
    defparam cnt_1__bdd_4_lut_8228.init = 16'h2275;
    CCU2D add_30_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12632), 
          .COUT(n12633), .S0(n292), .S1(n291));   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam add_30_3.INIT0 = 16'h5aaa;
    defparam add_30_3.INIT1 = 16'h5aaa;
    defparam add_30_3.INJECT1_0 = "NO";
    defparam add_30_3.INJECT1_1 = "NO";
    LUT4 i2870_3_lut_4_lut (.A(n15015), .B(n15023), .C(n14_adj_24), .D(clk_c_enable_76), 
         .Z(n9151)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i2870_3_lut_4_lut.init = 16'hef00;
    LUT4 i1_4_lut_adj_29 (.A(state[0]), .B(num_delay[15]), .C(n16_adj_66), 
         .D(n27), .Z(num_delay_15__N_231[15])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_29.init = 16'hdc50;
    CCU2D add_104_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12645), .COUT(n12646), .S0(n2409), .S1(n2408));   // c:/fpga/ds18b20/oled.v(155[29:45])
    defparam add_104_13.INIT0 = 16'h5aaa;
    defparam add_104_13.INIT1 = 16'h5aaa;
    defparam add_104_13.INJECT1_0 = "NO";
    defparam add_104_13.INJECT1_1 = "NO";
    LUT4 i33_4_lut_adj_30 (.A(num_delay[15]), .B(num_delay_15__N_542[15]), 
         .C(state[2]), .D(n13941), .Z(n16_adj_66)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_30.init = 16'h0aca;
    CCU2D add_104_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12644), .COUT(n12645), .S0(n2411), .S1(n2410));   // c:/fpga/ds18b20/oled.v(155[29:45])
    defparam add_104_11.INIT0 = 16'h5aaa;
    defparam add_104_11.INIT1 = 16'h5aaa;
    defparam add_104_11.INJECT1_0 = "NO";
    defparam add_104_11.INJECT1_1 = "NO";
    PFUMX i47_adj_31 (.BLUT(n6_adj_40), .ALUT(n12_adj_39), .C0(state[3]), 
          .Z(n24_adj_41));
    PFUMX i8342 (.BLUT(n15036), .ALUT(n15037), .C0(cnt_scan[1]), .Z(n15038));
    FD1P3IX cnt_delay_i0_i5 (.D(n2415), .SP(clk_c_enable_79), .CD(n9152), 
            .CK(clk_c), .Q(cnt_delay[5]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_32 (.A(cnt_init[0]), .B(num_delay[15]), .C(n14969), 
         .D(n14991), .Z(num_delay_15__N_542[15])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_32.init = 16'hcc40;
    LUT4 mux_366_Mux_6_i31_3_lut_4_lut (.A(oled_dcn_N_650), .B(n14986), 
         .C(char_reg[6]), .D(n14918), .Z(n3775)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/fpga/ds18b20/oled.v(85[7] 101[14])
    defparam mux_366_Mux_6_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_3_lut_4_lut_adj_33 (.A(cnt_main[0]), .B(n15025), .C(n13815), 
         .D(y_p[4]), .Z(n13817)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_33.init = 16'hf1f0;
    LUT4 i7722_2_lut_rep_268 (.A(state[1]), .B(state[5]), .Z(n15613)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7722_2_lut_rep_268.init = 16'heeee;
    LUT4 i1_4_lut_adj_34 (.A(state[0]), .B(num_delay[11]), .C(n16_adj_84), 
         .D(n27), .Z(num_delay_15__N_231[11])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_34.init = 16'hdc50;
    LUT4 mux_62_i3_4_lut (.A(n442), .B(n14976), .C(n14990), .D(n454), 
         .Z(cnt_scan_4__N_308[2])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/fpga/ds18b20/oled.v(107[16] 108[40])
    defparam mux_62_i3_4_lut.init = 16'hc505;
    LUT4 i1_4_lut_adj_35 (.A(state[0]), .B(num_delay[14]), .C(n16_adj_63), 
         .D(n27), .Z(num_delay_15__N_231[14])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_35.init = 16'hdc50;
    LUT4 i33_4_lut_adj_36 (.A(num_delay[14]), .B(num_delay_15__N_542[14]), 
         .C(state[2]), .D(n13941), .Z(n16_adj_63)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_36.init = 16'h0aca;
    CCU2D add_104_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12643), .COUT(n12644), .S0(n2413), .S1(n2412));   // c:/fpga/ds18b20/oled.v(155[29:45])
    defparam add_104_9.INIT0 = 16'h5aaa;
    defparam add_104_9.INIT1 = 16'h5aaa;
    defparam add_104_9.INJECT1_0 = "NO";
    defparam add_104_9.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_37 (.A(cnt_init[0]), .B(n4_adj_92), .C(num_delay[14]), 
         .D(n14969), .Z(num_delay_15__N_542[14])) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(89[8:12])
    defparam i2_4_lut_adj_37.init = 16'hdccc;
    LUT4 n811_bdd_4_lut_8042_4_lut_then_4_lut (.A(cnt_scan[2]), .B(cnt_scan[0]), 
         .C(n2323), .D(n1945), .Z(n15040)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/fpga/ds18b20/oled.v(123[8:13])
    defparam n811_bdd_4_lut_8042_4_lut_then_4_lut.init = 16'h5140;
    FD1P3IX cnt_delay_i0_i10 (.D(n2410), .SP(clk_c_enable_79), .CD(n9152), 
            .CK(clk_c), .Q(cnt_delay[10]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    LUT4 i8027_3_lut_4_lut (.A(n15015), .B(n15023), .C(n7_adj_96), .D(cnt_main[2]), 
         .Z(n5)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i8027_3_lut_4_lut.init = 16'hef00;
    LUT4 n14584_bdd_2_lut (.A(n14584), .B(cnt[0]), .Z(n14585)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n14584_bdd_2_lut.init = 16'h2222;
    LUT4 i33_4_lut_adj_38 (.A(num_delay[11]), .B(num_delay_15__N_542[11]), 
         .C(state[2]), .D(n13941), .Z(n16_adj_84)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_38.init = 16'h0aca;
    LUT4 state_5__I_0_314_i10_2_lut_rep_231_3_lut (.A(state[5]), .B(state[4]), 
         .C(state[3]), .Z(n14992)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam state_5__I_0_314_i10_2_lut_rep_231_3_lut.init = 16'hfefe;
    FD1P3IX state_i0_i4 (.D(n13103), .SP(clk_c_enable_73), .CD(n9192), 
            .CK(clk_c), .Q(state[4]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam state_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_i0_i6 (.D(n313), .SP(clk_c_enable_68), .CD(n9156), .CK(clk_c), 
            .Q(cnt[6]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_i0_i6.GSR = "ENABLED";
    LUT4 cnt_4__bdd_4_lut_8128 (.A(cnt[4]), .B(cnt[2]), .C(cnt[3]), .D(cnt[1]), 
         .Z(n14590)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A !(B+!(D)))) */ ;
    defparam cnt_4__bdd_4_lut_8128.init = 16'h4e7f;
    FD1P3IX cnt_i0_i13 (.D(n306), .SP(clk_c_enable_68), .CD(n9156), .CK(clk_c), 
            .Q(cnt[13]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_i0_i13.GSR = "ENABLED";
    PFUMX i7892 (.BLUT(n14163), .ALUT(n14164), .C0(num[3]), .Z(n2132));
    LUT4 i1_4_lut_adj_39 (.A(cnt_init[0]), .B(num_delay[11]), .C(n14969), 
         .D(n14991), .Z(num_delay_15__N_542[11])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_39.init = 16'hcc40;
    FD1P3IX cnt_i0_i14 (.D(n305), .SP(clk_c_enable_68), .CD(n9156), .CK(clk_c), 
            .Q(cnt[14]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_i0_i14.GSR = "ENABLED";
    LUT4 i1735_3_lut_4_lut (.A(cnt_init[2]), .B(n15027), .C(cnt_init[3]), 
         .D(cnt_init[4]), .Z(n242)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/fpga/ds18b20/oled.v(86[49:64])
    defparam i1735_3_lut_4_lut.init = 16'h7f80;
    LUT4 i5_4_lut (.A(n2130), .B(n10), .C(n13909), .D(n2131), .Z(n13911)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/fpga/ds18b20/oled.v(118[59:71])
    defparam i5_4_lut.init = 16'h0040;
    LUT4 i7890_4_lut_4_lut (.A(n15013), .B(char[126]), .C(num[2]), .D(char[3]), 
         .Z(n14163)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(118[59:71])
    defparam i7890_4_lut_4_lut.init = 16'h4a40;
    LUT4 n813_bdd_4_lut (.A(n813), .B(x_ph[0]), .C(cnt_scan[2]), .D(cnt_scan[0]), 
         .Z(n15494)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam n813_bdd_4_lut.init = 16'ha00c;
    LUT4 i8012_2_lut (.A(cnt_main[2]), .B(cnt_main[0]), .Z(n9081)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/fpga/ds18b20/oled.v(68[12:40])
    defparam i8012_2_lut.init = 16'hbbbb;
    LUT4 n11_bdd_4_lut_8220 (.A(n11_adj_3), .B(n14989), .C(state[0]), 
         .D(state[2]), .Z(n14637)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam n11_bdd_4_lut_8220.init = 16'h08f0;
    LUT4 i1_4_lut_adj_40 (.A(state[0]), .B(num_delay[13]), .C(n16_adj_59), 
         .D(n27), .Z(num_delay_15__N_231[13])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_40.init = 16'hdc50;
    CCU2D sub_1170_add_2_17 (.A0(cnt_delay[15]), .B0(num_delay[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12659), .S1(n2402));
    defparam sub_1170_add_2_17.INIT0 = 16'h5999;
    defparam sub_1170_add_2_17.INIT1 = 16'h0000;
    defparam sub_1170_add_2_17.INJECT1_0 = "NO";
    defparam sub_1170_add_2_17.INJECT1_1 = "NO";
    CCU2D add_104_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12642), .COUT(n12643), .S0(n2415), .S1(n2414));   // c:/fpga/ds18b20/oled.v(155[29:45])
    defparam add_104_7.INIT0 = 16'h5aaa;
    defparam add_104_7.INIT1 = 16'h5aaa;
    defparam add_104_7.INJECT1_0 = "NO";
    defparam add_104_7.INJECT1_1 = "NO";
    CCU2D sub_1170_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[13]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12658), .COUT(n12659));
    defparam sub_1170_add_2_15.INIT0 = 16'h5999;
    defparam sub_1170_add_2_15.INIT1 = 16'h5999;
    defparam sub_1170_add_2_15.INJECT1_0 = "NO";
    defparam sub_1170_add_2_15.INJECT1_1 = "NO";
    LUT4 n15492_bdd_2_lut_8666 (.A(n15492), .B(cnt_scan[2]), .Z(n15493)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n15492_bdd_2_lut_8666.init = 16'h2222;
    CCU2D add_30_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n12632), 
          .S1(n293));   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam add_30_1.INIT0 = 16'hF000;
    defparam add_30_1.INIT1 = 16'h5555;
    defparam add_30_1.INJECT1_0 = "NO";
    defparam add_30_1.INJECT1_1 = "NO";
    FD1P3IX cnt_i0_i7 (.D(n312), .SP(clk_c_enable_68), .CD(n9156), .CK(clk_c), 
            .Q(cnt[7]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_i0_i7.GSR = "ENABLED";
    CCU2D add_104_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12641), .COUT(n12642), .S0(n2417), .S1(n2416));   // c:/fpga/ds18b20/oled.v(155[29:45])
    defparam add_104_5.INIT0 = 16'h5aaa;
    defparam add_104_5.INIT1 = 16'h5aaa;
    defparam add_104_5.INJECT1_0 = "NO";
    defparam add_104_5.INJECT1_1 = "NO";
    LUT4 state_5__I_0_315_i11_3_lut_rep_226_4_lut_4_lut (.A(state[2]), .B(n15022), 
         .C(n15015), .D(state[3]), .Z(n14987)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam state_5__I_0_315_i11_3_lut_rep_226_4_lut_4_lut.init = 16'hfffd;
    LUT4 i1_3_lut_4_lut_adj_41 (.A(n15020), .B(n14997), .C(oled_dat_N_672), 
         .D(state[4]), .Z(n13843)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i1_3_lut_4_lut_adj_41.init = 16'hd000;
    LUT4 n8976_bdd_3_lut_3_lut (.A(cnt_main[2]), .B(cnt_main[1]), .C(cnt_main[0]), 
         .Z(n13815)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/fpga/ds18b20/oled.v(78[8:12])
    defparam n8976_bdd_3_lut_3_lut.init = 16'hfefe;
    LUT4 n45_bdd_3_lut_8141_4_lut (.A(y_p[0]), .B(n15012), .C(cnt_scan[1]), 
         .D(n45), .Z(n14478)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n45_bdd_3_lut_8141_4_lut.init = 16'hf808;
    CCU2D add_104_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12640), .COUT(n12641), .S0(n2419), .S1(n2418));   // c:/fpga/ds18b20/oled.v(155[29:45])
    defparam add_104_3.INIT0 = 16'h5aaa;
    defparam add_104_3.INIT1 = 16'h5aaa;
    defparam add_104_3.INJECT1_0 = "NO";
    defparam add_104_3.INJECT1_1 = "NO";
    LUT4 i33_4_lut_adj_42 (.A(num_delay[13]), .B(num_delay_15__N_542[13]), 
         .C(state[2]), .D(n13941), .Z(n16_adj_59)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_42.init = 16'h0aca;
    FD1P3IX cnt_delay_i0_i11 (.D(n2409), .SP(clk_c_enable_79), .CD(n9152), 
            .CK(clk_c), .Q(cnt_delay[11]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_43 (.A(state[0]), .B(num_delay[10]), .C(n16_adj_52), 
         .D(n27), .Z(num_delay_15__N_231[10])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_43.init = 16'hdc50;
    FD1P3IX cnt_delay_i0_i0 (.D(n2420), .SP(clk_c_enable_79), .CD(n9152), 
            .CK(clk_c), .Q(cnt_delay[0]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    CCU2D sub_1170_add_2_13 (.A0(cnt_delay[11]), .B0(num_delay[11]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12657), .COUT(n12658));
    defparam sub_1170_add_2_13.INIT0 = 16'h5999;
    defparam sub_1170_add_2_13.INIT1 = 16'h5999;
    defparam sub_1170_add_2_13.INJECT1_0 = "NO";
    defparam sub_1170_add_2_13.INJECT1_1 = "NO";
    LUT4 i33_4_lut_adj_44 (.A(num_delay[10]), .B(num_delay_15__N_542[10]), 
         .C(state[2]), .D(n13941), .Z(n16_adj_52)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_44.init = 16'h0aca;
    LUT4 i1_4_lut_adj_45 (.A(cnt_init[0]), .B(num_delay[10]), .C(n14969), 
         .D(n14991), .Z(num_delay_15__N_542[10])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_45.init = 16'hcc40;
    PFUMX i8049 (.BLUT(n14478), .ALUT(n14477), .C0(cnt_scan[3]), .Z(n14479));
    FD1P3IX cnt_init_i0_i3 (.D(n243), .SP(clk_c_enable_71), .CD(n9165), 
            .CK(clk_c), .Q(cnt_init[3]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_init_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_i0_i15 (.D(n304), .SP(clk_c_enable_68), .CD(n9156), .CK(clk_c), 
            .Q(cnt[15]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_i0_i15.GSR = "ENABLED";
    CCU2D sub_1170_add_2_11 (.A0(cnt_delay[9]), .B0(num_delay[9]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(num_delay[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12656), .COUT(n12657));
    defparam sub_1170_add_2_11.INIT0 = 16'h5999;
    defparam sub_1170_add_2_11.INIT1 = 16'h5999;
    defparam sub_1170_add_2_11.INJECT1_0 = "NO";
    defparam sub_1170_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1170_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[7]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12655), .COUT(n12656));
    defparam sub_1170_add_2_9.INIT0 = 16'h5999;
    defparam sub_1170_add_2_9.INIT1 = 16'h5999;
    defparam sub_1170_add_2_9.INJECT1_0 = "NO";
    defparam sub_1170_add_2_9.INJECT1_1 = "NO";
    CCU2D add_104_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n12640), .S1(n2420));   // c:/fpga/ds18b20/oled.v(155[29:45])
    defparam add_104_1.INIT0 = 16'hF000;
    defparam add_104_1.INIT1 = 16'h5555;
    defparam add_104_1.INJECT1_0 = "NO";
    defparam add_104_1.INJECT1_1 = "NO";
    FD1P3IX cnt_i0_i8 (.D(n311), .SP(clk_c_enable_68), .CD(n9156), .CK(clk_c), 
            .Q(cnt[8]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_i0_i8.GSR = "ENABLED";
    FD1P3IX state_i0_i5 (.D(n15489), .SP(clk_c_enable_73), .CD(n9192), 
            .CK(clk_c), .Q(state[5]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam state_i0_i5.GSR = "ENABLED";
    FD1P3IX num_1472__i1 (.D(n44), .SP(clk_c_enable_72), .CD(n9169), .CK(clk_c), 
            .Q(num[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam num_1472__i1.GSR = "ENABLED";
    LUT4 i1807_3_lut_4_lut (.A(cnt_write[2]), .B(n15024), .C(cnt_write[3]), 
         .D(cnt_write[4]), .Z(n2381)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/fpga/ds18b20/oled.v(129[25:41])
    defparam i1807_3_lut_4_lut.init = 16'h7f80;
    FD1P3IX cnt_i0_i9 (.D(n310), .SP(clk_c_enable_68), .CD(n9156), .CK(clk_c), 
            .Q(cnt[9]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_i0_i9.GSR = "ENABLED";
    CCU2D add_30_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12639), 
          .S0(n278));   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam add_30_17.INIT0 = 16'h5aaa;
    defparam add_30_17.INIT1 = 16'h0000;
    defparam add_30_17.INJECT1_0 = "NO";
    defparam add_30_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_220_3_lut (.A(n14544), .B(char[126]), .C(num[4]), 
         .Z(n14981)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_220_3_lut.init = 16'h0808;
    LUT4 i7727_4_lut (.A(n11_adj_1), .B(n14963), .C(n13970), .D(n6_adj_94), 
         .Z(clk_c_enable_73)) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;
    defparam i7727_4_lut.init = 16'hc8cc;
    LUT4 i1_4_lut_adj_46 (.A(n14988), .B(num_delay[13]), .C(n16), .D(n14991), 
         .Z(num_delay_15__N_542[13])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/fpga/ds18b20/oled.v(89[8:12])
    defparam i1_4_lut_adj_46.init = 16'hfefa;
    CCU2D add_30_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12638), 
          .COUT(n12639), .S0(n280), .S1(n279));   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam add_30_15.INIT0 = 16'h5aaa;
    defparam add_30_15.INIT1 = 16'h5aaa;
    defparam add_30_15.INJECT1_0 = "NO";
    defparam add_30_15.INJECT1_1 = "NO";
    PFUMX i92_adj_47 (.BLUT(n13888), .ALUT(n13880), .C0(cnt_scan[1]), 
          .Z(n57));
    CCU2D sub_1170_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12654), .COUT(n12655));
    defparam sub_1170_add_2_7.INIT0 = 16'h5999;
    defparam sub_1170_add_2_7.INIT1 = 16'h5999;
    defparam sub_1170_add_2_7.INJECT1_0 = "NO";
    defparam sub_1170_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1170_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12653), .COUT(n12654));
    defparam sub_1170_add_2_5.INIT0 = 16'h5999;
    defparam sub_1170_add_2_5.INIT1 = 16'h5999;
    defparam sub_1170_add_2_5.INJECT1_0 = "NO";
    defparam sub_1170_add_2_5.INJECT1_1 = "NO";
    CCU2D add_30_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12637), 
          .COUT(n12638), .S0(n282), .S1(n281));   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam add_30_13.INIT0 = 16'h5aaa;
    defparam add_30_13.INIT1 = 16'h5aaa;
    defparam add_30_13.INJECT1_0 = "NO";
    defparam add_30_13.INJECT1_1 = "NO";
    LUT4 n1191_bdd_3_lut (.A(n1191), .B(n1569), .C(cnt_scan[0]), .Z(n15491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1191_bdd_3_lut.init = 16'hcaca;
    CCU2D sub_1170_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12652), .COUT(n12653));
    defparam sub_1170_add_2_3.INIT0 = 16'h5999;
    defparam sub_1170_add_2_3.INIT1 = 16'h5999;
    defparam sub_1170_add_2_3.INJECT1_0 = "NO";
    defparam sub_1170_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1170_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n12652));
    defparam sub_1170_add_2_1.INIT0 = 16'h0000;
    defparam sub_1170_add_2_1.INIT1 = 16'h5999;
    defparam sub_1170_add_2_1.INJECT1_0 = "NO";
    defparam sub_1170_add_2_1.INJECT1_1 = "NO";
    LUT4 i4348_4_lut (.A(state[2]), .B(cnt_scan[4]), .C(n8959), .D(n14996), 
         .Z(n27_adj_72)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i4348_4_lut.init = 16'h0111;
    FD1P3IX num_1472__i7 (.D(n38), .SP(clk_c_enable_72), .CD(n9169), .CK(clk_c), 
            .Q(num[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam num_1472__i7.GSR = "ENABLED";
    LUT4 n1191_bdd_3_lut_8597 (.A(n1947), .B(n2325), .C(cnt_scan[0]), 
         .Z(n15490)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1191_bdd_3_lut_8597.init = 16'hcaca;
    LUT4 i1_4_lut_adj_48 (.A(state[0]), .B(num_delay[9]), .C(n16_adj_53), 
         .D(n27), .Z(num_delay_15__N_231[9])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_48.init = 16'hdc50;
    CCU2D num_1472_add_4_9 (.A0(cnt_scan[3]), .B0(n8817), .C0(num[7]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12651), .S0(n38));   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam num_1472_add_4_9.INIT0 = 16'he1e1;
    defparam num_1472_add_4_9.INIT1 = 16'h0000;
    defparam num_1472_add_4_9.INJECT1_0 = "NO";
    defparam num_1472_add_4_9.INJECT1_1 = "NO";
    LUT4 i33_4_lut_adj_49 (.A(num_delay[9]), .B(num_delay_15__N_542[9]), 
         .C(state[2]), .D(n13941), .Z(n16_adj_53)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_49.init = 16'h0aca;
    CCU2D num_1472_add_4_7 (.A0(cnt_scan[3]), .B0(n8817), .C0(num[5]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n8817), .C1(num[6]), .D1(GND_net), 
          .CIN(n12650), .COUT(n12651), .S0(n40), .S1(n39));   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam num_1472_add_4_7.INIT0 = 16'he1e1;
    defparam num_1472_add_4_7.INIT1 = 16'he1e1;
    defparam num_1472_add_4_7.INJECT1_0 = "NO";
    defparam num_1472_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_50 (.A(cnt_init[0]), .B(num_delay[9]), .C(n14969), 
         .D(n14991), .Z(num_delay_15__N_542[9])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_50.init = 16'hcc40;
    LUT4 i1_3_lut_adj_51 (.A(state[2]), .B(state_back[3]), .C(n80), .Z(n6_adj_22)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_51.init = 16'h8080;
    CCU2D num_1472_add_4_5 (.A0(cnt_scan[3]), .B0(n8817), .C0(num[3]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n8817), .C1(num[4]), .D1(GND_net), 
          .CIN(n12649), .COUT(n12650), .S0(n42), .S1(n41));   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam num_1472_add_4_5.INIT0 = 16'he1e1;
    defparam num_1472_add_4_5.INIT1 = 16'he1e1;
    defparam num_1472_add_4_5.INJECT1_0 = "NO";
    defparam num_1472_add_4_5.INJECT1_1 = "NO";
    CCU2D add_30_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12635), 
          .COUT(n12636), .S0(n286), .S1(n285));   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam add_30_9.INIT0 = 16'h5aaa;
    defparam add_30_9.INIT1 = 16'h5aaa;
    defparam add_30_9.INJECT1_0 = "NO";
    defparam add_30_9.INJECT1_1 = "NO";
    CCU2D add_30_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12634), 
          .COUT(n12635), .S0(n288), .S1(n287));   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam add_30_7.INIT0 = 16'h5aaa;
    defparam add_30_7.INIT1 = 16'h5aaa;
    defparam add_30_7.INJECT1_0 = "NO";
    defparam add_30_7.INJECT1_1 = "NO";
    LUT4 i8019_2_lut_2_lut_3_lut_3_lut_4_lut (.A(n14544), .B(char[126]), 
         .C(n2135), .D(num[4]), .Z(n14126)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;
    defparam i8019_2_lut_2_lut_3_lut_3_lut_4_lut.init = 16'hff8f;
    FD1P3AX num_1472__i4 (.D(n51_adj_89), .SP(clk_c_enable_72), .CK(clk_c), 
            .Q(num[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam num_1472__i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_233_3_lut (.A(state[5]), .B(state[4]), .C(state[1]), 
         .Z(n14994)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_233_3_lut.init = 16'hfefe;
    FD1S3AX num_delay_i15 (.D(num_delay_15__N_231[15]), .CK(clk_c), .Q(num_delay[15]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam num_delay_i15.GSR = "ENABLED";
    LUT4 i7716_2_lut (.A(cnt_scan[3]), .B(cnt_scan[0]), .Z(n13970)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i7716_2_lut.init = 16'hbbbb;
    CCU2D num_1472_add_4_3 (.A0(cnt_scan[3]), .B0(n8817), .C0(num[1]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n8817), .C1(num[2]), .D1(GND_net), 
          .CIN(n12648), .COUT(n12649), .S0(n44), .S1(n43));   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam num_1472_add_4_3.INIT0 = 16'he1e1;
    defparam num_1472_add_4_3.INIT1 = 16'he1e1;
    defparam num_1472_add_4_3.INJECT1_0 = "NO";
    defparam num_1472_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_52 (.A(state[0]), .B(num_delay[8]), .C(n16_adj_54), 
         .D(n27), .Z(num_delay_15__N_231[8])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_52.init = 16'hdc50;
    LUT4 i33_4_lut_adj_53 (.A(num_delay[8]), .B(num_delay_15__N_542[8]), 
         .C(state[2]), .D(n13941), .Z(n16_adj_54)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_53.init = 16'h0aca;
    LUT4 i1_4_lut_adj_54 (.A(n14988), .B(num_delay[8]), .C(n16_adj_25), 
         .D(n14991), .Z(num_delay_15__N_542[8])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/fpga/ds18b20/oled.v(89[8:12])
    defparam i1_4_lut_adj_54.init = 16'hfefa;
    LUT4 i1_3_lut_adj_55 (.A(cnt_init[0]), .B(num_delay[8]), .C(n14969), 
         .Z(n16_adj_25)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_55.init = 16'h4040;
    LUT4 n13819_bdd_3_lut (.A(n14988), .B(state[5]), .C(state[4]), .Z(n15484)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n13819_bdd_3_lut.init = 16'h0202;
    FD1P3IX cnt_init_i0_i4 (.D(n242), .SP(clk_c_enable_71), .CD(n9165), 
            .CK(clk_c), .Q(cnt_init[4]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_init_i0_i4.GSR = "ENABLED";
    LUT4 n13976_bdd_4_lut (.A(state[0]), .B(state[4]), .C(state[3]), .D(state[2]), 
         .Z(n14613)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam n13976_bdd_4_lut.init = 16'h0116;
    CCU2D num_1472_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n8817), .C1(num[0]), .D1(GND_net), 
          .COUT(n12648), .S1(n45_adj_88));   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam num_1472_add_4_1.INIT0 = 16'hF000;
    defparam num_1472_add_4_1.INIT1 = 16'he1e1;
    defparam num_1472_add_4_1.INJECT1_0 = "NO";
    defparam num_1472_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_56 (.A(n14544), .B(char[126]), .C(n2130), 
         .Z(n9058)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_adj_56.init = 16'hf8f8;
    LUT4 i1_4_lut_adj_57 (.A(state[0]), .B(num_delay[7]), .C(n16_adj_55), 
         .D(n27), .Z(num_delay_15__N_231[7])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_57.init = 16'hdc50;
    LUT4 i33_4_lut_adj_58 (.A(num_delay[7]), .B(num_delay_15__N_542[7]), 
         .C(state[2]), .D(n13941), .Z(n16_adj_55)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_58.init = 16'h0aca;
    LUT4 i2_4_lut_adj_59 (.A(cnt_init[0]), .B(n4_adj_98), .C(num_delay[7]), 
         .D(n14969), .Z(num_delay_15__N_542[7])) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(89[8:12])
    defparam i2_4_lut_adj_59.init = 16'hdccc;
    LUT4 i4550_3_lut_rep_238 (.A(cnt_write[0]), .B(cnt_write[4]), .C(n13819), 
         .Z(n14999)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i4550_3_lut_rep_238.init = 16'hc8c8;
    FD1S3AX num_delay_i14 (.D(num_delay_15__N_231[14]), .CK(clk_c), .Q(num_delay[14]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam num_delay_i14.GSR = "ENABLED";
    FD1S3AX num_delay_i13 (.D(num_delay_15__N_231[13]), .CK(clk_c), .Q(num_delay[13]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam num_delay_i13.GSR = "ENABLED";
    FD1S3AX num_delay_i12 (.D(num_delay_15__N_231[12]), .CK(clk_c), .Q(num_delay[12]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam num_delay_i12.GSR = "ENABLED";
    FD1S3AX num_delay_i11 (.D(num_delay_15__N_231[11]), .CK(clk_c), .Q(num_delay[11]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam num_delay_i11.GSR = "ENABLED";
    FD1S3AX num_delay_i10 (.D(num_delay_15__N_231[10]), .CK(clk_c), .Q(num_delay[10]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam num_delay_i10.GSR = "ENABLED";
    FD1S3AX num_delay_i9 (.D(num_delay_15__N_231[9]), .CK(clk_c), .Q(num_delay[9]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam num_delay_i9.GSR = "ENABLED";
    FD1S3AX num_delay_i8 (.D(num_delay_15__N_231[8]), .CK(clk_c), .Q(num_delay[8]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam num_delay_i8.GSR = "ENABLED";
    FD1S3AX num_delay_i7 (.D(num_delay_15__N_231[7]), .CK(clk_c), .Q(num_delay[7]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam num_delay_i7.GSR = "ENABLED";
    FD1S3AX num_delay_i6 (.D(num_delay_15__N_231[6]), .CK(clk_c), .Q(num_delay[6]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam num_delay_i6.GSR = "ENABLED";
    FD1S3AX num_delay_i5 (.D(num_delay_15__N_231[5]), .CK(clk_c), .Q(num_delay[5]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam num_delay_i5.GSR = "ENABLED";
    FD1S3AX num_delay_i4 (.D(num_delay_15__N_231[4]), .CK(clk_c), .Q(num_delay[4]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam num_delay_i4.GSR = "ENABLED";
    FD1S3AX num_delay_i3 (.D(num_delay_15__N_231[3]), .CK(clk_c), .Q(num_delay[3]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam num_delay_i3.GSR = "ENABLED";
    FD1S3AY num_delay_i2 (.D(num_delay_15__N_231[2]), .CK(clk_c), .Q(num_delay[2]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam num_delay_i2.GSR = "ENABLED";
    FD1S3AX num_delay_i1 (.D(num_delay_15__N_231[1]), .CK(clk_c), .Q(num_delay[1]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam num_delay_i1.GSR = "ENABLED";
    FD1P3IX num_1472__i2 (.D(n43), .SP(clk_c_enable_72), .CD(n9169), .CK(clk_c), 
            .Q(num[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam num_1472__i2.GSR = "ENABLED";
    LUT4 n76_bdd_4_lut_8082 (.A(n76), .B(state_back[2]), .C(state[5]), 
         .D(state[2]), .Z(n14455)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n76_bdd_4_lut_8082.init = 16'h0ac0;
    LUT4 i7988_4_lut (.A(n50), .B(n14200), .C(n15023), .D(n15022), .Z(n42_adj_74)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i7988_4_lut.init = 16'hccc4;
    FD1S3AX state_back_i5 (.D(state_back_5__N_285[5]), .CK(clk_c), .Q(state_back[5]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam state_back_i5.GSR = "ENABLED";
    FD1S3AX state_back_i4 (.D(state_back_5__N_285[4]), .CK(clk_c), .Q(state_back[4]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam state_back_i4.GSR = "ENABLED";
    FD1S3AX state_back_i3 (.D(state_back_5__N_285[3]), .CK(clk_c), .Q(state_back[3]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam state_back_i3.GSR = "ENABLED";
    FD1S3AX state_back_i2 (.D(state_back_5__N_285[2]), .CK(clk_c), .Q(state_back[2]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam state_back_i2.GSR = "ENABLED";
    FD1S3AX state_back_i1 (.D(state_back_5__N_285[1]), .CK(clk_c), .Q(state_back[1]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam state_back_i1.GSR = "ENABLED";
    FD1S3AX char_reg_i7 (.D(char_reg_7__N_203[7]), .CK(clk_c), .Q(char_reg[7]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam char_reg_i7.GSR = "ENABLED";
    FD1S3AX char_reg_i6 (.D(char_reg_7__N_203[6]), .CK(clk_c), .Q(char_reg[6]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam char_reg_i6.GSR = "ENABLED";
    FD1S3AX char_reg_i5 (.D(char_reg_7__N_203[5]), .CK(clk_c), .Q(char_reg[5]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam char_reg_i5.GSR = "ENABLED";
    FD1S3AX char_reg_i4 (.D(char_reg_7__N_203[4]), .CK(clk_c), .Q(char_reg[4]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam char_reg_i4.GSR = "ENABLED";
    FD1S3AX char_reg_i3 (.D(char_reg_7__N_203[3]), .CK(clk_c), .Q(char_reg[3]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam char_reg_i3.GSR = "ENABLED";
    FD1S3AX char_reg_i2 (.D(char_reg_7__N_203[2]), .CK(clk_c), .Q(char_reg[2]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam char_reg_i2.GSR = "ENABLED";
    FD1S3AX char_reg_i1 (.D(char_reg_7__N_203[1]), .CK(clk_c), .Q(char_reg[1]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam char_reg_i1.GSR = "ENABLED";
    FD1P3AX state_i0_i1 (.D(n14639), .SP(clk_c_enable_73), .CK(clk_c), 
            .Q(state[1]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam state_i0_i1.GSR = "ENABLED";
    LUT4 i7987_4_lut (.A(n15020), .B(n15015), .C(n15500), .D(n15023), 
         .Z(n14200)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B+!(C))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i7987_4_lut.init = 16'hcfcd;
    LUT4 i1_2_lut_4_lut_rep_239 (.A(cnt_write[0]), .B(cnt_write[4]), .C(n13819), 
         .D(state[4]), .Z(n15000)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B !(D)))) */ ;
    defparam i1_2_lut_4_lut_rep_239.init = 16'h3700;
    FD1S3AX y_p_i7 (.D(y_p_7__N_1[7]), .CK(clk_c), .Q(y_p[7]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam y_p_i7.GSR = "ENABLED";
    FD1S3AX y_p_i5 (.D(y_p_7__N_1[5]), .CK(clk_c), .Q(y_p[5]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam y_p_i5.GSR = "ENABLED";
    FD1S3AX y_p_i4 (.D(y_p_7__N_1[4]), .CK(clk_c), .Q(y_p[4]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam y_p_i4.GSR = "ENABLED";
    FD1S3AX y_p_i1 (.D(y_p_7__N_1[1]), .CK(clk_c), .Q(y_p[1]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam y_p_i1.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i6 (.D(n2414), .SP(clk_c_enable_79), .CD(n9152), 
            .CK(clk_c), .Q(cnt_delay[6]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i12 (.D(n2408), .SP(clk_c_enable_79), .CD(n9152), 
            .CK(clk_c), .Q(cnt_delay[12]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    FD1P3AX char__i54 (.D(n14985), .SP(clk_c_enable_76), .CK(clk_c), .Q(char[126]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam char__i54.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_60 (.A(cnt_write[0]), .B(cnt_write[4]), .C(n13819), 
         .D(state[4]), .Z(n13894)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B !(C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_60.init = 16'h3600;
    LUT4 i1_4_lut_adj_61 (.A(state[0]), .B(num_delay[6]), .C(n16_adj_56), 
         .D(n27), .Z(num_delay_15__N_231[6])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_61.init = 16'hdc50;
    LUT4 i33_4_lut_adj_62 (.A(num_delay[6]), .B(num_delay_15__N_542[6]), 
         .C(state[2]), .D(n13941), .Z(n16_adj_56)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_62.init = 16'h0aca;
    PFUMX i8047 (.BLUT(n14475), .ALUT(n14158), .C0(cnt_scan[1]), .Z(n14476));
    PFUMX i47_adj_63 (.BLUT(n6_adj_37), .ALUT(n12_adj_36), .C0(state[3]), 
          .Z(n24_adj_38));
    FD1P3AX x_ph_i0_i4 (.D(n13901), .SP(clk_c_enable_77), .CK(clk_c), 
            .Q(x_ph[4]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam x_ph_i0_i4.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_64 (.A(cnt_init[0]), .B(num_delay[6]), .C(n14969), 
         .D(n14991), .Z(num_delay_15__N_542[6])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_64.init = 16'hcc40;
    LUT4 i1_4_lut_4_lut_adj_65 (.A(state[2]), .B(n4171), .C(n15177), .D(char_reg[6]), 
         .Z(n12_adj_36)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i1_4_lut_4_lut_adj_65.init = 16'h5450;
    LUT4 i2_4_lut_4_lut (.A(n15019), .B(n26), .C(state[1]), .D(n14992), 
         .Z(n13901)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_4_lut_4_lut_adj_66 (.A(n15019), .B(state[3]), .C(n14999), 
         .D(state[1]), .Z(n13902)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_66.init = 16'h0100;
    LUT4 i1_4_lut_adj_67 (.A(state[0]), .B(num_delay[5]), .C(n16_adj_64), 
         .D(n27), .Z(num_delay_15__N_231[5])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_67.init = 16'hdc50;
    LUT4 n15488_bdd_2_lut_4_lut (.A(n15487), .B(n15484), .C(state[2]), 
         .D(state[3]), .Z(n15489)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n15488_bdd_2_lut_4_lut.init = 16'h00ca;
    LUT4 n14483_bdd_3_lut_else_4_lut (.A(cnt[3]), .B(cnt[1]), .C(cnt[2]), 
         .D(cnt[4]), .Z(n15032)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C)+!B (D)))) */ ;
    defparam n14483_bdd_3_lut_else_4_lut.init = 16'h53e8;
    LUT4 i7748_2_lut_3_lut (.A(n2131), .B(num[4]), .C(n2130), .Z(n14016)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i7748_2_lut_3_lut.init = 16'h2020;
    LUT4 i7865_3_lut (.A(char_reg[7]), .B(char_reg[6]), .C(cnt_write[1]), 
         .Z(n14138)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7865_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_4_lut (.A(num[4]), .B(n2132), .C(n2131), .D(n2130), 
         .Z(n8363)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/fpga/ds18b20/oled.v(118[51:79])
    defparam i3_4_lut_4_lut.init = 16'hfffb;
    LUT4 i2_3_lut_4_lut_adj_68 (.A(cnt_scan[4]), .B(n14996), .C(n8959), 
         .D(n15015), .Z(n13891)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i2_3_lut_4_lut_adj_68.init = 16'h0004;
    LUT4 i20_4_lut_4_lut (.A(state[2]), .B(n4171), .C(n80), .D(state[3]), 
         .Z(n8)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (D)))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i20_4_lut_4_lut.init = 16'h44a0;
    LUT4 i7863_4_lut_4_lut_4_lut (.A(num[3]), .B(char[126]), .C(num[2]), 
         .D(char[16]), .Z(n14136)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam i7863_4_lut_4_lut_4_lut.init = 16'h4d48;
    LUT4 i33_4_lut_adj_69 (.A(num_delay[5]), .B(num_delay_15__N_542[5]), 
         .C(state[2]), .D(n13941), .Z(n16_adj_64)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_69.init = 16'h0aca;
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_init[0]), .B(n15003), .C(oled_dcn_N_650), 
         .D(n14989), .Z(n76)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h5111;
    PFUMX i8045 (.BLUT(n14_adj_17), .ALUT(n14473), .C0(cnt[4]), .Z(n14474));
    FD1P3IX cnt_delay_i0_i13 (.D(n2407), .SP(clk_c_enable_79), .CD(n9152), 
            .CK(clk_c), .Q(cnt_delay[13]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_70 (.A(cnt_init[0]), .B(cnt_init[1]), .Z(n4)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_70.init = 16'h4444;
    FD1P3IX cnt_delay_i0_i14 (.D(n2406), .SP(clk_c_enable_79), .CD(n9152), 
            .CK(clk_c), .Q(cnt_delay[14]));   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_71 (.A(n14988), .B(n16_adj_26), .C(num_delay[5]), 
         .D(n14991), .Z(num_delay_15__N_542[5])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(89[8:12])
    defparam i1_4_lut_adj_71.init = 16'hfeee;
    LUT4 i1_3_lut_adj_72 (.A(cnt_init[0]), .B(num_delay[5]), .C(n14969), 
         .Z(n16_adj_26)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_72.init = 16'h4040;
    LUT4 n13819_bdd_2_lut (.A(state_back[5]), .B(state[4]), .Z(n15485)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n13819_bdd_2_lut.init = 16'h2222;
    PFUMX i47_adj_73 (.BLUT(n6_adj_11), .ALUT(n13897), .C0(state[3]), 
          .Z(n24_adj_10));
    LUT4 n76_bdd_3_lut_8081_4_lut (.A(n15006), .B(cnt_main[2]), .C(state[2]), 
         .D(state[5]), .Z(n14454)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/fpga/ds18b20/oled.v(70[8:12])
    defparam n76_bdd_3_lut_8081_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_adj_74 (.A(state[2]), .B(n14988), .C(n19), .D(n16_adj_47), 
         .Z(n6_adj_11)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_74.init = 16'haaa8;
    LUT4 i1_4_lut_adj_75 (.A(state[0]), .B(num_delay[4]), .C(n16_adj_27), 
         .D(n27), .Z(num_delay_15__N_231[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_75.init = 16'hdc50;
    LUT4 i33_4_lut_adj_76 (.A(num_delay[4]), .B(num_delay_15__N_542[4]), 
         .C(state[2]), .D(n13941), .Z(n16_adj_27)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_76.init = 16'h0aca;
    LUT4 i4438_2_lut (.A(n282), .B(oled_dcn_N_650), .Z(n308)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam i4438_2_lut.init = 16'h2222;
    PFUMX i8147 (.BLUT(n14637), .ALUT(n14636), .C0(n14090), .Z(n14638));
    LUT4 i1_4_lut_adj_77 (.A(cnt_init[0]), .B(num_delay[4]), .C(n14969), 
         .D(n14991), .Z(num_delay_15__N_542[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_77.init = 16'hcc40;
    LUT4 n13819_bdd_4_lut (.A(n13819), .B(state[4]), .C(cnt_write[0]), 
         .D(cnt_write[4]), .Z(n15486)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam n13819_bdd_4_lut.init = 16'h4000;
    LUT4 n11_bdd_4_lut_8146 (.A(n14962), .B(n30), .C(n15007), .D(state[5]), 
         .Z(n14636)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam n11_bdd_4_lut_8146.init = 16'hc0aa;
    LUT4 n27_bdd_4_lut (.A(n15009), .B(cnt_init[2]), .C(state[2]), .D(cnt_init[1]), 
         .Z(n15497)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C)))) */ ;
    defparam n27_bdd_4_lut.init = 16'h1050;
    PFUMX i90 (.BLUT(n8179), .ALUT(n51), .C0(cnt_scan[1]), .Z(n60));
    LUT4 i1_4_lut_adj_78 (.A(state[0]), .B(num_delay[3]), .C(n16_adj_28), 
         .D(n27), .Z(num_delay_15__N_231[3])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_78.init = 16'hdc50;
    LUT4 n14638_bdd_2_lut (.A(n14638), .B(state[1]), .Z(n14639)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n14638_bdd_2_lut.init = 16'h2222;
    LUT4 i33_4_lut_adj_79 (.A(num_delay[3]), .B(n13941), .C(state[2]), 
         .D(n13825), .Z(n16_adj_28)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i33_4_lut_adj_79.init = 16'h3a0a;
    PFUMX i47_adj_80 (.BLUT(n6_adj_8), .ALUT(n13896), .C0(state[3]), .Z(n24_adj_7));
    LUT4 i1_4_lut_adj_81 (.A(n14988), .B(num_delay[3]), .C(n16_adj_18), 
         .D(n14991), .Z(n13825)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/fpga/ds18b20/oled.v(89[8:12])
    defparam i1_4_lut_adj_81.init = 16'hfefa;
    PFUMX i8595 (.BLUT(n15486), .ALUT(n15485), .C0(state[5]), .Z(n15487));
    LUT4 n15108_bdd_3_lut_4_lut (.A(n15107), .B(cnt_scan[2]), .C(cnt_scan[0]), 
         .D(n15106), .Z(n15109)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam n15108_bdd_3_lut_4_lut.init = 16'hf202;
    LUT4 n15175_bdd_3_lut_4_lut (.A(n15174), .B(cnt_scan[2]), .C(cnt_scan[0]), 
         .D(n15173), .Z(n15176)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam n15175_bdd_3_lut_4_lut.init = 16'hf202;
    PFUMX i47_adj_82 (.BLUT(n6_adj_22), .ALUT(n12_adj_21), .C0(state[3]), 
          .Z(n24_adj_23));
    TSALL TSALL_INST (.TSALL(GND_net));
    PFUMX i47_adj_83 (.BLUT(n6_adj_33), .ALUT(n13898), .C0(state[3]), 
          .Z(n24_adj_34));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i4319_2_lut_rep_254 (.A(state[5]), .B(state[4]), .Z(n15015)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4319_2_lut_rep_254.init = 16'heeee;
    LUT4 i1_4_lut_adj_84 (.A(n6735), .B(n7552), .C(n13859), .D(n14983), 
         .Z(clk_c_enable_22)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_84.init = 16'ha088;
    PFUMX i31 (.BLUT(n17), .ALUT(n14), .C0(n14094), .Z(n13103));
    LUT4 i2_4_lut_adj_85 (.A(n13819), .B(cnt_write[0]), .C(cnt_write[4]), 
         .D(state[4]), .Z(n13723)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i2_4_lut_adj_85.init = 16'h1200;
    PFUMX i8598 (.BLUT(n15491), .ALUT(n15490), .C0(cnt_scan[1]), .Z(n15492));
    LUT4 i1_2_lut_rep_225_4_lut (.A(n15009), .B(cnt_init[1]), .C(cnt_init[2]), 
         .D(cnt_init[0]), .Z(n14986)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam i1_2_lut_rep_225_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_4_lut_adj_86 (.A(n15009), .B(cnt_init[1]), .C(cnt_init[2]), 
         .D(cnt_init[0]), .Z(n13955)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam i1_2_lut_4_lut_adj_86.init = 16'h1000;
    LUT4 i2_4_lut_4_lut_3_lut (.A(cnt_main[1]), .B(cnt_main[2]), .C(cnt_main[0]), 
         .Z(n13922)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i2_4_lut_4_lut_3_lut.init = 16'h0101;
    LUT4 i1_3_lut_adj_87 (.A(cnt_init[0]), .B(num_delay[3]), .C(n14969), 
         .Z(n16_adj_18)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_87.init = 16'h4040;
    PFUMX i8121 (.BLUT(n14590), .ALUT(n14589), .C0(cnt[0]), .Z(n14591));
    LUT4 n15499_bdd_2_lut (.A(n15612), .B(state[1]), .Z(n15500)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n15499_bdd_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_88 (.A(n15009), .B(cnt_init[2]), .C(state[4]), 
         .D(cnt_init[0]), .Z(n6_adj_6)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam i1_2_lut_3_lut_4_lut_adj_88.init = 16'h0010;
    LUT4 i2_3_lut_4_lut_adj_89 (.A(state[2]), .B(n14992), .C(state[1]), 
         .D(state[0]), .Z(n11_adj_2)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/fpga/ds18b20/oled.v(66[5:9])
    defparam i2_3_lut_4_lut_adj_89.init = 16'hffef;
    LUT4 i1_2_lut_2_lut_then_4_lut (.A(cnt_scan[2]), .B(n1948), .C(n2326), 
         .D(cnt_scan[0]), .Z(n15037)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/fpga/ds18b20/oled.v(123[8:13])
    defparam i1_2_lut_2_lut_then_4_lut.init = 16'h5044;
    LUT4 n14158_bdd_3_lut_8138 (.A(n1571), .B(n1193), .C(cnt_scan[0]), 
         .Z(n14475)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n14158_bdd_3_lut_8138.init = 16'hacac;
    L6MUX21 i31_adj_90 (.D0(n13), .D1(n16_adj_19), .SD(n14126), .Z(n9820));
    LUT4 i8000_4_lut (.A(state[0]), .B(num_delay[2]), .C(n24_adj_29), 
         .D(n27), .Z(num_delay_15__N_231[2])) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (C+(D)))) */ ;
    defparam i8000_4_lut.init = 16'h8caf;
    LUT4 i41_4_lut (.A(num_delay[2]), .B(n13941), .C(state[2]), .D(n13840), 
         .Z(n24_adj_29)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i41_4_lut.init = 16'h3505;
    PFUMX i92_adj_91 (.BLUT(n13887), .ALUT(n13911), .C0(cnt_scan[1]), 
          .Z(n57_adj_82));
    LUT4 i4429_2_lut (.A(n281), .B(oled_dcn_N_650), .Z(n307)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam i4429_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_92 (.A(cnt_init[0]), .B(num_delay[2]), .C(n15_adj_50), 
         .D(n14991), .Z(n13840)) /* synthesis lut_function=(!(A (B (D))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_92.init = 16'h23af;
    PFUMX i8600 (.BLUT(n15495), .ALUT(n15493), .C0(cnt_scan[3]), .Z(n15496));
    LUT4 i3_2_lut_rep_244 (.A(state[1]), .B(state[0]), .Z(n15005)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i3_2_lut_rep_244.init = 16'h2222;
    LUT4 i1_4_lut_adj_93 (.A(state[0]), .B(num_delay[1]), .C(n16_adj_30), 
         .D(n27), .Z(num_delay_15__N_231[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_93.init = 16'hdc50;
    LUT4 i7833_3_lut_4_lut (.A(oled_dcn_N_650), .B(n14986), .C(cnt[3]), 
         .D(cnt[4]), .Z(n14106)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/fpga/ds18b20/oled.v(85[7] 101[14])
    defparam i7833_3_lut_4_lut.init = 16'h0010;
    LUT4 i33_4_lut_adj_94 (.A(num_delay[1]), .B(num_delay_15__N_542[1]), 
         .C(state[2]), .D(n13941), .Z(n16_adj_30)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_94.init = 16'h0aca;
    LUT4 i1_4_lut_adj_95 (.A(cnt_init[0]), .B(num_delay[1]), .C(n14969), 
         .D(n14991), .Z(num_delay_15__N_542[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_95.init = 16'hcc40;
    LUT4 i2_3_lut_4_lut_adj_96 (.A(state[1]), .B(state[0]), .C(n15006), 
         .D(cnt_main[2]), .Z(n14_adj_24)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_96.init = 16'h2000;
    LUT4 i1_4_lut_adj_97 (.A(n24_adj_34), .B(state_back[5]), .C(n14995), 
         .D(n27_adj_58), .Z(state_back_5__N_285[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_97.init = 16'hce0a;
    LUT4 i1_4_lut_adj_98 (.A(state_back[4]), .B(n27_adj_58), .C(n14995), 
         .D(n8), .Z(state_back_5__N_285[4])) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // c:/fpga/ds18b20/oled.v(46[13:18])
    defparam i1_4_lut_adj_98.init = 16'h8a88;
    LUT4 i1_4_lut_adj_99 (.A(n7554), .B(cnt_init[0]), .C(cnt_init[1]), 
         .D(cnt_init[2]), .Z(n13859)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_99.init = 16'h2022;
    LUT4 mux_366_Mux_2_i22_4_lut_3_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), 
         .Z(n22)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;   // c:/fpga/ds18b20/oled.v(94[20] 97[14])
    defparam mux_366_Mux_2_i22_4_lut_3_lut.init = 16'h9898;
    LUT4 equal_8_i6_2_lut_rep_245 (.A(cnt_main[0]), .B(cnt_main[1]), .Z(n15006)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/oled.v(70[8:12])
    defparam equal_8_i6_2_lut_rep_245.init = 16'heeee;
    LUT4 i1_2_lut_rep_221_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(state[1]), 
         .D(state[3]), .Z(n14982)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_221_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_100 (.A(n24_adj_23), .B(state_back[3]), .C(n14995), 
         .D(n27_adj_58), .Z(state_back_5__N_285[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_100.init = 16'hce0a;
    LUT4 i1_3_lut_rep_209_4_lut (.A(state[2]), .B(n14992), .C(state[0]), 
         .D(state[1]), .Z(n14970)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(66[5:9])
    defparam i1_3_lut_rep_209_4_lut.init = 16'hfeee;
    LUT4 i1_4_lut_adj_101 (.A(n24_adj_10), .B(state_back[2]), .C(n14995), 
         .D(n27_adj_58), .Z(state_back_5__N_285[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_101.init = 16'hce0a;
    LUT4 i2_4_lut_adj_102 (.A(n14993), .B(n14982), .C(state[2]), .D(n50_adj_86), 
         .Z(clk_c_enable_71)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i2_4_lut_adj_102.init = 16'h2202;
    LUT4 i1_4_lut_adj_103 (.A(state[0]), .B(n13941), .C(state[2]), .D(state_back_5__N_620[1]), 
         .Z(n8924)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_103.init = 16'h1202;
    LUT4 i1_4_lut_adj_104 (.A(state_back[1]), .B(n15022), .C(n24_adj_9), 
         .D(n15015), .Z(n35)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_104.init = 16'haaa8;
    LUT4 i50_4_lut (.A(state_back[1]), .B(n4171), .C(state[3]), .D(n14995), 
         .Z(n31)) /* synthesis lut_function=(!((B (C (D))+!B (C))+!A)) */ ;
    defparam i50_4_lut.init = 16'h0a8a;
    LUT4 i1_4_lut_adj_105 (.A(cnt_init[0]), .B(state_back[1]), .C(n14969), 
         .D(n14991), .Z(state_back_5__N_620[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_105.init = 16'hcc40;
    PFUMX i33 (.BLUT(n16_adj_100), .ALUT(n14054), .C0(num[2]), .Z(n2131));
    LUT4 equal_8_i9_2_lut_rep_240_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), 
         .C(cnt_main[2]), .Z(n15001)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/fpga/ds18b20/oled.v(70[8:12])
    defparam equal_8_i9_2_lut_rep_240_3_lut.init = 16'hfefe;
    LUT4 i20_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(state[0]), 
         .D(state[1]), .Z(n7_adj_96)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/fpga/ds18b20/oled.v(70[8:12])
    defparam i20_3_lut_4_lut.init = 16'h0ef0;
    LUT4 i1_4_lut_adj_106 (.A(n24_adj_69), .B(char_reg[0]), .C(n14995), 
         .D(n27_adj_58), .Z(char_reg_7__N_203[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_106.init = 16'hce0a;
    LUT4 i1_2_lut_2_lut_else_4_lut (.A(cnt_scan[2]), .B(n1570), .C(n1192), 
         .D(cnt_scan[0]), .Z(n15036)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/fpga/ds18b20/oled.v(123[8:13])
    defparam i1_2_lut_2_lut_else_4_lut.init = 16'h4450;
    LUT4 i2_4_lut_adj_107 (.A(n14994), .B(n15019), .C(n13_adj_51), .D(state[3]), 
         .Z(n27_adj_58)) /* synthesis lut_function=(A+(B (C+(D))+!B (C+!(D)))) */ ;
    defparam i2_4_lut_adj_107.init = 16'hfefb;
    LUT4 i1_2_lut_adj_108 (.A(state[2]), .B(state[0]), .Z(n13_adj_51)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_108.init = 16'h8888;
    LUT4 i1_4_lut_adj_109 (.A(n24_adj_7), .B(state_back[0]), .C(n14995), 
         .D(n27_adj_58), .Z(state_back_5__N_285[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_109.init = 16'hce0a;
    LUT4 i1_2_lut_adj_110 (.A(state[3]), .B(state[2]), .Z(n24_adj_9)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_110.init = 16'h8888;
    PFUMX i32 (.BLUT(n7), .ALUT(n13823), .C0(n14125), .Z(n16_adj_19));
    LUT4 i1_4_lut_adj_111 (.A(state[0]), .B(n41_adj_85), .C(n14968), .D(n46), 
         .Z(n50_adj_86)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_111.init = 16'h5444;
    LUT4 i5_4_lut_adj_112 (.A(state[0]), .B(n14069), .C(n12_adj_90), .D(state[4]), 
         .Z(clk_c_enable_10)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i5_4_lut_adj_112.init = 16'h1020;
    LUT4 i1_2_lut_adj_113 (.A(state[2]), .B(char_reg_7__N_526[5]), .Z(n6_adj_40)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_113.init = 16'h8888;
    LUT4 i3_4_lut_adj_114 (.A(cnt_init[0]), .B(cnt_init[2]), .C(cnt_init[1]), 
         .D(n15009), .Z(n41_adj_85)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_114.init = 16'h0008;
    LUT4 cnt_1__bdd_3_lut_8371 (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), .Z(n14692)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;
    defparam cnt_1__bdd_3_lut_8371.init = 16'h2c2c;
    LUT4 i23_4_lut_adj_115 (.A(n7_adj_93), .B(state[0]), .C(n14984), .D(n8_adj_91), 
         .Z(n12_adj_90)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i23_4_lut_adj_115.init = 16'hcac0;
    LUT4 i3960_4_lut (.A(n442), .B(n14976), .C(n14990), .D(n455), .Z(cnt_scan_4__N_308[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i3960_4_lut.init = 16'hca0a;
    LUT4 i2_3_lut_adj_116 (.A(cnt_write[2]), .B(cnt_write[4]), .C(cnt_write[0]), 
         .Z(n7_adj_93)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;
    defparam i2_3_lut_adj_116.init = 16'h4141;
    LUT4 i3_3_lut (.A(cnt_write[1]), .B(state[4]), .C(cnt_write[3]), .Z(n8_adj_91)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i3_3_lut.init = 16'h0404;
    LUT4 mux_975_i1_4_lut (.A(state[4]), .B(state[0]), .C(n14984), .D(cnt_write[4]), 
         .Z(n6658)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam mux_975_i1_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_117 (.A(n24), .B(char_reg[7]), .C(n14995), .D(n27_adj_58), 
         .Z(char_reg_7__N_203[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_117.init = 16'hce0a;
    LUT4 i7992_2_lut_rep_246 (.A(state[4]), .B(state[3]), .Z(n15007)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7992_2_lut_rep_246.init = 16'h1111;
    LUT4 n3443_bdd_2_lut_8039_3_lut (.A(state[4]), .B(state[3]), .C(n14456), 
         .Z(n14457)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n3443_bdd_2_lut_8039_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_247 (.A(cnt_init[1]), .B(cnt_init[2]), .Z(n15008)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam i1_2_lut_rep_247.init = 16'h4444;
    LUT4 i1_4_lut_adj_118 (.A(n24_adj_38), .B(char_reg[6]), .C(n14995), 
         .D(n27_adj_58), .Z(char_reg_7__N_203[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_118.init = 16'hce0a;
    LUT4 i1750_2_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n455)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/ds18b20/oled.v(108[24:39])
    defparam i1750_2_lut.init = 16'h6666;
    LUT4 i69_3_lut (.A(cnt_init[0]), .B(cnt_init[2]), .C(cnt_init[1]), 
         .Z(n52)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C)))) */ ;
    defparam i69_3_lut.init = 16'h3d3d;
    LUT4 i1_4_lut_adj_119 (.A(n24_adj_41), .B(char_reg[5]), .C(n14995), 
         .D(n27_adj_58), .Z(char_reg_7__N_203[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_119.init = 16'hce0a;
    LUT4 i1_4_lut_adj_120 (.A(n24_adj_44), .B(char_reg[4]), .C(n14995), 
         .D(n27_adj_58), .Z(char_reg_7__N_203[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_120.init = 16'hce0a;
    LUT4 i1_4_lut_adj_121 (.A(n24_adj_13), .B(char_reg[3]), .C(n14995), 
         .D(n27_adj_58), .Z(char_reg_7__N_203[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_121.init = 16'hce0a;
    LUT4 i73_2_lut (.A(state[2]), .B(state[3]), .Z(n10_adj_4)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i73_2_lut.init = 16'h6666;
    LUT4 i7_4_lut_adj_122 (.A(num[0]), .B(n14_adj_20), .C(n10_adj_71), 
         .D(num[6]), .Z(n442)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/oled.v(118[59:71])
    defparam i7_4_lut_adj_122.init = 16'hfffe;
    LUT4 i1_3_lut_rep_208_3_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[2]), 
         .C(oled_dcn_N_650), .D(n15009), .Z(n14969)) /* synthesis lut_function=(A+!(B ((D)+!C))) */ ;   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam i1_3_lut_rep_208_3_lut_4_lut.init = 16'hbbfb;
    LUT4 i1_4_lut_adj_123 (.A(n24_adj_16), .B(char_reg[2]), .C(n14995), 
         .D(n27_adj_58), .Z(char_reg_7__N_203[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_123.init = 16'hce0a;
    LUT4 i1_4_lut_adj_124 (.A(n24_adj_67), .B(char_reg[1]), .C(n14995), 
         .D(n27_adj_58), .Z(char_reg_7__N_203[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_124.init = 16'hce0a;
    LUT4 cnt_init_4__I_0_339_i7_2_lut_rep_248 (.A(cnt_init[3]), .B(cnt_init[4]), 
         .Z(n15009)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/oled.v(99[8:12])
    defparam cnt_init_4__I_0_339_i7_2_lut_rep_248.init = 16'heeee;
    LUT4 i1_4_lut_adj_125 (.A(n6735), .B(n7552), .C(n13633), .D(n14983), 
         .Z(clk_c_enable_11)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_125.init = 16'h0a88;
    PFUMX i8340 (.BLUT(n15032), .ALUT(n15033), .C0(cnt[0]), .Z(n15034));
    LUT4 mux_366_Mux_1_i31_3_lut_4_lut (.A(oled_dcn_N_650), .B(n14986), 
         .C(char_reg[1]), .D(n14487), .Z(n3780)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/fpga/ds18b20/oled.v(85[7] 101[14])
    defparam mux_366_Mux_1_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i4_2_lut_rep_228_3_lut_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[2]), .D(cnt_init[1]), .Z(n14989)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/fpga/ds18b20/oled.v(99[8:12])
    defparam i4_2_lut_rep_228_3_lut_4_lut.init = 16'h0010;
    LUT4 i24_4_lut (.A(cnt_scan[4]), .B(n14968), .C(state[2]), .D(n18), 
         .Z(n13633)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i24_4_lut.init = 16'hcfca;
    LUT4 i1_3_lut_rep_230_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[0]), 
         .D(cnt_init[2]), .Z(n14991)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(99[8:12])
    defparam i1_3_lut_rep_230_4_lut.init = 16'hfeee;
    LUT4 i2_3_lut_rep_241_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[2]), 
         .D(cnt_init[1]), .Z(n15002)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/fpga/ds18b20/oled.v(99[8:12])
    defparam i2_3_lut_rep_241_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_242_3_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[2]), 
         .Z(n15003)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/fpga/ds18b20/oled.v(99[8:12])
    defparam i1_2_lut_rep_242_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_126 (.A(state[0]), .B(y_p[7]), .C(n16_adj_45), .D(n14970), 
         .Z(y_p_7__N_1[7])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_126.init = 16'hdc50;
    LUT4 i33_4_lut_adj_127 (.A(y_p[7]), .B(n14997), .C(state[1]), .D(n13818), 
         .Z(n16_adj_45)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i33_4_lut_adj_127.init = 16'h3a0a;
    LUT4 i7995_2_lut_rep_227_3_lut_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), 
         .C(cnt_init[0]), .D(cnt_init[2]), .Z(n14988)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/fpga/ds18b20/oled.v(99[8:12])
    defparam i7995_2_lut_rep_227_3_lut_4_lut.init = 16'h0010;
    LUT4 mux_366_Mux_3_i30_4_lut_3_lut_4_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[3]), 
         .D(cnt[0]), .Z(n10837)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam mux_366_Mux_3_i30_4_lut_3_lut_4_lut.init = 16'hfee0;
    LUT4 n14479_bdd_2_lut (.A(n14479), .B(cnt_scan[4]), .Z(n14480)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n14479_bdd_2_lut.init = 16'h2222;
    LUT4 n811_bdd_4_lut_8042_4_lut_else_4_lut (.A(cnt_scan[2]), .B(cnt_scan[0]), 
         .C(n1567), .D(n1189), .Z(n15039)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/fpga/ds18b20/oled.v(123[8:13])
    defparam n811_bdd_4_lut_8042_4_lut_else_4_lut.init = 16'h5140;
    LUT4 i3_4_lut_adj_128 (.A(state[2]), .B(cnt_scan[4]), .C(n14983), 
         .D(n24_adj_97), .Z(n13683)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_4_lut_adj_128.init = 16'h1000;
    LUT4 i1_3_lut_adj_129 (.A(cnt_scan[3]), .B(cnt_scan[2]), .Z(n24_adj_97)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_3_lut_adj_129.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_130 (.A(cnt[1]), .B(cnt[2]), .C(cnt[3]), 
         .D(cnt[0]), .Z(n4_adj_99)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_130.init = 16'hf0e0;
    LUT4 n14483_bdd_3_lut_then_4_lut (.A(cnt[3]), .B(cnt[1]), .C(cnt[2]), 
         .D(cnt[4]), .Z(n15033)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;
    defparam n14483_bdd_3_lut_then_4_lut.init = 16'h0150;
    LUT4 n11_bdd_4_lut (.A(n11_adj_2), .B(cnt_main[2]), .C(cnt_main[1]), 
         .D(cnt_main[0]), .Z(n15066)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;
    defparam n11_bdd_4_lut.init = 16'h4440;
    LUT4 i1_4_lut_4_lut_adj_131 (.A(state[1]), .B(state[5]), .C(n14613), 
         .D(n13958), .Z(n6735)) /* synthesis lut_function=(!(A (B+(D))+!A (B (D)+!B !(C)))) */ ;
    defparam i1_4_lut_4_lut_adj_131.init = 16'h1076;
    LUT4 n3443_bdd_2_lut_8055_2_lut (.A(cnt_scan[2]), .B(n14476), .Z(n14477)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/fpga/ds18b20/oled.v(123[8:13])
    defparam n3443_bdd_2_lut_8055_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_4_lut_adj_132 (.A(n14989), .B(cnt_init[0]), .C(oled_dcn_N_650), 
         .D(state[4]), .Z(n85)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_132.init = 16'h2202;
    LUT4 i2_3_lut_rep_210_4_lut (.A(state[3]), .B(n14993), .C(state[5]), 
         .D(state[4]), .Z(n14971)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/fpga/ds18b20/oled.v(127[5:10])
    defparam i2_3_lut_rep_210_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_2_lut_adj_133 (.A(cnt_scan[2]), .B(n60), .Z(n61)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/fpga/ds18b20/oled.v(123[8:13])
    defparam i1_2_lut_2_lut_adj_133.init = 16'h4444;
    LUT4 i1_4_lut_adj_134 (.A(state[0]), .B(y_p[5]), .C(n16_adj_79), .D(n14970), 
         .Z(y_p_7__N_1[5])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_134.init = 16'hdc50;
    PFUMX i25 (.BLUT(n1), .ALUT(n13855), .C0(cnt_scan[0]), .Z(n14_adj_70));
    LUT4 i33_4_lut_adj_135 (.A(y_p[5]), .B(n14997), .C(state[1]), .D(n13816), 
         .Z(n16_adj_79)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i33_4_lut_adj_135.init = 16'h3a0a;
    LUT4 i7862_4_lut_4_lut (.A(num[3]), .B(char[0]), .C(num[2]), .D(char[126]), 
         .Z(n14135)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam i7862_4_lut_4_lut.init = 16'hf404;
    LUT4 i7783_4_lut_4_lut (.A(num[3]), .B(num[1]), .C(num[0]), .D(char[126]), 
         .Z(n14054)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;   // c:/fpga/ds18b20/oled.v(69[7] 82[14])
    defparam i7783_4_lut_4_lut.init = 16'hd100;
    LUT4 i2_4_lut_4_lut_4_lut (.A(state[3]), .B(n85), .C(n6_adj_6), .D(n15015), 
         .Z(n12)) /* synthesis lut_function=(!(A+(B (D)+!B ((D)+!C)))) */ ;   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam i2_4_lut_4_lut_4_lut.init = 16'h0054;
    PFUMX i8090 (.BLUT(n14541), .ALUT(n14540), .C0(num[3]), .Z(n14542));
    LUT4 i6_4_lut_adj_136 (.A(num[5]), .B(num[7]), .C(num[1]), .D(num[2]), 
         .Z(n14_adj_20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/ds18b20/oled.v(118[59:71])
    defparam i6_4_lut_adj_136.init = 16'hfffe;
    LUT4 i1_4_lut_adj_137 (.A(state[0]), .B(y_p[4]), .C(n16_adj_78), .D(n14970), 
         .Z(y_p_7__N_1[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_137.init = 16'hdc50;
    LUT4 i33_4_lut_adj_138 (.A(y_p[4]), .B(n14997), .C(state[1]), .D(n13817), 
         .Z(n16_adj_78)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i33_4_lut_adj_138.init = 16'h3a0a;
    LUT4 i7860_4_lut_rep_250 (.A(char[126]), .B(num[0]), .C(num[2]), .D(num[1]), 
         .Z(n15011)) /* synthesis lut_function=(!((B (C (D)))+!A)) */ ;
    defparam i7860_4_lut_rep_250.init = 16'h2aaa;
    LUT4 cnt_3__bdd_4_lut_8385 (.A(cnt[3]), .B(cnt[0]), .C(cnt[2]), .D(cnt[1]), 
         .Z(n14779)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam cnt_3__bdd_4_lut_8385.init = 16'h1a09;
    PFUMX i33_adj_139 (.BLUT(n3), .ALUT(n6_adj_31), .C0(n643), .Z(n13));
    LUT4 i1_4_lut_adj_140 (.A(state[0]), .B(y_p[1]), .C(n16_adj_77), .D(n14970), 
         .Z(y_p_7__N_1[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_140.init = 16'hdc50;
    LUT4 i33_4_lut_adj_141 (.A(y_p[1]), .B(n14997), .C(state[1]), .D(n15035), 
         .Z(n16_adj_77)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i33_4_lut_adj_141.init = 16'h3a0a;
    LUT4 n1190_bdd_4_lut_8390 (.A(n1190), .B(n1946), .C(cnt_scan[3]), 
         .D(cnt_scan[1]), .Z(n15107)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam n1190_bdd_4_lut_8390.init = 16'hc0a0;
    PFUMX i7864 (.BLUT(n14135), .ALUT(n14136), .C0(num[1]), .Z(n14137));
    LUT4 i1_2_lut_3_lut_adj_142 (.A(cnt_scan[0]), .B(cnt_scan[2]), .C(n810), 
         .Z(n13883)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_142.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_143 (.A(cnt_scan[0]), .B(cnt_scan[2]), .C(n814), 
         .Z(n13880)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_143.init = 16'h8080;
    LUT4 i8023_2_lut_rep_251 (.A(cnt_scan[2]), .B(cnt_scan[0]), .Z(n15012)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i8023_2_lut_rep_251.init = 16'h1111;
    LUT4 i1_2_lut_3_lut_adj_144 (.A(cnt_scan[2]), .B(cnt_scan[0]), .C(y_p[5]), 
         .Z(n13885)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_144.init = 16'h1010;
    LUT4 i8003_4_lut (.A(state[0]), .B(num_delay[0]), .C(n24_adj_32), 
         .D(n27), .Z(num_delay_15__N_231[0])) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (C+(D)))) */ ;
    defparam i8003_4_lut.init = 16'h8caf;
    L6MUX21 i7871 (.D0(n14142), .D1(n14143), .SD(cnt_write[3]), .Z(oled_dat_N_672));
    LUT4 i1_2_lut_3_lut_adj_145 (.A(cnt_scan[2]), .B(cnt_scan[0]), .C(y_p[1]), 
         .Z(n13888)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_145.init = 16'h1010;
    LUT4 i41_4_lut_adj_146 (.A(num_delay[0]), .B(n13941), .C(state[2]), 
         .D(n13848), .Z(n24_adj_32)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i41_4_lut_adj_146.init = 16'h3505;
    LUT4 i1_2_lut_3_lut_adj_147 (.A(cnt_scan[2]), .B(cnt_scan[0]), .C(y_p[4]), 
         .Z(n13886)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_147.init = 16'h1010;
    LUT4 i1_4_lut_adj_148 (.A(cnt_init[0]), .B(n8892), .C(state_back[2]), 
         .D(n15008), .Z(n16_adj_47)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;
    defparam i1_4_lut_adj_148.init = 16'h4454;
    PFUMX i8043 (.BLUT(n13886), .ALUT(n14469), .C0(cnt_scan[1]), .Z(n14470));
    LUT4 i4346_2_lut (.A(state[4]), .B(state_back[0]), .Z(n41_adj_73)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4346_2_lut.init = 16'h1111;
    LUT4 i1_4_lut_adj_149 (.A(cnt_init[0]), .B(num_delay[0]), .C(n15), 
         .D(n14991), .Z(n13848)) /* synthesis lut_function=(!(A (B (D))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_149.init = 16'h23af;
    LUT4 i1_4_lut_adj_150 (.A(state[4]), .B(state[0]), .C(n13819), .D(n14999), 
         .Z(n34)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i1_4_lut_adj_150.init = 16'h0a22;
    LUT4 i2_3_lut_4_lut_adj_151 (.A(state[3]), .B(n14993), .C(state[5]), 
         .D(state[4]), .Z(n11)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/fpga/ds18b20/oled.v(127[5:10])
    defparam i2_3_lut_4_lut_adj_151.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut_adj_152 (.A(cnt_scan[2]), .B(cnt_scan[0]), .C(y_p[7]), 
         .Z(n13887)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_152.init = 16'h1010;
    LUT4 i4520_2_lut_rep_218 (.A(n2135), .B(num[4]), .Z(n14979)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(118[59:71])
    defparam i4520_2_lut_rep_218.init = 16'h2222;
    LUT4 i8007_2_lut_rep_252 (.A(num[0]), .B(num[1]), .Z(n15013)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/fpga/ds18b20/oled.v(118[59:71])
    defparam i8007_2_lut_rep_252.init = 16'h1111;
    LUT4 i7852_1_lut_2_lut (.A(n2135), .B(num[4]), .Z(n14125)) /* synthesis lut_function=((B)+!A) */ ;   // c:/fpga/ds18b20/oled.v(118[59:71])
    defparam i7852_1_lut_2_lut.init = 16'hdddd;
    LUT4 i97_4_lut_4_lut (.A(cnt_scan[0]), .B(x_ph[0]), .C(n815), .D(cnt_scan[2]), 
         .Z(n45)) /* synthesis lut_function=(A (C (D))+!A !((D)+!B)) */ ;
    defparam i97_4_lut_4_lut.init = 16'ha044;
    LUT4 i1_2_lut_adj_153 (.A(cnt_scan[4]), .B(n15496), .Z(n64)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_153.init = 16'h4444;
    LUT4 i1_3_lut_4_lut_4_lut_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n10855)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/fpga/ds18b20/oled.v(70[8:12])
    defparam i1_3_lut_4_lut_4_lut_3_lut.init = 16'he1e1;
    LUT4 i2_2_lut (.A(num[4]), .B(num[3]), .Z(n10_adj_71)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/oled.v(118[59:71])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_154 (.A(cnt_scan[4]), .B(n13904), .C(cnt_scan[2]), 
         .D(cnt_scan[3]), .Z(n4171)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_154.init = 16'hfaee;
    LUT4 i1_4_lut_4_lut_adj_155 (.A(cnt_init[0]), .B(n13957), .C(n19_adj_49), 
         .D(state[2]), .Z(n6_adj_33)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam i1_4_lut_4_lut_adj_155.init = 16'hf400;
    PFUMX i8318 (.BLUT(n14917), .ALUT(n14916), .C0(cnt[4]), .Z(n14918));
    LUT4 i1_4_lut_adj_156 (.A(n14992), .B(n14554), .C(n15016), .D(state[0]), 
         .Z(clk_c_enable_68)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/fpga/ds18b20/oled.v(46[13:18])
    defparam i1_4_lut_adj_156.init = 16'hcdcc;
    LUT4 i1_4_lut_adj_157 (.A(cnt_scan[4]), .B(n57_adj_82), .C(n61), .D(cnt_scan[3]), 
         .Z(n64_adj_46)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_157.init = 16'h5044;
    LUT4 i2871_2_lut_3_lut (.A(n14971), .B(n2402), .C(clk_c_enable_79), 
         .Z(n9152)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/fpga/ds18b20/oled.v(152[5:10])
    defparam i2871_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_4_lut_4_lut_adj_158 (.A(cnt_init[0]), .B(n13979), .C(n19_adj_48), 
         .D(state[2]), .Z(n6_adj_8)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(56[12] 159[6])
    defparam i1_4_lut_4_lut_adj_158.init = 16'hf400;
    LUT4 i4442_4_lut_4_lut (.A(num[4]), .B(n13909), .C(n14_adj_70), .D(n2129), 
         .Z(n51)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i4442_4_lut_4_lut.init = 16'h4000;
    LUT4 i8028_2_lut (.A(state[2]), .B(state[3]), .Z(n14094)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i8028_2_lut.init = 16'heeee;
    LUT4 i8020_3_lut_4_lut_4_lut (.A(n14970), .B(n11_adj_2), .C(n13922), 
         .D(n14993), .Z(clk_c_enable_77)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C+!(D))))) */ ;
    defparam i8020_3_lut_4_lut_4_lut.init = 16'h4500;
    LUT4 i1_2_lut_rep_206 (.A(n2129), .B(num[4]), .Z(n14967)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(43[12:15])
    defparam i1_2_lut_rep_206.init = 16'h2222;
    LUT4 i2_3_lut_4_lut_3_lut (.A(num[4]), .B(cnt_scan[0]), .C(n2129), 
         .Z(n13821)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_4_lut_3_lut.init = 16'h0404;
    LUT4 mux_1002_i1_4_lut (.A(n7552), .B(n7554), .C(n14983), .D(n4), 
         .Z(n6694)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam mux_1002_i1_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_4_lut_adj_159 (.A(state[2]), .B(n4171), .C(n14472), 
         .D(char_reg[4]), .Z(n12_adj_42)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i1_4_lut_4_lut_adj_159.init = 16'h5450;
    PFUMX i7870 (.BLUT(n14140), .ALUT(n14141), .C0(cnt_write[2]), .Z(n14143));
    LUT4 i1_2_lut_4_lut_adj_160 (.A(n22), .B(n3779), .C(n14120), .D(state[2]), 
         .Z(n6_adj_15)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_160.init = 16'hac00;
    LUT4 i4389_2_lut_rep_255 (.A(state[2]), .B(state[1]), .Z(n15016)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4389_2_lut_rep_255.init = 16'heeee;
    LUT4 i2_4_lut_adj_161 (.A(cnt_scan[4]), .B(n4_adj_102), .C(n11_adj_1), 
         .D(n8022), .Z(n13845)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i2_4_lut_adj_161.init = 16'h0408;
    LUT4 i2_4_lut_adj_162 (.A(state[2]), .B(n15009), .C(cnt_init[1]), 
         .D(cnt_init[2]), .Z(n7554)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i2_4_lut_adj_162.init = 16'h0222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_163 (.A(state[5]), .B(state[4]), .C(state[3]), 
         .D(state[1]), .Z(n13941)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_163.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_164 (.A(n14692), .B(n3775), .C(n14106), .D(state[2]), 
         .Z(n6_adj_37)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_164.init = 16'hac00;
    PFUMX i8418 (.BLUT(n15172), .ALUT(n15171), .C0(cnt_scan[2]), .Z(n15173));
    LUT4 cnt_0__bdd_4_lut_8120 (.A(cnt[4]), .B(cnt[3]), .C(cnt[1]), .D(cnt[2]), 
         .Z(n14486)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam cnt_0__bdd_4_lut_8120.init = 16'h144f;
    LUT4 i3963_4_lut (.A(n442), .B(n14976), .C(n14990), .D(n453), .Z(cnt_scan_4__N_308[3])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam i3963_4_lut.init = 16'hc505;
    LUT4 i1_4_lut_4_lut_adj_165 (.A(state[2]), .B(n4171), .C(n64_adj_46), 
         .D(char_reg[7]), .Z(n12_adj_35)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i1_4_lut_4_lut_adj_165.init = 16'h5450;
    LUT4 i4516_2_lut (.A(n2131), .B(num[4]), .Z(n644)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(118[59:71])
    defparam i4516_2_lut.init = 16'h2222;
    LUT4 i4517_2_lut (.A(n2132), .B(num[4]), .Z(n643)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(118[59:71])
    defparam i4517_2_lut.init = 16'h2222;
    LUT4 i1_3_lut_adj_166 (.A(cnt_init[0]), .B(state[1]), .C(oled_dcn_N_650), 
         .Z(n11_adj_3)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/fpga/ds18b20/oled.v(85[7] 101[14])
    defparam i1_3_lut_adj_166.init = 16'heaea;
    LUT4 i1_4_lut_4_lut_adj_167 (.A(state[2]), .B(n4171), .C(n15110), 
         .D(char_reg[3]), .Z(n12_adj_5)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i1_4_lut_4_lut_adj_167.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_168 (.A(state[2]), .B(n4171), .C(n64_adj_81), 
         .D(char_reg[5]), .Z(n12_adj_39)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i1_4_lut_4_lut_adj_168.init = 16'h5450;
    LUT4 n14486_bdd_2_lut (.A(n14486), .B(cnt[0]), .Z(n14487)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n14486_bdd_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_169 (.A(n19_adj_95), .B(cnt[4]), .C(n20), .D(n4_adj_99), 
         .Z(oled_dcn_N_650)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_169.init = 16'hfefa;
    LUT4 i1_4_lut_4_lut_adj_170 (.A(state[2]), .B(n4171), .C(n64), .D(char_reg[2]), 
         .Z(n12_adj_14)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i1_4_lut_4_lut_adj_170.init = 16'h5450;
    LUT4 i2_4_lut_4_lut_adj_171 (.A(state[2]), .B(n31), .C(n35), .D(n8924), 
         .Z(state_back_5__N_285[1])) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i2_4_lut_4_lut_adj_171.init = 16'hfff4;
    LUT4 i1_4_lut_4_lut_adj_172 (.A(state[2]), .B(n4171), .C(n14480), 
         .D(char_reg[0]), .Z(n12_adj_61)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i1_4_lut_4_lut_adj_172.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_173 (.A(state[2]), .B(n4171), .C(n64_adj_60), 
         .D(char_reg[1]), .Z(n12_adj_57)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i1_4_lut_4_lut_adj_173.init = 16'h5450;
    LUT4 i4_4_lut (.A(cnt_scan[2]), .B(n643), .C(n14981), .D(n13821), 
         .Z(n10)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/fpga/ds18b20/oled.v(118[59:71])
    defparam i4_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_4_lut_adj_174 (.A(n14949), .B(n3780), .C(n14120), .D(state[2]), 
         .Z(n6_adj_68)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_174.init = 16'hac00;
    LUT4 i7811_4_lut (.A(char[126]), .B(num[3]), .C(num[2]), .D(n14073), 
         .Z(n2135)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/fpga/ds18b20/oled.v(118[59:71])
    defparam i7811_4_lut.init = 16'ha8a0;
    LUT4 i7810_2_lut (.A(num[0]), .B(num[1]), .Z(n14073)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7810_2_lut.init = 16'h6666;
    PFUMX i47_adj_175 (.BLUT(n6), .ALUT(n12_adj_35), .C0(state[3]), .Z(n24));
    LUT4 i2_3_lut_4_lut_4_lut (.A(state[2]), .B(n12_adj_75), .C(state[3]), 
         .D(state[4]), .Z(n13908)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i2875_2_lut_4_lut_4_lut (.A(state[2]), .B(clk_c_enable_68), .C(n15022), 
         .D(n14992), .Z(n9156)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i2875_2_lut_4_lut_4_lut.init = 16'hccc4;
    LUT4 i1_2_lut_3_lut_3_lut_adj_176 (.A(state[2]), .B(state_back[5]), 
         .C(n4171), .Z(n13898)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i1_2_lut_3_lut_3_lut_adj_176.init = 16'h4040;
    LUT4 i11_4_lut (.A(n14137), .B(char[126]), .C(num[0]), .D(n4_adj_87), 
         .Z(n2129)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/fpga/ds18b20/oled.v(43[12:15])
    defparam i11_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_4_lut_adj_177 (.A(n14528), .B(n3774), .C(n14106), .D(state[2]), 
         .Z(n6)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_177.init = 16'hac00;
    PFUMX i47_adj_178 (.BLUT(n6_adj_62), .ALUT(n12_adj_61), .C0(state[3]), 
          .Z(n24_adj_69));
    LUT4 mux_366_Mux_7_i31_3_lut_4_lut (.A(oled_dcn_N_650), .B(n14986), 
         .C(char_reg[7]), .D(n14591), .Z(n3774)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/fpga/ds18b20/oled.v(85[7] 101[14])
    defparam mux_366_Mux_7_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i7781_2_lut (.A(num[3]), .B(num[0]), .Z(n14051)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7781_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_3_lut (.A(state[2]), .B(n4171), .C(state_back[3]), .Z(n12_adj_21)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i1_3_lut_3_lut.init = 16'h5151;
    LUT4 i1_2_lut_adj_179 (.A(num[3]), .B(num[1]), .Z(n4_adj_87)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(43[12:15])
    defparam i1_2_lut_adj_179.init = 16'h2222;
    PFUMX i8386 (.BLUT(n15105), .ALUT(n15104), .C0(cnt_scan[2]), .Z(n15106));
    PFUMX i47_adj_180 (.BLUT(n6_adj_43), .ALUT(n12_adj_42), .C0(state[3]), 
          .Z(n24_adj_44));
    LUT4 i1_2_lut_3_lut_3_lut_adj_181 (.A(state[2]), .B(state_back[0]), 
         .C(n4171), .Z(n13896)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i1_2_lut_3_lut_3_lut_adj_181.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_3_lut_adj_182 (.A(state[2]), .B(state_back[2]), 
         .C(n4171), .Z(n13897)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/fpga/ds18b20/oled.v(57[4] 158[11])
    defparam i1_2_lut_3_lut_3_lut_adj_182.init = 16'h4040;
    LUT4 mux_366_Mux_2_i31_3_lut_4_lut (.A(oled_dcn_N_650), .B(n14986), 
         .C(char_reg[2]), .D(n14585), .Z(n3779)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/fpga/ds18b20/oled.v(85[7] 101[14])
    defparam mux_366_Mux_2_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i7978_2_lut_2_lut (.A(n14966), .B(clk_c_enable_71), .Z(n9165)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i7978_2_lut_2_lut.init = 16'h4444;
    PFUMX i8346 (.BLUT(n15043), .ALUT(n15044), .C0(cnt_scan[1]), .Z(n15045));
    LUT4 i4440_2_lut (.A(n292), .B(oled_dcn_N_650), .Z(n318)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/ds18b20/oled.v(95[19:29])
    defparam i4440_2_lut.init = 16'h2222;
    PFUMX i8292 (.BLUT(n14880), .ALUT(n14879), .C0(cnt[1]), .Z(n14881));
    PFUMX i8344 (.BLUT(n15039), .ALUT(n15040), .C0(cnt_scan[1]), .Z(n15041));
    VLO i1 (.Z(GND_net));
    PFUMX i47_adj_183 (.BLUT(n6_adj_68), .ALUT(n12_adj_57), .C0(state[3]), 
          .Z(n24_adj_67));
    PFUMX i7869 (.BLUT(n14138), .ALUT(n14139), .C0(cnt_write[2]), .Z(n14142));
    PFUMX i47_adj_184 (.BLUT(n6_adj_15), .ALUT(n12_adj_14), .C0(state[3]), 
          .Z(n24_adj_16));
    LUT4 i1_4_lut_adj_185 (.A(cnt_scan[4]), .B(n57), .C(n15038), .D(cnt_scan[3]), 
         .Z(n64_adj_60)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_185.init = 16'h5044;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

