/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP5-3
// Date      : Fri Jun  9 13:41:22 2017
/////////////////////////////////////////////////////////////


module conf_int_add__noFF__arch_agnos_OP_BITWIDTH18_DATA_PATH_BITWIDTH24 ( clk, 
        rst, a, b, d );
  input [23:0] a;
  input [23:0] b;
  output [24:0] d;
  input clk, rst;
  wire   n1, n2, n3, n4, n5, n6, n7, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n22, n23, n26, n28, n29, n30, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n407, n408, n409, n410, n411, n412, n413,
         n416, n417, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n455, n456, n457, n458, n459, n460, n462, n463, n464,
         n465, n466, n467, n468;

  INV_X4 U5 ( .A(b[9]), .ZN(n165) );
  NAND2_X2 U7 ( .A1(n48), .A2(n47), .ZN(n232) );
  NOR2_X2 U10 ( .A1(b[19]), .A2(a[19]), .ZN(n386) );
  BUF_X4 U13 ( .A(n262), .Z(n1) );
  NAND2_X2 U17 ( .A1(n204), .A2(n205), .ZN(n138) );
  NAND3_X2 U19 ( .A1(n369), .A2(n208), .A3(n207), .ZN(n81) );
  NAND2_X2 U20 ( .A1(n371), .A2(n174), .ZN(n369) );
  AOI21_X2 U22 ( .B1(n438), .B2(n393), .A(n392), .ZN(n2) );
  AOI21_X2 U24 ( .B1(n17), .B2(n19), .A(n18), .ZN(n4) );
  AOI21_X2 U25 ( .B1(n102), .B2(n147), .A(n171), .ZN(n407) );
  NAND2_X1 U33 ( .A1(n10), .A2(n385), .ZN(n51) );
  NAND3_X1 U37 ( .A1(n366), .A2(n364), .A3(n365), .ZN(d[15]) );
  NAND2_X2 U39 ( .A1(n408), .A2(n412), .ZN(n150) );
  AOI22_X1 U40 ( .A1(n317), .A2(n424), .B1(n316), .B2(n315), .ZN(n321) );
  NOR2_X2 U41 ( .A1(n244), .A2(n233), .ZN(n110) );
  INV_X4 U48 ( .A(n403), .ZN(n171) );
  INV_X2 U49 ( .A(n295), .ZN(n200) );
  NAND2_X1 U52 ( .A1(n140), .A2(n187), .ZN(n189) );
  NAND2_X2 U53 ( .A1(n296), .A2(n304), .ZN(n299) );
  NAND2_X2 U54 ( .A1(n214), .A2(n302), .ZN(n215) );
  NAND2_X2 U56 ( .A1(n413), .A2(n220), .ZN(n144) );
  INV_X2 U57 ( .A(n458), .ZN(n342) );
  NOR2_X2 U59 ( .A1(b[15]), .A2(a[15]), .ZN(n61) );
  NOR3_X1 U61 ( .A1(n88), .A2(n87), .A3(n191), .ZN(d[16]) );
  NAND2_X1 U62 ( .A1(n58), .A2(n57), .ZN(d[23]) );
  AOI22_X1 U63 ( .A1(n363), .A2(n424), .B1(n362), .B2(n429), .ZN(n364) );
  INV_X4 U65 ( .A(n26), .ZN(n370) );
  NOR2_X1 U66 ( .A1(n190), .A2(n189), .ZN(n191) );
  NAND2_X1 U67 ( .A1(n334), .A2(n333), .ZN(n335) );
  INV_X2 U69 ( .A(n329), .ZN(n225) );
  NAND3_X1 U70 ( .A1(n38), .A2(n286), .A3(n277), .ZN(n285) );
  XNOR2_X1 U71 ( .A(n272), .B(n38), .ZN(d[4]) );
  NOR3_X1 U72 ( .A1(n286), .A2(n38), .A3(n287), .ZN(n288) );
  AND2_X2 U74 ( .A1(n393), .A2(n391), .ZN(n152) );
  NOR2_X2 U75 ( .A1(n290), .A2(n279), .ZN(n272) );
  NAND2_X1 U77 ( .A1(n331), .A2(n30), .ZN(n330) );
  INV_X2 U78 ( .A(n422), .ZN(n427) );
  INV_X1 U79 ( .A(n378), .ZN(n33) );
  OR2_X2 U80 ( .A1(n188), .A2(n73), .ZN(n140) );
  INV_X2 U81 ( .A(n324), .ZN(n331) );
  INV_X2 U82 ( .A(n179), .ZN(n187) );
  OR2_X2 U85 ( .A1(n339), .A2(n109), .ZN(n155) );
  INV_X4 U86 ( .A(n229), .ZN(n10) );
  INV_X2 U87 ( .A(n452), .ZN(n420) );
  NOR2_X2 U88 ( .A1(n342), .A2(n61), .ZN(n346) );
  INV_X2 U89 ( .A(n397), .ZN(n398) );
  NAND2_X2 U90 ( .A1(n63), .A2(n105), .ZN(n308) );
  INV_X2 U91 ( .A(n114), .ZN(n374) );
  INV_X2 U92 ( .A(n113), .ZN(n157) );
  INV_X2 U93 ( .A(n394), .ZN(n395) );
  AND2_X2 U96 ( .A1(a[4]), .A2(b[4]), .ZN(n279) );
  XOR2_X2 U98 ( .A(a[23]), .B(b[23]), .Z(n269) );
  NAND2_X2 U99 ( .A1(b[12]), .A2(a[12]), .ZN(n114) );
  NAND2_X2 U100 ( .A1(a[16]), .A2(b[16]), .ZN(n113) );
  INV_X4 U103 ( .A(n213), .ZN(n44) );
  AOI21_X2 U105 ( .B1(n80), .B2(n14), .A(n11), .ZN(n16) );
  NAND2_X2 U106 ( .A1(n13), .A2(n12), .ZN(n11) );
  NAND2_X2 U107 ( .A1(n52), .A2(n10), .ZN(n12) );
  NAND2_X2 U108 ( .A1(n10), .A2(n53), .ZN(n13) );
  NOR2_X2 U109 ( .A1(n383), .A2(n382), .ZN(n14) );
  NAND2_X2 U110 ( .A1(n312), .A2(n314), .ZN(n383) );
  NAND2_X2 U111 ( .A1(n15), .A2(n34), .ZN(n80) );
  NAND3_X2 U112 ( .A1(n197), .A2(n223), .A3(n74), .ZN(n15) );
  AOI21_X2 U113 ( .B1(n132), .B2(n193), .A(n143), .ZN(n34) );
  XNOR2_X1 U114 ( .A(n16), .B(n231), .ZN(d[18]) );
  BUF_X4 U115 ( .A(n80), .Z(n17) );
  NOR3_X1 U117 ( .A1(n383), .A2(n384), .A3(n382), .ZN(n19) );
  NAND4_X1 U119 ( .A1(n237), .A2(n134), .A3(n152), .A4(n6), .ZN(n20) );
  AOI21_X2 U121 ( .B1(n438), .B2(n152), .A(n6), .ZN(n22) );
  NOR2_X2 U122 ( .A1(n237), .A2(n6), .ZN(n23) );
  INV_X4 U123 ( .A(n93), .ZN(n194) );
  NOR2_X2 U127 ( .A1(n167), .A2(n166), .ZN(n168) );
  AOI21_X1 U130 ( .B1(n337), .B2(n336), .A(n335), .ZN(d[12]) );
  NAND2_X2 U131 ( .A1(n29), .A2(n28), .ZN(n96) );
  INV_X2 U132 ( .A(n246), .ZN(n28) );
  NAND2_X2 U133 ( .A1(n99), .A2(n97), .ZN(n29) );
  NAND2_X2 U134 ( .A1(n402), .A2(n449), .ZN(n69) );
  BUF_X4 U136 ( .A(n174), .Z(n30) );
  NAND2_X2 U137 ( .A1(n324), .A2(n30), .ZN(n327) );
  INV_X2 U139 ( .A(n174), .ZN(n338) );
  NAND2_X2 U140 ( .A1(n108), .A2(n34), .ZN(n390) );
  NAND2_X4 U141 ( .A1(n36), .A2(n35), .ZN(n270) );
  INV_X8 U142 ( .A(a[3]), .ZN(n35) );
  NAND2_X2 U144 ( .A1(n94), .A2(n37), .ZN(n93) );
  NAND2_X4 U146 ( .A1(b[2]), .A2(a[2]), .ZN(n94) );
  OAI21_X2 U147 ( .B1(n38), .B2(n290), .A(n67), .ZN(n293) );
  NAND2_X2 U148 ( .A1(n270), .A2(n441), .ZN(n38) );
  NAND2_X2 U149 ( .A1(n41), .A2(n39), .ZN(n217) );
  AOI21_X2 U150 ( .B1(n242), .B2(n216), .A(n40), .ZN(n39) );
  OAI22_X2 U151 ( .A1(n215), .A2(n296), .B1(n302), .B2(n214), .ZN(n40) );
  NAND2_X2 U152 ( .A1(n43), .A2(n117), .ZN(n41) );
  NOR2_X2 U154 ( .A1(n44), .A2(n256), .ZN(n43) );
  NOR2_X4 U155 ( .A1(n244), .A2(n297), .ZN(n256) );
  NAND2_X4 U157 ( .A1(a[5]), .A2(b[5]), .ZN(n45) );
  NAND2_X4 U158 ( .A1(a[4]), .A2(b[4]), .ZN(n46) );
  NOR2_X4 U159 ( .A1(n229), .A2(n50), .ZN(n141) );
  NAND2_X4 U160 ( .A1(n49), .A2(n232), .ZN(n229) );
  INV_X8 U161 ( .A(a[17]), .ZN(n47) );
  NAND2_X2 U162 ( .A1(n121), .A2(n124), .ZN(n49) );
  NAND2_X4 U163 ( .A1(b[17]), .A2(a[17]), .ZN(n124) );
  NOR2_X4 U164 ( .A1(b[16]), .A2(a[16]), .ZN(n121) );
  INV_X4 U165 ( .A(n236), .ZN(n50) );
  NOR2_X4 U166 ( .A1(n386), .A2(n384), .ZN(n236) );
  NOR2_X4 U167 ( .A1(a[18]), .A2(b[18]), .ZN(n384) );
  NAND2_X2 U168 ( .A1(n59), .A2(n204), .ZN(n52) );
  NAND2_X2 U169 ( .A1(n81), .A2(n205), .ZN(n53) );
  NAND2_X4 U171 ( .A1(b[10]), .A2(a[10]), .ZN(n412) );
  NAND2_X4 U172 ( .A1(a[9]), .A2(b[9]), .ZN(n408) );
  NAND2_X2 U173 ( .A1(n56), .A2(n55), .ZN(n58) );
  INV_X2 U174 ( .A(n269), .ZN(n55) );
  BUF_X4 U177 ( .A(n124), .Z(n59) );
  NOR2_X4 U180 ( .A1(n135), .A2(n243), .ZN(n100) );
  NOR2_X4 U181 ( .A1(a[7]), .A2(b[7]), .ZN(n62) );
  NOR2_X4 U182 ( .A1(a[7]), .A2(b[7]), .ZN(n63) );
  NAND2_X4 U183 ( .A1(n162), .A2(n161), .ZN(n64) );
  INV_X1 U186 ( .A(n104), .ZN(n66) );
  NOR2_X4 U187 ( .A1(b[15]), .A2(a[15]), .ZN(n104) );
  NAND2_X2 U189 ( .A1(n270), .A2(n278), .ZN(n128) );
  NOR2_X1 U191 ( .A1(n172), .A2(n171), .ZN(n70) );
  NAND2_X2 U192 ( .A1(n165), .A2(n164), .ZN(n71) );
  NAND2_X4 U193 ( .A1(a[1]), .A2(b[1]), .ZN(n72) );
  NAND2_X1 U194 ( .A1(n66), .A2(n208), .ZN(n73) );
  NAND2_X2 U195 ( .A1(n195), .A2(n194), .ZN(n74) );
  INV_X4 U197 ( .A(n139), .ZN(n413) );
  NOR2_X4 U198 ( .A1(n173), .A2(n146), .ZN(n197) );
  NAND2_X2 U199 ( .A1(n340), .A2(n339), .ZN(n429) );
  NAND2_X2 U201 ( .A1(n118), .A2(n91), .ZN(n411) );
  NAND2_X2 U202 ( .A1(n271), .A2(n223), .ZN(n91) );
  INV_X1 U203 ( .A(n345), .ZN(n154) );
  NAND2_X1 U204 ( .A1(n421), .A2(n425), .ZN(n433) );
  NOR2_X1 U205 ( .A1(n346), .A2(n343), .ZN(n355) );
  INV_X1 U206 ( .A(a[22]), .ZN(n258) );
  OAI21_X1 U209 ( .B1(n282), .B2(n281), .A(n280), .ZN(n284) );
  INV_X1 U210 ( .A(n75), .ZN(n281) );
  INV_X1 U211 ( .A(n286), .ZN(n280) );
  NOR2_X1 U212 ( .A1(n287), .A2(n67), .ZN(n282) );
  NOR2_X1 U215 ( .A1(n355), .A2(n354), .ZN(n356) );
  INV_X1 U216 ( .A(n109), .ZN(n354) );
  NOR2_X2 U217 ( .A1(n429), .A2(n355), .ZN(n347) );
  NAND2_X1 U218 ( .A1(n456), .A2(n82), .ZN(n316) );
  XNOR2_X1 U220 ( .A(n77), .B(n314), .ZN(n315) );
  INV_X1 U221 ( .A(n77), .ZN(n137) );
  INV_X2 U222 ( .A(n232), .ZN(n382) );
  INV_X2 U223 ( .A(n230), .ZN(n387) );
  NAND2_X1 U226 ( .A1(n302), .A2(n301), .ZN(n303) );
  NOR2_X2 U227 ( .A1(n367), .A2(n109), .ZN(n375) );
  NAND2_X1 U229 ( .A1(n331), .A2(n325), .ZN(n326) );
  NAND2_X1 U230 ( .A1(n329), .A2(n328), .ZN(n334) );
  INV_X1 U231 ( .A(n327), .ZN(n328) );
  NAND3_X1 U232 ( .A1(n373), .A2(n372), .A3(n371), .ZN(n377) );
  INV_X1 U233 ( .A(n375), .ZN(n372) );
  NAND2_X1 U234 ( .A1(n375), .A2(n374), .ZN(n376) );
  NAND2_X1 U235 ( .A1(n375), .A2(n368), .ZN(n378) );
  INV_X1 U236 ( .A(n384), .ZN(n385) );
  AOI21_X1 U237 ( .B1(n388), .B2(n391), .A(n387), .ZN(n389) );
  INV_X1 U238 ( .A(n386), .ZN(n388) );
  INV_X2 U239 ( .A(n391), .ZN(n392) );
  OAI21_X1 U241 ( .B1(n263), .B2(n262), .A(n261), .ZN(n264) );
  XNOR2_X2 U242 ( .A(a[3]), .B(b[3]), .ZN(n253) );
  OAI21_X1 U243 ( .B1(n396), .B2(n252), .A(n94), .ZN(n254) );
  INV_X2 U244 ( .A(n251), .ZN(n252) );
  XNOR2_X1 U245 ( .A(n293), .B(n292), .ZN(d[5]) );
  NAND3_X1 U246 ( .A1(n285), .A2(n284), .A3(n283), .ZN(n289) );
  OAI21_X1 U247 ( .B1(n401), .B2(n90), .A(n101), .ZN(d[7]) );
  OAI21_X1 U248 ( .B1(n311), .B2(n310), .A(n309), .ZN(d[9]) );
  XOR2_X2 U249 ( .A(b[9]), .B(a[9]), .Z(n311) );
  AOI22_X1 U250 ( .A1(n429), .A2(n428), .B1(n109), .B2(n427), .ZN(n430) );
  NAND2_X1 U251 ( .A1(n425), .A2(n426), .ZN(n431) );
  NAND2_X1 U253 ( .A1(n421), .A2(n319), .ZN(n322) );
  NOR2_X1 U254 ( .A1(n387), .A2(n384), .ZN(n231) );
  NAND3_X1 U255 ( .A1(n307), .A2(n306), .A3(n305), .ZN(d[24]) );
  AOI22_X1 U256 ( .A1(n304), .A2(n303), .B1(a[23]), .B2(b[23]), .ZN(n305) );
  XNOR2_X2 U257 ( .A(b[17]), .B(a[17]), .ZN(n77) );
  NAND2_X2 U258 ( .A1(n98), .A2(n80), .ZN(n97) );
  NAND3_X1 U259 ( .A1(n216), .A2(n256), .A3(n80), .ZN(n211) );
  NAND2_X1 U260 ( .A1(n391), .A2(n80), .ZN(n78) );
  INV_X1 U261 ( .A(n110), .ZN(n79) );
  INV_X2 U262 ( .A(n81), .ZN(n209) );
  NOR2_X1 U263 ( .A1(n209), .A2(n77), .ZN(n111) );
  NOR2_X1 U264 ( .A1(n121), .A2(n209), .ZN(n82) );
  NOR2_X2 U266 ( .A1(n86), .A2(n370), .ZN(n219) );
  NAND2_X2 U267 ( .A1(n213), .A2(n442), .ZN(n86) );
  NOR2_X4 U268 ( .A1(n242), .A2(n215), .ZN(n213) );
  INV_X4 U269 ( .A(n262), .ZN(n242) );
  NOR2_X2 U271 ( .A1(n121), .A2(n157), .ZN(n179) );
  NOR2_X4 U273 ( .A1(b[8]), .A2(a[8]), .ZN(n89) );
  BUF_X4 U274 ( .A(n102), .Z(n90) );
  NAND2_X2 U275 ( .A1(n224), .A2(n91), .ZN(n424) );
  NAND2_X2 U276 ( .A1(n400), .A2(n91), .ZN(n102) );
  AOI21_X2 U278 ( .B1(n92), .B2(n343), .A(n203), .ZN(n204) );
  NAND2_X1 U280 ( .A1(n96), .A2(n95), .ZN(d[21]) );
  NAND3_X1 U281 ( .A1(n99), .A2(n97), .A3(n246), .ZN(n95) );
  NOR3_X2 U282 ( .A1(n244), .A2(n297), .A3(n243), .ZN(n98) );
  NAND2_X2 U283 ( .A1(n100), .A2(n300), .ZN(n99) );
  NAND2_X2 U287 ( .A1(n90), .A2(n401), .ZN(n101) );
  NOR2_X4 U288 ( .A1(n129), .A2(n128), .ZN(n223) );
  NAND2_X2 U289 ( .A1(n112), .A2(n194), .ZN(n271) );
  XOR2_X2 U290 ( .A(b[2]), .B(a[2]), .Z(n397) );
  NAND2_X4 U291 ( .A1(a[8]), .A2(b[8]), .ZN(n105) );
  NAND3_X1 U293 ( .A1(n321), .A2(n322), .A3(n320), .ZN(d[17]) );
  NOR2_X2 U294 ( .A1(n332), .A2(n206), .ZN(n368) );
  INV_X1 U295 ( .A(n332), .ZN(n325) );
  OAI21_X1 U296 ( .B1(n332), .B2(n331), .A(n330), .ZN(n333) );
  NOR2_X4 U297 ( .A1(a[11]), .A2(b[11]), .ZN(n332) );
  NAND2_X2 U298 ( .A1(n455), .A2(n247), .ZN(n107) );
  INV_X4 U299 ( .A(n297), .ZN(n126) );
  INV_X4 U300 ( .A(n297), .ZN(n241) );
  NAND3_X2 U301 ( .A1(n197), .A2(n196), .A3(n223), .ZN(n108) );
  AND2_X2 U303 ( .A1(n111), .A2(n456), .ZN(n319) );
  NAND2_X4 U304 ( .A1(a[14]), .A2(b[14]), .ZN(n419) );
  NAND2_X1 U305 ( .A1(n244), .A2(n186), .ZN(n190) );
  NAND3_X2 U307 ( .A1(n107), .A2(n251), .A3(n64), .ZN(n112) );
  NAND2_X4 U308 ( .A1(n160), .A2(n159), .ZN(n251) );
  NAND2_X4 U309 ( .A1(a[16]), .A2(b[16]), .ZN(n202) );
  NAND2_X4 U310 ( .A1(b[12]), .A2(a[12]), .ZN(n115) );
  NAND2_X1 U311 ( .A1(n450), .A2(n403), .ZN(n222) );
  INV_X2 U312 ( .A(n408), .ZN(n409) );
  NOR2_X1 U313 ( .A1(n222), .A2(n439), .ZN(n149) );
  NOR3_X1 U314 ( .A1(n244), .A2(n299), .A3(n297), .ZN(n298) );
  NOR2_X1 U315 ( .A1(n289), .A2(n288), .ZN(d[6]) );
  NOR2_X2 U316 ( .A1(n259), .A2(n245), .ZN(n246) );
  OAI21_X1 U317 ( .B1(n166), .B2(n158), .A(n179), .ZN(n169) );
  INV_X1 U318 ( .A(n184), .ZN(n185) );
  NAND2_X1 U319 ( .A1(n185), .A2(n345), .ZN(n186) );
  NOR2_X2 U321 ( .A1(n255), .A2(n295), .ZN(n257) );
  NOR2_X2 U322 ( .A1(n255), .A2(n214), .ZN(n216) );
  NAND2_X4 U323 ( .A1(n239), .A2(n210), .ZN(n255) );
  NAND2_X1 U324 ( .A1(n125), .A2(n300), .ZN(n306) );
  AOI21_X1 U325 ( .B1(n358), .B2(n201), .A(n109), .ZN(n359) );
  NOR2_X1 U326 ( .A1(n342), .A2(n201), .ZN(n184) );
  XOR2_X2 U327 ( .A(a[1]), .B(b[1]), .Z(n394) );
  NAND3_X1 U328 ( .A1(n428), .A2(n423), .A3(n424), .ZN(n432) );
  OAI21_X1 U329 ( .B1(n329), .B2(n326), .A(n424), .ZN(n336) );
  NOR3_X2 U330 ( .A1(n218), .A2(n219), .A3(n217), .ZN(d[22]) );
  BUF_X4 U331 ( .A(n278), .Z(n119) );
  NOR2_X4 U332 ( .A1(n344), .A2(n156), .ZN(n208) );
  INV_X8 U333 ( .A(b[1]), .ZN(n161) );
  INV_X8 U334 ( .A(a[2]), .ZN(n159) );
  BUF_X4 U335 ( .A(n127), .Z(n120) );
  BUF_X4 U337 ( .A(n193), .Z(n123) );
  NAND2_X1 U338 ( .A1(n230), .A2(n124), .ZN(n199) );
  NOR2_X4 U340 ( .A1(n126), .A2(n242), .ZN(n135) );
  INV_X2 U341 ( .A(n120), .ZN(n249) );
  NAND2_X4 U343 ( .A1(b[0]), .A2(a[0]), .ZN(n127) );
  NAND3_X1 U344 ( .A1(n286), .A2(n287), .A3(n75), .ZN(n283) );
  NAND2_X4 U345 ( .A1(a[1]), .A2(b[1]), .ZN(n247) );
  INV_X2 U346 ( .A(n468), .ZN(n129) );
  NAND2_X2 U347 ( .A1(n221), .A2(n142), .ZN(n132) );
  NAND3_X2 U348 ( .A1(n163), .A2(n251), .A3(n250), .ZN(n195) );
  NAND2_X4 U349 ( .A1(a[8]), .A2(b[8]), .ZN(n404) );
  NAND2_X4 U350 ( .A1(n131), .A2(n130), .ZN(n278) );
  INV_X8 U351 ( .A(a[4]), .ZN(n130) );
  INV_X4 U352 ( .A(b[4]), .ZN(n131) );
  NAND2_X4 U353 ( .A1(b[7]), .A2(a[7]), .ZN(n403) );
  OAI21_X2 U354 ( .B1(n410), .B2(n439), .A(n76), .ZN(n329) );
  NOR2_X2 U355 ( .A1(n133), .A2(n348), .ZN(n410) );
  NAND2_X2 U356 ( .A1(n71), .A2(n405), .ZN(n348) );
  NOR2_X4 U359 ( .A1(b[12]), .A2(a[12]), .ZN(n206) );
  NOR2_X4 U361 ( .A1(a[10]), .A2(b[10]), .ZN(n139) );
  NOR2_X4 U362 ( .A1(n116), .A2(n183), .ZN(n312) );
  NOR2_X1 U363 ( .A1(n373), .A2(n73), .ZN(n158) );
  NOR3_X1 U364 ( .A1(n373), .A2(n187), .A3(n116), .ZN(n180) );
  INV_X8 U365 ( .A(n141), .ZN(n297) );
  AOI21_X2 U366 ( .B1(n236), .B2(n199), .A(n198), .ZN(n262) );
  NOR2_X2 U367 ( .A1(n446), .A2(n171), .ZN(n142) );
  NAND2_X2 U368 ( .A1(n170), .A2(n273), .ZN(n221) );
  NAND2_X2 U369 ( .A1(n147), .A2(n71), .ZN(n146) );
  NOR2_X2 U371 ( .A1(n399), .A2(n148), .ZN(n224) );
  INV_X2 U372 ( .A(n149), .ZN(n148) );
  AOI21_X2 U373 ( .B1(n69), .B2(n350), .A(n464), .ZN(n352) );
  NOR2_X4 U374 ( .A1(b[5]), .A2(a[5]), .ZN(n151) );
  NOR2_X4 U375 ( .A1(b[6]), .A2(a[6]), .ZN(n274) );
  NAND2_X4 U376 ( .A1(b[6]), .A2(a[6]), .ZN(n275) );
  NAND2_X2 U377 ( .A1(n201), .A2(n367), .ZN(n205) );
  INV_X1 U378 ( .A(n445), .ZN(n277) );
  NAND2_X1 U379 ( .A1(n368), .A2(n76), .ZN(n351) );
  NAND2_X4 U382 ( .A1(b[13]), .A2(a[13]), .ZN(n188) );
  INV_X4 U383 ( .A(n188), .ZN(n367) );
  NOR2_X2 U384 ( .A1(n367), .A2(n374), .ZN(n339) );
  NOR2_X4 U385 ( .A1(b[13]), .A2(a[13]), .ZN(n156) );
  NAND2_X4 U386 ( .A1(a[15]), .A2(b[15]), .ZN(n358) );
  NAND2_X2 U387 ( .A1(n419), .A2(n65), .ZN(n345) );
  NOR2_X4 U388 ( .A1(b[14]), .A2(a[14]), .ZN(n344) );
  NOR2_X4 U389 ( .A1(b[15]), .A2(a[15]), .ZN(n341) );
  AOI21_X2 U390 ( .B1(n155), .B2(n154), .A(n184), .ZN(n166) );
  INV_X8 U392 ( .A(a[9]), .ZN(n164) );
  NAND2_X4 U393 ( .A1(a[11]), .A2(b[11]), .ZN(n174) );
  NOR4_X1 U394 ( .A1(n179), .A2(n367), .A3(n345), .A4(n369), .ZN(n175) );
  NAND2_X2 U396 ( .A1(n332), .A2(n115), .ZN(n182) );
  NAND2_X2 U398 ( .A1(n182), .A2(n323), .ZN(n183) );
  INV_X8 U399 ( .A(n312), .ZN(n244) );
  NAND2_X2 U400 ( .A1(n466), .A2(n194), .ZN(n196) );
  NAND2_X4 U401 ( .A1(b[19]), .A2(a[19]), .ZN(n391) );
  NAND2_X4 U402 ( .A1(a[20]), .A2(b[20]), .ZN(n238) );
  NAND2_X2 U403 ( .A1(n391), .A2(n238), .ZN(n198) );
  NOR2_X4 U404 ( .A1(b[22]), .A2(a[22]), .ZN(n295) );
  NAND2_X4 U406 ( .A1(b[21]), .A2(a[21]), .ZN(n302) );
  INV_X4 U407 ( .A(n419), .ZN(n343) );
  NAND2_X2 U408 ( .A1(n358), .A2(n202), .ZN(n203) );
  NOR2_X2 U409 ( .A1(n206), .A2(n104), .ZN(n207) );
  NOR2_X4 U410 ( .A1(a[20]), .A2(b[20]), .ZN(n243) );
  INV_X4 U411 ( .A(n243), .ZN(n239) );
  NOR2_X4 U412 ( .A1(b[21]), .A2(a[21]), .ZN(n245) );
  INV_X4 U413 ( .A(n245), .ZN(n210) );
  NAND2_X2 U414 ( .A1(n212), .A2(n211), .ZN(n218) );
  INV_X4 U415 ( .A(n255), .ZN(n296) );
  XOR2_X2 U416 ( .A(a[11]), .B(b[11]), .Z(n228) );
  NAND2_X2 U417 ( .A1(n225), .A2(n424), .ZN(n227) );
  NAND2_X2 U418 ( .A1(n227), .A2(n228), .ZN(n226) );
  OAI21_X1 U419 ( .B1(n228), .B2(n227), .A(n226), .ZN(d[11]) );
  NAND2_X2 U422 ( .A1(n110), .A2(n390), .ZN(n237) );
  INV_X4 U423 ( .A(n234), .ZN(n235) );
  INV_X4 U425 ( .A(n302), .ZN(n259) );
  AOI21_X2 U426 ( .B1(n64), .B2(n249), .A(n248), .ZN(n396) );
  XNOR2_X1 U427 ( .A(n254), .B(n253), .ZN(d[3]) );
  INV_X4 U429 ( .A(n257), .ZN(n263) );
  NOR2_X2 U430 ( .A1(n297), .A2(n263), .ZN(n265) );
  NAND2_X2 U431 ( .A1(n302), .A2(n258), .ZN(n260) );
  AOI22_X2 U432 ( .A1(b[22]), .A2(n260), .B1(n259), .B2(a[22]), .ZN(n261) );
  AOI21_X2 U433 ( .B1(n266), .B2(n265), .A(n264), .ZN(n267) );
  XOR2_X1 U434 ( .A(b[0]), .B(a[0]), .Z(d[0]) );
  NAND3_X2 U436 ( .A1(n411), .A2(n69), .A3(n405), .ZN(n310) );
  NAND2_X2 U437 ( .A1(n310), .A2(n311), .ZN(n309) );
  AOI22_X2 U439 ( .A1(n319), .A2(n329), .B1(n244), .B2(n453), .ZN(n320) );
  NAND2_X2 U440 ( .A1(n323), .A2(n371), .ZN(n324) );
  NAND2_X2 U442 ( .A1(n368), .A2(n338), .ZN(n340) );
  OAI22_X2 U444 ( .A1(n346), .A2(n452), .B1(n345), .B2(n60), .ZN(n360) );
  INV_X2 U445 ( .A(n348), .ZN(n350) );
  NAND2_X2 U446 ( .A1(n360), .A2(n359), .ZN(n361) );
  NOR2_X2 U448 ( .A1(n361), .A2(n426), .ZN(n363) );
  NOR2_X2 U450 ( .A1(n370), .A2(n153), .ZN(n380) );
  AOI21_X2 U453 ( .B1(n411), .B2(n410), .A(n409), .ZN(n417) );
  XNOR2_X1 U454 ( .A(n417), .B(n416), .ZN(d[10]) );
  NAND2_X2 U455 ( .A1(n420), .A2(n419), .ZN(n422) );
  NOR2_X2 U457 ( .A1(n427), .A2(n109), .ZN(n428) );
  NAND4_X1 U458 ( .A1(n433), .A2(n432), .A3(n431), .A4(n430), .ZN(d[14]) );
  NAND2_X2 U42 ( .A1(n308), .A2(n448), .ZN(n145) );
  NAND2_X4 U145 ( .A1(a[3]), .A2(b[3]), .ZN(n37) );
  NAND2_X4 U8 ( .A1(b[12]), .A2(a[12]), .ZN(n371) );
  NAND2_X2 U26 ( .A1(a[8]), .A2(b[8]), .ZN(n106) );
  INV_X2 U302 ( .A(n69), .ZN(n133) );
  NOR2_X2 U44 ( .A1(n145), .A2(n144), .ZN(n193) );
  AND2_X4 U34 ( .A1(n239), .A2(n238), .ZN(n6) );
  INV_X4 U29 ( .A(n119), .ZN(n290) );
  INV_X2 U213 ( .A(n361), .ZN(n362) );
  INV_X4 U391 ( .A(a[1]), .ZN(n162) );
  NAND2_X2 U11 ( .A1(n298), .A2(n370), .ZN(n307) );
  NAND2_X2 U21 ( .A1(n408), .A2(n412), .ZN(n439) );
  INV_X4 U30 ( .A(n341), .ZN(n92) );
  OR2_X2 U38 ( .A1(n375), .A2(n369), .ZN(n153) );
  NAND2_X2 U45 ( .A1(n75), .A2(n291), .ZN(n292) );
  NAND2_X2 U60 ( .A1(a[18]), .A2(b[18]), .ZN(n230) );
  INV_X2 U94 ( .A(n121), .ZN(n314) );
  INV_X4 U118 ( .A(n444), .ZN(n118) );
  NAND2_X1 U120 ( .A1(n387), .A2(n236), .ZN(n393) );
  NAND3_X1 U125 ( .A1(n314), .A2(n232), .A3(n236), .ZN(n233) );
  NAND3_X1 U126 ( .A1(n267), .A2(n268), .A3(n269), .ZN(n57) );
  XNOR2_X1 U135 ( .A(n407), .B(n437), .ZN(d[8]) );
  AND2_X2 U138 ( .A1(n106), .A2(n405), .ZN(n437) );
  NOR2_X2 U176 ( .A1(n169), .A2(n168), .ZN(n87) );
  NOR2_X1 U178 ( .A1(n313), .A2(n329), .ZN(n317) );
  NAND2_X1 U179 ( .A1(n464), .A2(n76), .ZN(n440) );
  NAND2_X2 U207 ( .A1(n194), .A2(n112), .ZN(n441) );
  NAND2_X4 U219 ( .A1(n266), .A2(n241), .ZN(n442) );
  NAND2_X2 U272 ( .A1(n42), .A2(n241), .ZN(n117) );
  NAND2_X2 U279 ( .A1(n103), .A2(n460), .ZN(n399) );
  NAND2_X1 U285 ( .A1(n468), .A2(n445), .ZN(n103) );
  NAND2_X1 U286 ( .A1(n443), .A2(n20), .ZN(d[20]) );
  NOR2_X2 U292 ( .A1(n22), .A2(n23), .ZN(n443) );
  INV_X2 U306 ( .A(n192), .ZN(n143) );
  NAND2_X2 U320 ( .A1(n150), .A2(n76), .ZN(n192) );
  NAND2_X2 U357 ( .A1(n70), .A2(n103), .ZN(n444) );
  NAND2_X2 U358 ( .A1(n267), .A2(n268), .ZN(n56) );
  NAND3_X2 U360 ( .A1(n390), .A2(n256), .A3(n257), .ZN(n268) );
  NAND2_X2 U380 ( .A1(n405), .A2(n76), .ZN(n173) );
  NOR2_X4 U381 ( .A1(n60), .A2(n451), .ZN(n201) );
  NOR2_X4 U395 ( .A1(b[15]), .A2(a[15]), .ZN(n60) );
  OAI22_X2 U420 ( .A1(n5), .A2(n177), .B1(n181), .B2(n118), .ZN(n88) );
  NAND2_X2 U421 ( .A1(n46), .A2(n459), .ZN(n445) );
  NAND2_X2 U424 ( .A1(n46), .A2(n45), .ZN(n273) );
  INV_X1 U428 ( .A(n399), .ZN(n400) );
  NOR2_X1 U435 ( .A1(n26), .A2(n378), .ZN(n381) );
  INV_X2 U438 ( .A(n424), .ZN(n421) );
  NAND2_X2 U441 ( .A1(n404), .A2(n275), .ZN(n446) );
  NOR2_X4 U443 ( .A1(a[10]), .A2(b[10]), .ZN(n447) );
  INV_X4 U449 ( .A(n463), .ZN(n448) );
  INV_X4 U452 ( .A(n89), .ZN(n405) );
  NOR3_X1 U461 ( .A1(n4), .A2(n3), .A3(n2), .ZN(d[19]) );
  NOR2_X4 U462 ( .A1(b[14]), .A2(a[14]), .ZN(n451) );
  AND2_X2 U463 ( .A1(n456), .A2(n137), .ZN(n453) );
  NAND2_X4 U277 ( .A1(n208), .A2(n92), .ZN(n116) );
  NAND2_X4 U3 ( .A1(n165), .A2(n164), .ZN(n220) );
  NAND2_X2 U97 ( .A1(b[4]), .A2(a[4]), .ZN(n67) );
  NAND2_X2 U51 ( .A1(a[22]), .A2(b[22]), .ZN(n301) );
  NAND2_X2 U50 ( .A1(a[15]), .A2(b[15]), .ZN(n65) );
  NAND2_X2 U47 ( .A1(b[6]), .A2(a[6]), .ZN(n68) );
  MUX2_X2 U55 ( .A(n395), .B(n394), .S(n120), .Z(d[1]) );
  AND2_X1 U35 ( .A1(n314), .A2(n77), .ZN(n7) );
  MUX2_X2 U451 ( .A(n398), .B(n397), .S(n396), .Z(d[2]) );
  NAND2_X2 U459 ( .A1(n180), .A2(n123), .ZN(n181) );
  NAND2_X2 U175 ( .A1(n436), .A2(n176), .ZN(n167) );
  INV_X2 U214 ( .A(n347), .ZN(n353) );
  INV_X4 U128 ( .A(n390), .ZN(n26) );
  NAND3_X2 U68 ( .A1(n32), .A2(n377), .A3(n376), .ZN(n379) );
  NAND2_X2 U31 ( .A1(a[8]), .A2(b[8]), .ZN(n449) );
  NOR2_X2 U225 ( .A1(a[23]), .A2(b[23]), .ZN(n294) );
  NOR2_X2 U224 ( .A1(n295), .A2(n294), .ZN(n304) );
  NAND2_X2 U405 ( .A1(n200), .A2(n301), .ZN(n214) );
  AND2_X2 U84 ( .A1(n440), .A2(n30), .ZN(n436) );
  NAND2_X2 U73 ( .A1(n33), .A2(n338), .ZN(n32) );
  INV_X4 U9 ( .A(b[17]), .ZN(n48) );
  INV_X4 U6 ( .A(b[2]), .ZN(n160) );
  INV_X4 U143 ( .A(b[3]), .ZN(n36) );
  NOR2_X1 U46 ( .A1(b[14]), .A2(a[14]), .ZN(n452) );
  NOR2_X2 U2 ( .A1(a[7]), .A2(b[7]), .ZN(n402) );
  NAND3_X2 U4 ( .A1(n176), .A2(n175), .A3(n440), .ZN(n177) );
  NOR2_X2 U12 ( .A1(n299), .A2(n135), .ZN(n125) );
  INV_X1 U14 ( .A(n247), .ZN(n248) );
  NOR3_X2 U15 ( .A1(n381), .A2(n380), .A3(n379), .ZN(d[13]) );
  INV_X2 U16 ( .A(n423), .ZN(n426) );
  NOR2_X1 U23 ( .A1(n353), .A2(n423), .ZN(n357) );
  NAND3_X2 U27 ( .A1(n441), .A2(n197), .A3(n223), .ZN(n176) );
  NOR2_X2 U28 ( .A1(b[13]), .A2(a[13]), .ZN(n109) );
  XNOR2_X1 U32 ( .A(a[7]), .B(b[7]), .ZN(n401) );
  OR2_X4 U36 ( .A1(b[5]), .A2(a[5]), .ZN(n291) );
  NAND2_X2 U58 ( .A1(n327), .A2(n421), .ZN(n337) );
  AND2_X2 U64 ( .A1(n360), .A2(n347), .ZN(n467) );
  NAND2_X2 U83 ( .A1(n291), .A2(n119), .ZN(n287) );
  INV_X4 U101 ( .A(n62), .ZN(n147) );
  NAND2_X2 U104 ( .A1(a[15]), .A2(b[15]), .ZN(n458) );
  NAND2_X2 U116 ( .A1(b[5]), .A2(a[5]), .ZN(n75) );
  NAND2_X2 U129 ( .A1(a[8]), .A2(b[8]), .ZN(n450) );
  NAND2_X2 U153 ( .A1(b[6]), .A2(a[6]), .ZN(n460) );
  NAND2_X2 U156 ( .A1(b[0]), .A2(a[0]), .ZN(n455) );
  OAI21_X1 U170 ( .B1(n357), .B2(n356), .A(n360), .ZN(n365) );
  INV_X2 U184 ( .A(n206), .ZN(n323) );
  NOR2_X2 U185 ( .A1(n352), .A2(n351), .ZN(n423) );
  INV_X1 U188 ( .A(n368), .ZN(n373) );
  NOR2_X1 U190 ( .A1(n429), .A2(n422), .ZN(n425) );
  NOR2_X2 U200 ( .A1(n78), .A2(n79), .ZN(n3) );
  NAND2_X4 U208 ( .A1(n235), .A2(n241), .ZN(n438) );
  NAND2_X2 U228 ( .A1(n241), .A2(n235), .ZN(n134) );
  INV_X4 U240 ( .A(n462), .ZN(n266) );
  INV_X2 U252 ( .A(n462), .ZN(n42) );
  NOR2_X4 U265 ( .A1(n209), .A2(n138), .ZN(n462) );
  AND2_X4 U270 ( .A1(n204), .A2(n205), .ZN(n456) );
  INV_X4 U284 ( .A(n442), .ZN(n457) );
  NAND2_X2 U336 ( .A1(n457), .A2(n216), .ZN(n212) );
  NAND2_X2 U339 ( .A1(n1), .A2(n462), .ZN(n300) );
  NAND2_X4 U342 ( .A1(a[5]), .A2(b[5]), .ZN(n459) );
  OAI21_X1 U397 ( .B1(n51), .B2(n234), .A(n389), .ZN(n18) );
  NOR2_X2 U447 ( .A1(n53), .A2(n52), .ZN(n234) );
  NAND2_X1 U456 ( .A1(n7), .A2(n312), .ZN(n313) );
  NOR2_X4 U460 ( .A1(b[8]), .A2(a[8]), .ZN(n463) );
  AND2_X2 U464 ( .A1(n123), .A2(n444), .ZN(n5) );
  NAND2_X2 U465 ( .A1(n408), .A2(n412), .ZN(n464) );
  NOR2_X4 U466 ( .A1(b[5]), .A2(a[5]), .ZN(n465) );
  NAND3_X2 U467 ( .A1(n163), .A2(n251), .A3(n250), .ZN(n466) );
  NAND2_X4 U468 ( .A1(n127), .A2(n72), .ZN(n163) );
  NAND2_X4 U469 ( .A1(n162), .A2(n161), .ZN(n250) );
  NAND2_X1 U470 ( .A1(n404), .A2(n68), .ZN(n172) );
  NAND2_X1 U471 ( .A1(n467), .A2(n421), .ZN(n366) );
  NOR2_X2 U472 ( .A1(n274), .A2(n151), .ZN(n468) );
  NOR2_X2 U473 ( .A1(n274), .A2(n465), .ZN(n170) );
  INV_X8 U196 ( .A(n447), .ZN(n76) );
  AND2_X2 U1 ( .A1(n412), .A2(n76), .ZN(n416) );
  XNOR2_X1 U18 ( .A(b[6]), .B(a[6]), .ZN(n286) );
endmodule



    module conf_int_add__noFF__arch_agnos__w_wrapper_OP_BITWIDTH18_DATA_PATH_BITWIDTH24 ( 
        clk, rst, a, b, d );
  input [23:0] a;
  input [23:0] b;
  output [24:0] d;
  input clk, rst;
  wire   n1;

  LOGIC0_X1 U2 ( .Z(n1) );
  conf_int_add__noFF__arch_agnos_OP_BITWIDTH18_DATA_PATH_BITWIDTH24 add__inst ( 
        .clk(clk), .rst(n1), .a(a), .b(b), .d(d) );
endmodule
