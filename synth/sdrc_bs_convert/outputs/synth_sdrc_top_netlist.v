
// Generated by Cadence Genus(TM) Synthesis Solution 21.10-p002_1
// Generated on: Jul  5 2024 11:45:45 IST (Jul  5 2024 06:15:45 UTC)

// Verification Directory fv/sdrc_bs_convert 

module sdrc_bs_convert(clk, reset_n, sdr_width, x2a_rdstart,
     x2a_wrstart, x2a_rdlast, x2a_wrlast, x2a_rddt, x2a_rdok, a2x_wrdt,
     a2x_wren_n, x2a_wrnext, app_wr_data, app_wr_en_n, app_wr_next,
     app_last_wr, app_rd_data, app_rd_valid, app_last_rd);
  input clk, reset_n, x2a_rdstart, x2a_wrstart, x2a_rdlast, x2a_wrlast,
       x2a_rdok, x2a_wrnext;
  input [1:0] sdr_width;
  input [15:0] x2a_rddt;
  input [31:0] app_wr_data;
  input [3:0] app_wr_en_n;
  output [15:0] a2x_wrdt;
  output [1:0] a2x_wren_n;
  output app_wr_next, app_last_wr, app_rd_valid, app_last_rd;
  output [31:0] app_rd_data;
  wire clk, reset_n, x2a_rdstart, x2a_wrstart, x2a_rdlast, x2a_wrlast,
       x2a_rdok, x2a_wrnext;
  wire [1:0] sdr_width;
  wire [15:0] x2a_rddt;
  wire [31:0] app_wr_data;
  wire [3:0] app_wr_en_n;
  wire [15:0] a2x_wrdt;
  wire [1:0] a2x_wren_n;
  wire app_wr_next, app_last_wr, app_rd_valid, app_last_rd;
  wire [31:0] app_rd_data;
  wire [23:0] saved_rd_data;
  wire [1:0] wr_xfr_count;
  wire [1:0] rd_xfr_count;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_48, n_49, n_50, n_51, n_52, n_53, n_54, n_55;
  wire n_56, n_57, n_58, n_59, n_60, n_61, n_62, n_63;
  wire n_64, n_65, n_66, n_67, n_68, n_69, n_70, n_71;
  wire n_72, n_73, n_74, n_75, n_76, n_77, n_78, n_79;
  wire n_80, n_81, n_82, n_83, n_84, n_85, n_86, n_87;
  wire n_88, n_89, n_90, n_91, n_92, n_93, n_95, n_96;
  wire n_97, n_98, n_99, n_100, n_101, n_102, n_103, n_104;
  wire n_105, n_106, n_108, n_161, n_162, n_163, n_224;
  assign app_last_rd = x2a_rdlast;
  assign app_last_wr = x2a_wrlast;
  NAND2XL g2182__2398(.A (n_93), .B (n_106), .Y (a2x_wrdt[5]));
  NAND2XL g2183__5107(.A (n_96), .B (n_105), .Y (a2x_wrdt[6]));
  NAND2XL g2184__6260(.A (n_90), .B (n_100), .Y (a2x_wrdt[7]));
  NAND2XL g2185__4319(.A (n_95), .B (n_104), .Y (a2x_wren_n[0]));
  NAND2XL g2186__8428(.A (n_89), .B (n_102), .Y (a2x_wrdt[2]));
  NAND2XL g2187__5526(.A (n_91), .B (n_101), .Y (a2x_wrdt[3]));
  NAND2XL g2188__6783(.A (n_92), .B (n_103), .Y (a2x_wrdt[4]));
  NAND2XL g2189__3680(.A (n_88), .B (n_99), .Y (a2x_wrdt[1]));
  NAND2XL g2190__1617(.A (n_87), .B (n_98), .Y (a2x_wrdt[0]));
  AOI22X1 g2191__2802(.A0 (app_wr_data[5]), .A1 (n_97), .B0
       (app_wr_data[21]), .B1 (n_84), .Y (n_106));
  AOI22X1 g2192__1705(.A0 (app_wr_data[6]), .A1 (n_97), .B0
       (app_wr_data[22]), .B1 (n_84), .Y (n_105));
  AOI22X1 g2193__5122(.A0 (app_wr_en_n[0]), .A1 (n_97), .B0
       (app_wr_en_n[2]), .B1 (n_84), .Y (n_104));
  AOI22X1 g2194__8246(.A0 (app_wr_data[4]), .A1 (n_97), .B0
       (app_wr_data[20]), .B1 (n_84), .Y (n_103));
  AOI22X1 g2195__7098(.A0 (app_wr_data[2]), .A1 (n_97), .B0
       (app_wr_data[18]), .B1 (n_84), .Y (n_102));
  AOI22X1 g2196__6131(.A0 (app_wr_data[3]), .A1 (n_97), .B0
       (app_wr_data[19]), .B1 (n_84), .Y (n_101));
  AOI22X1 g2197__1881(.A0 (app_wr_data[7]), .A1 (n_97), .B0
       (app_wr_data[23]), .B1 (n_84), .Y (n_100));
  AOI22X1 g2198__5115(.A0 (app_wr_data[1]), .A1 (n_97), .B0
       (app_wr_data[17]), .B1 (n_84), .Y (n_99));
  AOI22X1 g2199__7482(.A0 (app_wr_data[0]), .A1 (n_97), .B0
       (app_wr_data[16]), .B1 (n_84), .Y (n_98));
  AND2XL g2200__4733(.A (x2a_wrnext), .B (n_86), .Y (app_wr_next));
  AO22XL g2201__6161(.A0 (app_wr_data[13]), .A1 (n_85), .B0
       (app_wr_data[29]), .B1 (n_71), .Y (a2x_wrdt[13]));
  OAI21XL g2202__9315(.A0 (n_108), .A1 (n_161), .B0 (n_224), .Y
       (app_rd_valid));
  AO22XL g2203__9945(.A0 (app_wr_data[10]), .A1 (n_85), .B0
       (app_wr_data[26]), .B1 (n_71), .Y (a2x_wrdt[10]));
  AO22XL g2204__2883(.A0 (app_wr_en_n[1]), .A1 (n_85), .B0
       (app_wr_en_n[3]), .B1 (n_71), .Y (a2x_wren_n[1]));
  AND3XL g2205__2346(.A (n_72), .B (n_69), .C (n_83), .Y (n_97));
  AO22XL g2206__1666(.A0 (app_wr_data[9]), .A1 (n_85), .B0
       (app_wr_data[25]), .B1 (n_71), .Y (a2x_wrdt[9]));
  AO22XL g2207__7410(.A0 (app_wr_data[8]), .A1 (n_85), .B0
       (app_wr_data[24]), .B1 (n_71), .Y (a2x_wrdt[8]));
  AO22XL g2208__6417(.A0 (app_wr_data[12]), .A1 (n_85), .B0
       (app_wr_data[28]), .B1 (n_71), .Y (a2x_wrdt[12]));
  AO22XL g2209__5477(.A0 (app_wr_data[14]), .A1 (n_85), .B0
       (app_wr_data[30]), .B1 (n_71), .Y (a2x_wrdt[14]));
  AO22XL g2210__2398(.A0 (app_wr_data[11]), .A1 (n_85), .B0
       (app_wr_data[27]), .B1 (n_71), .Y (a2x_wrdt[11]));
  AO22XL g2211__5107(.A0 (app_wr_data[15]), .A1 (n_85), .B0
       (app_wr_data[31]), .B1 (n_71), .Y (a2x_wrdt[15]));
  AOI22X1 g2212__6260(.A0 (app_wr_data[14]), .A1 (n_73), .B0
       (app_wr_data[30]), .B1 (n_70), .Y (n_96));
  AOI22X1 g2213__4319(.A0 (app_wr_en_n[1]), .A1 (n_73), .B0
       (app_wr_en_n[3]), .B1 (n_70), .Y (n_95));
  AOI22X1 g2215__5526(.A0 (app_wr_data[13]), .A1 (n_73), .B0
       (app_wr_data[29]), .B1 (n_70), .Y (n_93));
  AOI22X1 g2216__6783(.A0 (app_wr_data[12]), .A1 (n_73), .B0
       (app_wr_data[28]), .B1 (n_70), .Y (n_92));
  AOI22X1 g2217__3680(.A0 (app_wr_data[11]), .A1 (n_73), .B0
       (app_wr_data[27]), .B1 (n_70), .Y (n_91));
  AOI22X1 g2218__1617(.A0 (app_wr_data[15]), .A1 (n_73), .B0
       (app_wr_data[31]), .B1 (n_70), .Y (n_90));
  AOI22X1 g2219__2802(.A0 (app_wr_data[10]), .A1 (n_73), .B0
       (app_wr_data[26]), .B1 (n_70), .Y (n_89));
  AOI22X1 g2220__1705(.A0 (app_wr_data[9]), .A1 (n_73), .B0
       (app_wr_data[25]), .B1 (n_70), .Y (n_88));
  AOI22X1 g2221__5122(.A0 (app_wr_data[8]), .A1 (n_73), .B0
       (app_wr_data[24]), .B1 (n_70), .Y (n_87));
  OAI211X1 g2222__8246(.A0 (n_56), .A1 (n_161), .B0 (n_57), .C0 (n_69),
       .Y (n_86));
  INVX1 g2223(.A (n_83), .Y (n_84));
  OAI2BB1X1 g2224__7098(.A0N (sdr_width[1]), .A1N (saved_rd_data[17]),
       .B0 (n_63), .Y (app_rd_data[17]));
  OAI2BB1X1 g2225__6131(.A0N (sdr_width[1]), .A1N (x2a_rddt[7]), .B0
       (n_81), .Y (app_rd_data[31]));
  OAI2BB1X1 g2226__1881(.A0N (sdr_width[1]), .A1N (x2a_rddt[6]), .B0
       (n_74), .Y (app_rd_data[30]));
  OAI2BB1X1 g2227__5115(.A0N (sdr_width[1]), .A1N (x2a_rddt[5]), .B0
       (n_80), .Y (app_rd_data[29]));
  OAI2BB1X1 g2228__7482(.A0N (sdr_width[1]), .A1N (x2a_rddt[4]), .B0
       (n_79), .Y (app_rd_data[28]));
  OAI2BB1X1 g2229__4733(.A0N (sdr_width[1]), .A1N (x2a_rddt[3]), .B0
       (n_78), .Y (app_rd_data[27]));
  OAI2BB1X1 g2230__6161(.A0N (sdr_width[1]), .A1N (x2a_rddt[2]), .B0
       (n_77), .Y (app_rd_data[26]));
  OAI2BB1X1 g2231__9315(.A0N (sdr_width[1]), .A1N (x2a_rddt[1]), .B0
       (n_76), .Y (app_rd_data[25]));
  OAI2BB1X1 g2232__9945(.A0N (sdr_width[1]), .A1N (x2a_rddt[0]), .B0
       (n_75), .Y (app_rd_data[24]));
  OAI2BB1X1 g2233__2883(.A0N (sdr_width[1]), .A1N (saved_rd_data[23]),
       .B0 (n_82), .Y (app_rd_data[23]));
  OAI2BB1X1 g2234__2346(.A0N (sdr_width[1]), .A1N (saved_rd_data[22]),
       .B0 (n_68), .Y (app_rd_data[22]));
  OAI2BB1X1 g2235__1666(.A0N (sdr_width[1]), .A1N (saved_rd_data[21]),
       .B0 (n_67), .Y (app_rd_data[21]));
  OAI2BB1X1 g2236__7410(.A0N (sdr_width[1]), .A1N (saved_rd_data[20]),
       .B0 (n_66), .Y (app_rd_data[20]));
  OAI2BB1X1 g2237__6417(.A0N (sdr_width[1]), .A1N (saved_rd_data[19]),
       .B0 (n_65), .Y (app_rd_data[19]));
  OAI2BB1X1 g2238__5477(.A0N (sdr_width[1]), .A1N (saved_rd_data[18]),
       .B0 (n_64), .Y (app_rd_data[18]));
  OAI21X1 g2239__2398(.A0 (wr_xfr_count[0]), .A1 (n_161), .B0 (n_57),
       .Y (n_85));
  AOI31X1 g2240__5107(.A0 (n_56), .A1 (sdr_width[1]), .A2
       (wr_xfr_count[1]), .B0 (n_71), .Y (n_83));
  OAI2BB1X1 g2241__6260(.A0N (sdr_width[1]), .A1N (saved_rd_data[16]),
       .B0 (n_62), .Y (app_rd_data[16]));
  MX2XL g2242__4319(.A (saved_rd_data[6]), .B (x2a_rddt[6]), .S0
       (n_58), .Y (app_rd_data[6]));
  MX2XL g2243__8428(.A (saved_rd_data[5]), .B (x2a_rddt[5]), .S0
       (n_58), .Y (app_rd_data[5]));
  MX2XL g2244__5526(.A (saved_rd_data[4]), .B (x2a_rddt[4]), .S0
       (n_58), .Y (app_rd_data[4]));
  MX2XL g2245__6783(.A (saved_rd_data[3]), .B (x2a_rddt[3]), .S0
       (n_58), .Y (app_rd_data[3]));
  MX2XL g2246__3680(.A (saved_rd_data[2]), .B (x2a_rddt[2]), .S0
       (n_58), .Y (app_rd_data[2]));
  MX2XL g2247__1617(.A (saved_rd_data[1]), .B (x2a_rddt[1]), .S0
       (n_58), .Y (app_rd_data[1]));
  MX2XL g2248__2802(.A (saved_rd_data[9]), .B (x2a_rddt[9]), .S0
       (n_58), .Y (app_rd_data[9]));
  MX2XL g2249__1705(.A (saved_rd_data[15]), .B (x2a_rddt[15]), .S0
       (n_58), .Y (app_rd_data[15]));
  MX2XL g2250__5122(.A (saved_rd_data[14]), .B (x2a_rddt[14]), .S0
       (n_58), .Y (app_rd_data[14]));
  MX2XL g2251__8246(.A (saved_rd_data[13]), .B (x2a_rddt[13]), .S0
       (n_58), .Y (app_rd_data[13]));
  MX2XL g2252__7098(.A (saved_rd_data[12]), .B (x2a_rddt[12]), .S0
       (n_58), .Y (app_rd_data[12]));
  MX2XL g2253__6131(.A (saved_rd_data[11]), .B (x2a_rddt[11]), .S0
       (n_58), .Y (app_rd_data[11]));
  MX2XL g2254__1881(.A (saved_rd_data[10]), .B (x2a_rddt[10]), .S0
       (n_58), .Y (app_rd_data[10]));
  MX2XL g2255__5115(.A (saved_rd_data[0]), .B (x2a_rddt[0]), .S0
       (n_58), .Y (app_rd_data[0]));
  MX2XL g2256__7482(.A (saved_rd_data[8]), .B (x2a_rddt[8]), .S0
       (n_58), .Y (app_rd_data[8]));
  MX2XL g2257__4733(.A (saved_rd_data[7]), .B (x2a_rddt[7]), .S0
       (n_58), .Y (app_rd_data[7]));
  NAND2X1 g2258__6161(.A (x2a_rddt[7]), .B (n_59), .Y (n_82));
  NAND2X1 g2259__9315(.A (x2a_rddt[15]), .B (n_59), .Y (n_81));
  NAND2X1 g2260__9945(.A (x2a_rddt[13]), .B (n_59), .Y (n_80));
  NAND2X1 g2261__2883(.A (x2a_rddt[12]), .B (n_59), .Y (n_79));
  NAND2X1 g2262__2346(.A (x2a_rddt[11]), .B (n_59), .Y (n_78));
  NAND2X1 g2263__1666(.A (x2a_rddt[10]), .B (n_59), .Y (n_77));
  NAND2X1 g2264__7410(.A (x2a_rddt[9]), .B (n_59), .Y (n_76));
  NAND2X1 g2265__6417(.A (x2a_rddt[8]), .B (n_59), .Y (n_75));
  NAND2X1 g2266__5477(.A (x2a_rddt[14]), .B (n_59), .Y (n_74));
  INVX1 g2267(.A (n_73), .Y (n_72));
  INVX1 g2268(.A (n_70), .Y (n_69));
  NAND2X1 g2269__2398(.A (x2a_rddt[6]), .B (n_59), .Y (n_68));
  NAND2X1 g2270__5107(.A (x2a_rddt[5]), .B (n_59), .Y (n_67));
  NAND2X1 g2271__6260(.A (x2a_rddt[4]), .B (n_59), .Y (n_66));
  NAND2X1 g2272__4319(.A (x2a_rddt[3]), .B (n_59), .Y (n_65));
  NAND2X1 g2273__8428(.A (x2a_rddt[2]), .B (n_59), .Y (n_64));
  NAND2X1 g2274__5526(.A (x2a_rddt[1]), .B (n_59), .Y (n_63));
  NAND2X1 g2275__6783(.A (x2a_rddt[0]), .B (n_59), .Y (n_62));
  NOR2X1 g2276__3680(.A (n_56), .B (n_60), .Y (n_73));
  NOR2X1 g2277__1617(.A (n_56), .B (n_161), .Y (n_71));
  AND3XL g2278__2802(.A (wr_xfr_count[0]), .B (sdr_width[1]), .C
       (wr_xfr_count[1]), .Y (n_70));
  INVX1 g2279(.A (n_108), .Y (n_61));
  NAND2BX1 g2280__1705(.AN (wr_xfr_count[1]), .B (sdr_width[1]), .Y
       (n_60));
  NAND2X1 g2281__5122(.A (x2a_rdok), .B (rd_xfr_count[0]), .Y (n_108));
  INVX1 g2282(.A (n_161), .Y (n_59));
  INVX1 g2283(.A (n_58), .Y (n_57));
  NOR2X2 g2285__8246(.A (sdr_width[1]), .B (sdr_width[0]), .Y (n_58));
  INVX1 g2287(.A (wr_xfr_count[0]), .Y (n_56));
  NAND2BX1 g2__7098(.AN (sdr_width[1]), .B (sdr_width[0]), .Y (n_161));
  SDFFQX1 \rd_xfr_count_reg[0] (.CK (clk), .D (n_14), .SI (n_10), .SE
       (rd_xfr_count[0]), .Q (rd_xfr_count[0]));
  DFFHQX1 \rd_xfr_count_reg[1] (.CK (clk), .D (n_29), .Q
       (rd_xfr_count[1]));
  DFFHQX1 \saved_rd_data_reg[0] (.CK (clk), .D (n_32), .Q
       (saved_rd_data[0]));
  DFFHQX1 \saved_rd_data_reg[1] (.CK (clk), .D (n_42), .Q
       (saved_rd_data[1]));
  DFFHQX1 \saved_rd_data_reg[2] (.CK (clk), .D (n_40), .Q
       (saved_rd_data[2]));
  DFFHQX1 \saved_rd_data_reg[3] (.CK (clk), .D (n_39), .Q
       (saved_rd_data[3]));
  DFFHQX1 \saved_rd_data_reg[4] (.CK (clk), .D (n_38), .Q
       (saved_rd_data[4]));
  DFFHQX1 \saved_rd_data_reg[5] (.CK (clk), .D (n_37), .Q
       (saved_rd_data[5]));
  DFFHQX1 \saved_rd_data_reg[6] (.CK (clk), .D (n_36), .Q
       (saved_rd_data[6]));
  DFFHQX1 \saved_rd_data_reg[7] (.CK (clk), .D (n_35), .Q
       (saved_rd_data[7]));
  DFFHQX1 \saved_rd_data_reg[8] (.CK (clk), .D (n_50), .Q
       (saved_rd_data[8]));
  DFFHQX1 \saved_rd_data_reg[9] (.CK (clk), .D (n_49), .Q
       (saved_rd_data[9]));
  DFFHQX1 \saved_rd_data_reg[10] (.CK (clk), .D (n_48), .Q
       (saved_rd_data[10]));
  DFFHQX1 \saved_rd_data_reg[11] (.CK (clk), .D (n_54), .Q
       (saved_rd_data[11]));
  DFFHQX1 \saved_rd_data_reg[12] (.CK (clk), .D (n_51), .Q
       (saved_rd_data[12]));
  DFFHQX1 \saved_rd_data_reg[13] (.CK (clk), .D (n_53), .Q
       (saved_rd_data[13]));
  DFFHQX1 \saved_rd_data_reg[14] (.CK (clk), .D (n_52), .Q
       (saved_rd_data[14]));
  DFFHQX1 \saved_rd_data_reg[15] (.CK (clk), .D (n_55), .Q
       (saved_rd_data[15]));
  DFFHQX1 \saved_rd_data_reg[16] (.CK (clk), .D (n_31), .Q
       (saved_rd_data[16]));
  DFFHQX1 \saved_rd_data_reg[17] (.CK (clk), .D (n_27), .Q
       (saved_rd_data[17]));
  DFFHQX1 \saved_rd_data_reg[18] (.CK (clk), .D (n_24), .Q
       (saved_rd_data[18]));
  DFFHQX1 \saved_rd_data_reg[19] (.CK (clk), .D (n_25), .Q
       (saved_rd_data[19]));
  DFFHQX1 \saved_rd_data_reg[20] (.CK (clk), .D (n_26), .Q
       (saved_rd_data[20]));
  DFFHQX1 \saved_rd_data_reg[21] (.CK (clk), .D (n_23), .Q
       (saved_rd_data[21]));
  DFFHQX1 \saved_rd_data_reg[22] (.CK (clk), .D (n_28), .Q
       (saved_rd_data[22]));
  DFFHQX1 \saved_rd_data_reg[23] (.CK (clk), .D (n_22), .Q
       (saved_rd_data[23]));
  SDFFQX1 \wr_xfr_count_reg[0] (.CK (clk), .D (n_15), .SI (n_11), .SE
       (wr_xfr_count[0]), .Q (wr_xfr_count[0]));
  DFFHQX1 \wr_xfr_count_reg[1] (.CK (clk), .D (n_30), .Q
       (wr_xfr_count[1]));
  OAI2BB1X1 g1973__6131(.A0N (x2a_rddt[7]), .A1N (n_19), .B0 (n_41), .Y
       (n_55));
  OAI2BB1X1 g1974__1881(.A0N (x2a_rddt[11]), .A1N (n_20), .B0 (n_46),
       .Y (n_54));
  OAI2BB1X1 g1975__5115(.A0N (x2a_rddt[13]), .A1N (n_20), .B0 (n_44),
       .Y (n_53));
  OAI2BB1X1 g1976__7482(.A0N (x2a_rddt[6]), .A1N (n_19), .B0 (n_43), .Y
       (n_52));
  OAI2BB1X1 g1977__4733(.A0N (saved_rd_data[12]), .A1N (n_16), .B0
       (n_47), .Y (n_51));
  OAI2BB1X1 g1978__6161(.A0N (saved_rd_data[8]), .A1N (n_16), .B0
       (n_34), .Y (n_50));
  OAI2BB1X1 g1979__9315(.A0N (x2a_rddt[9]), .A1N (n_20), .B0 (n_33), .Y
       (n_49));
  OAI2BB1X1 g1980__9945(.A0N (x2a_rddt[2]), .A1N (n_19), .B0 (n_45), .Y
       (n_48));
  AOI22X1 g1981__2883(.A0 (x2a_rddt[12]), .A1 (n_20), .B0
       (x2a_rddt[4]), .B1 (n_19), .Y (n_47));
  AOI22X1 g1982__2346(.A0 (x2a_rddt[3]), .A1 (n_19), .B0
       (saved_rd_data[11]), .B1 (n_16), .Y (n_46));
  AOI22X1 g1995__1666(.A0 (x2a_rddt[10]), .A1 (n_20), .B0
       (saved_rd_data[10]), .B1 (n_16), .Y (n_45));
  AOI22X1 g1996__7410(.A0 (x2a_rddt[5]), .A1 (n_19), .B0
       (saved_rd_data[13]), .B1 (n_16), .Y (n_44));
  AOI22X1 g1997__6417(.A0 (x2a_rddt[14]), .A1 (n_20), .B0
       (saved_rd_data[14]), .B1 (n_16), .Y (n_43));
  AO22XL g1998__5477(.A0 (saved_rd_data[1]), .A1 (n_0), .B0
       (x2a_rddt[1]), .B1 (n_21), .Y (n_42));
  AOI22X1 g1999__2398(.A0 (x2a_rddt[15]), .A1 (n_20), .B0
       (saved_rd_data[15]), .B1 (n_16), .Y (n_41));
  AO22XL g2000__5107(.A0 (saved_rd_data[2]), .A1 (n_0), .B0
       (x2a_rddt[2]), .B1 (n_21), .Y (n_40));
  AO22XL g2001__6260(.A0 (saved_rd_data[3]), .A1 (n_0), .B0
       (x2a_rddt[3]), .B1 (n_21), .Y (n_39));
  AO22XL g2002__4319(.A0 (saved_rd_data[4]), .A1 (n_0), .B0
       (x2a_rddt[4]), .B1 (n_21), .Y (n_38));
  AO22XL g2003__8428(.A0 (saved_rd_data[5]), .A1 (n_0), .B0
       (x2a_rddt[5]), .B1 (n_21), .Y (n_37));
  AO22XL g2004__5526(.A0 (saved_rd_data[6]), .A1 (n_0), .B0
       (x2a_rddt[6]), .B1 (n_21), .Y (n_36));
  AO22XL g2005__6783(.A0 (saved_rd_data[7]), .A1 (n_0), .B0
       (x2a_rddt[7]), .B1 (n_21), .Y (n_35));
  AOI22X1 g2006__3680(.A0 (x2a_rddt[8]), .A1 (n_20), .B0 (x2a_rddt[0]),
       .B1 (n_19), .Y (n_34));
  AOI22X1 g2007__1617(.A0 (x2a_rddt[1]), .A1 (n_19), .B0
       (saved_rd_data[9]), .B1 (n_16), .Y (n_33));
  AO22XL g2008__2802(.A0 (saved_rd_data[0]), .A1 (n_0), .B0
       (x2a_rddt[0]), .B1 (n_21), .Y (n_32));
  AO22XL g2009__1705(.A0 (x2a_rddt[0]), .A1 (n_17), .B0
       (saved_rd_data[16]), .B1 (n_18), .Y (n_31));
  AO22XL g2010__5122(.A0 (n_162), .A1 (n_15), .B0 (wr_xfr_count[1]),
       .B1 (n_11), .Y (n_30));
  AO22XL g2011__8246(.A0 (n_163), .A1 (n_14), .B0 (rd_xfr_count[1]),
       .B1 (n_10), .Y (n_29));
  AO22XL g2012__7098(.A0 (x2a_rddt[6]), .A1 (n_17), .B0
       (saved_rd_data[22]), .B1 (n_18), .Y (n_28));
  AO22XL g2013__6131(.A0 (x2a_rddt[1]), .A1 (n_17), .B0
       (saved_rd_data[17]), .B1 (n_18), .Y (n_27));
  AO22XL g2014__1881(.A0 (x2a_rddt[4]), .A1 (n_17), .B0
       (saved_rd_data[20]), .B1 (n_18), .Y (n_26));
  AO22XL g2015__5115(.A0 (x2a_rddt[3]), .A1 (n_17), .B0
       (saved_rd_data[19]), .B1 (n_18), .Y (n_25));
  AO22XL g2016__7482(.A0 (x2a_rddt[2]), .A1 (n_17), .B0
       (saved_rd_data[18]), .B1 (n_18), .Y (n_24));
  AO22XL g2017__4733(.A0 (x2a_rddt[5]), .A1 (n_17), .B0
       (saved_rd_data[21]), .B1 (n_18), .Y (n_23));
  AO22XL g2018__6161(.A0 (x2a_rddt[7]), .A1 (n_17), .B0
       (saved_rd_data[23]), .B1 (n_18), .Y (n_22));
  NOR2X1 g2019__9315(.A (n_2), .B (n_13), .Y (n_21));
  NOR2X1 g2021__9945(.A (n_161), .B (n_12), .Y (n_20));
  AND3XL g2022__2883(.A (reset_n), .B (n_161), .C (n_8), .Y (n_19));
  AND2XL g2023__2346(.A (reset_n), .B (n_9), .Y (n_18));
  NOR2X1 g2024__1666(.A (n_2), .B (n_9), .Y (n_17));
  NOR2X1 g2025__7410(.A (n_2), .B (n_8), .Y (n_16));
  NAND2X1 g2027__6417(.A (reset_n), .B (n_8), .Y (n_12));
  NOR3X1 g2028__5477(.A (x2a_wrlast), .B (n_2), .C (n_7), .Y (n_15));
  NOR3X1 g2029__2398(.A (x2a_rdlast), .B (n_2), .C (n_4), .Y (n_14));
  AOI31X1 g2030__5107(.A0 (x2a_rdok), .A1 (n_3), .A2 (n_1), .B0 (n_6),
       .Y (n_13));
  NOR2BX1 g2031__6260(.AN (n_7), .B (n_2), .Y (n_11));
  NOR2BX1 g2032__4319(.AN (n_4), .B (n_2), .Y (n_10));
  NAND4XL g2033__8428(.A (x2a_rdok), .B (n_161), .C (rd_xfr_count[1]),
       .D (n_3), .Y (n_9));
  OAI21X1 g2034__5526(.A0 (rd_xfr_count[1]), .A1 (n_108), .B0 (n_5), .Y
       (n_8));
  NOR2X1 g2035__6783(.A (x2a_wrlast), .B (x2a_wrnext), .Y (n_7));
  INVX1 g2036(.A (n_5), .Y (n_6));
  NAND2BX1 g2037__3680(.AN (n_161), .B (x2a_rdok), .Y (n_5));
  NOR2X1 g2038__1617(.A (x2a_rdlast), .B (x2a_rdok), .Y (n_4));
  INVX1 g2039(.A (rd_xfr_count[0]), .Y (n_3));
  INVX1 g2040(.A (reset_n), .Y (n_2));
  INVX1 g2041(.A (rd_xfr_count[1]), .Y (n_1));
  NOR2BX1 g2288__2802(.AN (n_13), .B (n_2), .Y (n_0));
  XOR2XL inc_add_204_41_g21__1705(.A (wr_xfr_count[1]), .B
       (wr_xfr_count[0]), .Y (n_162));
  XOR2XL inc_add_212_43_g21__5122(.A (rd_xfr_count[1]), .B
       (rd_xfr_count[0]), .Y (n_163));
  AOI22X1 g2(.A0 (rd_xfr_count[1]), .A1 (n_61), .B0 (x2a_rdok), .B1
       (n_58), .Y (n_224));
endmodule

