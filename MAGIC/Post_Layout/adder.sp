* SPICE3 file created from adder.ext - technology: scmos

.option scale=0.09u
.include TSMC_180nm.txt
.param LAMBDA = 0.09u
.param SUPPLY = 1.8v
.param W = {20*LAMBDA}
.param WIDTH_N = {W}
.param WIDTH_P = {2*W} 
.global gnd Vdd

VDD Vdd gnd DC 'SUPPLY'


* Input Signals (a3a2a1a0 = 1100 && b3b2b1b0 = 1110 expected output ===>  c4 = 1 s3s2s1s0 = 1010)
Va0 a0_in gnd 0V
Va1 a1_in gnd 0V
Va2 a2_in gnd PULSE(0 1.8 0ns 0ns 0ns 5ns 10ns) 
Va3 a3_in gnd PULSE(0 1.8 0ns 0ns 0ns 5ns 10ns) 

Vb0 b0_in gnd 0V
Vb1 b1_in gnd PULSE(0 1.8 0ns 0ns 0ns 5ns 10ns)
Vb2 b2_in gnd PULSE(0 1.8 0ns 0ns 0ns 5ns 10ns)
Vb3 b3_in gnd PULSE(0 1.8 0ns 0ns 0ns 5ns 10ns) 

Vb8 c0 gnd 0V

VS clk gnd PULSE (0 1.8 2ns 0ns 0ns 3ns 6ns)

M1000 dff_0/a_100_88# clk dff_0/a_100_28# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1001 dff_0/a_57_48# dff_0/a_17_8# dff_0/a_50_n12# dff_0/w_44_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=400 ps=170
M1002 a0 dff_0/a_100_88# vdd dff_0/w_132_78# CMOSP w=40 l=2
+  ad=400 pd=180 as=21800 ps=9550
M1003 dff_0/a_17_48# a0_in vdd dff_0/w_4_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=0 ps=0
M1004 dff_0/a_57_n12# dff_0/a_17_8# dff_0/a_50_n12# Gnd CMOSN w=40 l=2
+  ad=240 pd=92 as=200 ps=90
M1005 dff_0/a_100_88# dff_0/a_50_n12# vdd dff_0/w_87_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1006 gnd clk dff_0/a_57_n12# Gnd CMOSN w=40 l=2
+  ad=11240 pd=5304 as=0 ps=0
M1007 dff_0/a_17_8# clk dff_0/a_17_48# dff_0/w_4_38# CMOSP w=80 l=2
+  ad=400 pd=170 as=0 ps=0
M1008 vdd clk dff_0/a_57_48# dff_0/w_44_38# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1009 dff_0/a_100_28# dff_0/a_50_n12# gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1010 a0 dff_0/a_100_88# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1011 dff_0/a_17_8# a0_in gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1012 dff_1/a_100_88# clk dff_1/a_100_28# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1013 dff_1/a_57_48# dff_1/a_17_8# dff_1/a_50_n12# dff_1/w_44_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=400 ps=170
M1014 b0 dff_1/a_100_88# vdd dff_1/w_132_78# CMOSP w=40 l=2
+  ad=400 pd=180 as=0 ps=0
M1015 dff_1/a_17_48# b0_in vdd dff_1/w_4_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=0 ps=0
M1016 dff_1/a_57_n12# dff_1/a_17_8# dff_1/a_50_n12# Gnd CMOSN w=40 l=2
+  ad=240 pd=92 as=200 ps=90
M1017 dff_1/a_100_88# dff_1/a_50_n12# vdd dff_1/w_87_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1018 gnd clk dff_1/a_57_n12# Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1019 dff_1/a_17_8# clk dff_1/a_17_48# dff_1/w_4_38# CMOSP w=80 l=2
+  ad=400 pd=170 as=0 ps=0
M1020 vdd clk dff_1/a_57_48# dff_1/w_44_38# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1021 dff_1/a_100_28# dff_1/a_50_n12# gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1022 b0 dff_1/a_100_88# gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1023 dff_1/a_17_8# b0_in gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1024 dff_2/a_100_88# clk dff_2/a_100_28# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1025 dff_2/a_57_48# dff_2/a_17_8# dff_2/a_50_n12# dff_2/w_44_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=400 ps=170
M1026 a1 dff_2/a_100_88# vdd dff_2/w_132_78# CMOSP w=40 l=2
+  ad=400 pd=180 as=0 ps=0
M1027 dff_2/a_17_48# a1_in vdd dff_2/w_4_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=0 ps=0
M1028 dff_2/a_57_n12# dff_2/a_17_8# dff_2/a_50_n12# Gnd CMOSN w=40 l=2
+  ad=240 pd=92 as=200 ps=90
M1029 dff_2/a_100_88# dff_2/a_50_n12# vdd dff_2/w_87_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1030 gnd clk dff_2/a_57_n12# Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1031 dff_2/a_17_8# clk dff_2/a_17_48# dff_2/w_4_38# CMOSP w=80 l=2
+  ad=400 pd=170 as=0 ps=0
M1032 vdd clk dff_2/a_57_48# dff_2/w_44_38# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1033 dff_2/a_100_28# dff_2/a_50_n12# gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1034 a1 dff_2/a_100_88# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1035 dff_2/a_17_8# a1_in gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1036 dff_3/a_100_88# clk dff_3/a_100_28# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1037 dff_3/a_57_48# dff_3/a_17_8# dff_3/a_50_n12# dff_3/w_44_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=400 ps=170
M1038 b1 dff_3/a_100_88# vdd dff_3/w_132_78# CMOSP w=40 l=2
+  ad=400 pd=180 as=0 ps=0
M1039 dff_3/a_17_48# b1_in vdd dff_3/w_4_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=0 ps=0
M1040 dff_3/a_57_n12# dff_3/a_17_8# dff_3/a_50_n12# Gnd CMOSN w=40 l=2
+  ad=240 pd=92 as=200 ps=90
M1041 dff_3/a_100_88# dff_3/a_50_n12# vdd dff_3/w_87_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1042 gnd clk dff_3/a_57_n12# Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1043 dff_3/a_17_8# clk dff_3/a_17_48# dff_3/w_4_38# CMOSP w=80 l=2
+  ad=400 pd=170 as=0 ps=0
M1044 vdd clk dff_3/a_57_48# dff_3/w_44_38# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1045 dff_3/a_100_28# dff_3/a_50_n12# gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1046 b1 dff_3/a_100_88# gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1047 dff_3/a_17_8# b1_in gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1048 dff_5/a_100_88# clk dff_5/a_100_28# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1049 dff_5/a_57_48# dff_5/a_17_8# dff_5/a_50_n12# dff_5/w_44_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=400 ps=170
M1050 b2 dff_5/a_100_88# vdd dff_5/w_132_78# CMOSP w=40 l=2
+  ad=400 pd=180 as=0 ps=0
M1051 dff_5/a_17_48# b2_in vdd dff_5/w_4_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=0 ps=0
M1052 dff_5/a_57_n12# dff_5/a_17_8# dff_5/a_50_n12# Gnd CMOSN w=40 l=2
+  ad=240 pd=92 as=200 ps=90
M1053 dff_5/a_100_88# dff_5/a_50_n12# vdd dff_5/w_87_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1054 gnd clk dff_5/a_57_n12# Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1055 dff_5/a_17_8# clk dff_5/a_17_48# dff_5/w_4_38# CMOSP w=80 l=2
+  ad=400 pd=170 as=0 ps=0
M1056 vdd clk dff_5/a_57_48# dff_5/w_44_38# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1057 dff_5/a_100_28# dff_5/a_50_n12# gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1058 b2 dff_5/a_100_88# gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1059 dff_5/a_17_8# b2_in gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1060 dff_4/a_100_88# clk dff_4/a_100_28# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1061 dff_4/a_57_48# dff_4/a_17_8# dff_4/a_50_n12# dff_4/w_44_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=400 ps=170
M1062 a2 dff_4/a_100_88# vdd dff_4/w_132_78# CMOSP w=40 l=2
+  ad=400 pd=180 as=0 ps=0
M1063 dff_4/a_17_48# a2_in vdd dff_4/w_4_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=0 ps=0
M1064 dff_4/a_57_n12# dff_4/a_17_8# dff_4/a_50_n12# Gnd CMOSN w=40 l=2
+  ad=240 pd=92 as=200 ps=90
M1065 dff_4/a_100_88# dff_4/a_50_n12# vdd dff_4/w_87_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1066 gnd clk dff_4/a_57_n12# Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1067 dff_4/a_17_8# clk dff_4/a_17_48# dff_4/w_4_38# CMOSP w=80 l=2
+  ad=400 pd=170 as=0 ps=0
M1068 vdd clk dff_4/a_57_48# dff_4/w_44_38# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1069 dff_4/a_100_28# dff_4/a_50_n12# gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1070 a2 dff_4/a_100_88# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1071 dff_4/a_17_8# a2_in gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1072 dff_6/a_100_88# clk dff_6/a_100_28# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1073 dff_6/a_57_48# dff_6/a_17_8# dff_6/a_50_n12# dff_6/w_44_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=400 ps=170
M1074 a3 dff_6/a_100_88# vdd dff_6/w_132_78# CMOSP w=40 l=2
+  ad=400 pd=180 as=0 ps=0
M1075 dff_6/a_17_48# a3_in vdd dff_6/w_4_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=0 ps=0
M1076 dff_6/a_57_n12# dff_6/a_17_8# dff_6/a_50_n12# Gnd CMOSN w=40 l=2
+  ad=240 pd=92 as=200 ps=90
M1077 dff_6/a_100_88# dff_6/a_50_n12# vdd dff_6/w_87_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1078 gnd clk dff_6/a_57_n12# Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1079 dff_6/a_17_8# clk dff_6/a_17_48# dff_6/w_4_38# CMOSP w=80 l=2
+  ad=400 pd=170 as=0 ps=0
M1080 vdd clk dff_6/a_57_48# dff_6/w_44_38# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1081 dff_6/a_100_28# dff_6/a_50_n12# gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1082 a3 dff_6/a_100_88# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1083 dff_6/a_17_8# a3_in gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1084 dff_7/a_100_88# clk dff_7/a_100_28# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1085 dff_7/a_57_48# dff_7/a_17_8# dff_7/a_50_n12# dff_7/w_44_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=400 ps=170
M1086 b3 dff_7/a_100_88# vdd dff_7/w_132_78# CMOSP w=40 l=2
+  ad=400 pd=180 as=0 ps=0
M1087 dff_7/a_17_48# b3_in vdd dff_7/w_4_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=0 ps=0
M1088 dff_7/a_57_n12# dff_7/a_17_8# dff_7/a_50_n12# Gnd CMOSN w=40 l=2
+  ad=240 pd=92 as=200 ps=90
M1089 dff_7/a_100_88# dff_7/a_50_n12# vdd dff_7/w_87_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1090 gnd clk dff_7/a_57_n12# Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1091 dff_7/a_17_8# clk dff_7/a_17_48# dff_7/w_4_38# CMOSP w=80 l=2
+  ad=400 pd=170 as=0 ps=0
M1092 vdd clk dff_7/a_57_48# dff_7/w_44_38# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1093 dff_7/a_100_28# dff_7/a_50_n12# gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1094 b3 dff_7/a_100_88# gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1095 dff_7/a_17_8# b3_in gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1096 comp_4_0/a_41_4# g0 comp_4_0/a_57_4# Gnd CMOSN w=20 l=2
+  ad=220 pd=102 as=120 ps=52
M1097 comp_4_0/a_33_48# g2 comp_4_0/a_17_4# comp_4_0/w_4_38# CMOSP w=40 l=2
+  ad=480 pd=184 as=240 ps=92
M1098 comp_4_0/a_17_4# g3 gnd Gnd CMOSN w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1099 comp_4_0/a_33_48# p1 comp_4_0/a_49_48# comp_4_0/w_4_38# CMOSP w=40 l=2
+  ad=0 pd=0 as=440 ps=182
M1100 comp_4_0/a_17_48# g3 vdd comp_4_0/w_4_38# CMOSP w=40 l=2
+  ad=480 pd=184 as=0 ps=0
M1101 comp_4_0/a_41_4# p2 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1102 c4 comp_4_0/a_17_4# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1103 comp_4_0/a_25_4# p3 comp_4_0/a_17_4# Gnd CMOSN w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1104 comp_4_0/a_17_48# p2 comp_4_0/a_33_48# comp_4_0/w_4_38# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1105 comp_4_0/a_25_4# g1 comp_4_0/a_41_4# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1106 gnd g2 comp_4_0/a_25_4# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1107 comp_4_0/a_17_4# p3 comp_4_0/a_17_48# comp_4_0/w_4_38# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1108 comp_4_0/a_49_48# g0 comp_4_0/a_33_48# comp_4_0/w_4_38# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1109 c4 comp_4_0/a_17_4# vdd comp_4_0/w_86_40# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1110 comp_4_0/a_57_4# p1 comp_4_0/a_25_4# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1111 comp_4_0/a_49_48# g1 comp_4_0/a_17_48# comp_4_0/w_4_38# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1112 dff_8/a_100_88# clk dff_8/a_100_28# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1113 dff_8/a_57_48# dff_8/a_17_8# dff_8/a_50_n12# dff_8/w_44_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=400 ps=170
M1114 s0_out dff_8/a_100_88# vdd dff_8/w_132_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1115 dff_8/a_17_48# s0 vdd dff_8/w_4_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=0 ps=0
M1116 dff_8/a_57_n12# dff_8/a_17_8# dff_8/a_50_n12# Gnd CMOSN w=40 l=2
+  ad=240 pd=92 as=200 ps=90
M1117 dff_8/a_100_88# dff_8/a_50_n12# vdd dff_8/w_87_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1118 gnd clk dff_8/a_57_n12# Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1119 dff_8/a_17_8# clk dff_8/a_17_48# dff_8/w_4_38# CMOSP w=80 l=2
+  ad=400 pd=170 as=0 ps=0
M1120 vdd clk dff_8/a_57_48# dff_8/w_44_38# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1121 dff_8/a_100_28# dff_8/a_50_n12# gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1122 s0_out dff_8/a_100_88# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1123 dff_8/a_17_8# s0 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1124 dff_9/a_100_88# clk dff_9/a_100_28# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1125 dff_9/a_57_48# dff_9/a_17_8# dff_9/a_50_n12# dff_9/w_44_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=400 ps=170
M1126 s1_out dff_9/a_100_88# vdd dff_9/w_132_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1127 dff_9/a_17_48# s1 vdd dff_9/w_4_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=0 ps=0
M1128 dff_9/a_57_n12# dff_9/a_17_8# dff_9/a_50_n12# Gnd CMOSN w=40 l=2
+  ad=240 pd=92 as=200 ps=90
M1129 dff_9/a_100_88# dff_9/a_50_n12# vdd dff_9/w_87_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1130 gnd clk dff_9/a_57_n12# Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1131 dff_9/a_17_8# clk dff_9/a_17_48# dff_9/w_4_38# CMOSP w=80 l=2
+  ad=400 pd=170 as=0 ps=0
M1132 vdd clk dff_9/a_57_48# dff_9/w_44_38# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1133 dff_9/a_100_28# dff_9/a_50_n12# gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1134 s1_out dff_9/a_100_88# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1135 dff_9/a_17_8# s1 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1136 comp_2_0/a_17_48# g0 comp_2_0/a_17_8# comp_2_0/w_4_38# CMOSP w=40 l=2
+  ad=440 pd=182 as=240 ps=92
M1137 comp_2_0/a_25_8# p1 comp_2_0/a_17_8# Gnd CMOSN w=20 l=2
+  ad=120 pd=52 as=120 ps=52
M1138 comp_2_0/a_17_48# g1 vdd comp_2_0/w_4_38# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1139 gnd g0 comp_2_0/a_25_8# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1140 c2 comp_2_0/a_17_8# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1141 comp_2_0/a_17_8# p1 comp_2_0/a_17_48# comp_2_0/w_4_38# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1142 c2 comp_2_0/a_17_8# vdd comp_2_0/w_58_38# CMOSP w=40 l=2
+  ad=400 pd=180 as=0 ps=0
M1143 comp_2_0/a_17_8# g1 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1144 xor_0/a_17_8# a0 vdd xor_0/w_4_38# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1145 p0 b0 xor_0/a_17_8# Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=200 ps=100
M1146 p0 xor_0/a_17_8# b0 Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1147 p0 b0 a0 xor_0/w_42_39# CMOSP w=40 l=2
+  ad=600 pd=270 as=0 ps=0
M1148 b0 a0 p0 xor_0/w_75_54# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1149 xor_0/a_17_8# a0 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1150 xor_1/a_17_8# a1 vdd xor_1/w_4_38# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1151 p1 b1 xor_1/a_17_8# Gnd CMOSN w=20 l=2
+  ad=300 pd=150 as=200 ps=100
M1152 p1 xor_1/a_17_8# b1 Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1153 p1 b1 a1 xor_1/w_42_39# CMOSP w=40 l=2
+  ad=600 pd=270 as=0 ps=0
M1154 b1 a1 p1 xor_1/w_75_54# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1155 xor_1/a_17_8# a1 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1156 xor_2/a_17_8# a2 vdd xor_2/w_4_38# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1157 p2 b2 xor_2/a_17_8# Gnd CMOSN w=20 l=2
+  ad=300 pd=150 as=200 ps=100
M1158 p2 xor_2/a_17_8# b2 Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1159 p2 b2 a2 xor_2/w_42_39# CMOSP w=40 l=2
+  ad=600 pd=270 as=0 ps=0
M1160 b2 a2 p2 xor_2/w_75_54# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1161 xor_2/a_17_8# a2 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1162 xor_3/a_17_8# a3 vdd xor_3/w_4_38# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1163 p3 b3 xor_3/a_17_8# Gnd CMOSN w=20 l=2
+  ad=300 pd=150 as=200 ps=100
M1164 p3 xor_3/a_17_8# b3 Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1165 p3 b3 a3 xor_3/w_42_39# CMOSP w=40 l=2
+  ad=600 pd=270 as=0 ps=0
M1166 b3 a3 p3 xor_3/w_75_54# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1167 xor_3/a_17_8# a3 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1168 inv_0/a_13_n30# s0_out vdd inv_0/w_0_0# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1169 inv_0/a_13_n30# s0_out gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1170 inv_1/a_13_n30# s1_out vdd inv_1/w_0_0# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1171 inv_1/a_13_n30# s1_out gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1172 xor_4/a_17_8# p0 vdd xor_4/w_4_38# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1173 s0 xor_4/a_52_122# xor_4/a_17_8# Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=200 ps=100
M1174 s0 xor_4/a_17_8# xor_4/a_52_122# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1175 s0 xor_4/a_52_122# p0 xor_4/w_42_39# CMOSP w=40 l=2
+  ad=400 pd=180 as=0 ps=0
M1176 xor_4/a_52_122# p0 s0 xor_4/w_75_54# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1177 xor_4/a_17_8# p0 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1178 inv_2/a_13_n30# s2_out vdd inv_2/w_0_0# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1179 inv_2/a_13_n30# s2_out gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1180 xor_5/a_17_8# g0 vdd xor_5/w_4_38# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1181 s1 p1 xor_5/a_17_8# Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=200 ps=100
M1182 s1 xor_5/a_17_8# p1 Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1183 s1 p1 g0 xor_5/w_42_39# CMOSP w=40 l=2
+  ad=400 pd=180 as=400 ps=180
M1184 p1 g0 s1 xor_5/w_75_54# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1185 xor_5/a_17_8# g0 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1186 inv_3/a_13_n30# s3_out vdd inv_3/w_0_0# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1187 inv_3/a_13_n30# s3_out gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1188 xor_6/a_17_8# c2 vdd xor_6/w_4_38# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1189 s2 p2 xor_6/a_17_8# Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=200 ps=100
M1190 s2 xor_6/a_17_8# p2 Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1191 s2 p2 c2 xor_6/w_42_39# CMOSP w=40 l=2
+  ad=400 pd=180 as=0 ps=0
M1192 p2 c2 s2 xor_6/w_75_54# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1193 xor_6/a_17_8# c2 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1194 inv_4/a_13_n30# c4_out vdd inv_4/w_0_0# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1195 inv_4/a_13_n30# c4_out gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1196 xor_7/a_17_8# c3 vdd xor_7/w_4_38# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1197 s3 p3 xor_7/a_17_8# Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=200 ps=100
M1198 s3 xor_7/a_17_8# p3 Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1199 s3 p3 c3 xor_7/w_42_39# CMOSP w=40 l=2
+  ad=400 pd=180 as=400 ps=180
M1200 p3 c3 s3 xor_7/w_75_54# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1201 xor_7/a_17_8# c3 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1202 dff_10/a_100_88# clk dff_10/a_100_28# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1203 dff_10/a_57_48# dff_10/a_17_8# dff_10/a_50_n12# dff_10/w_44_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=400 ps=170
M1204 s2_out dff_10/a_100_88# vdd dff_10/w_132_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1205 dff_10/a_17_48# s2 vdd dff_10/w_4_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=0 ps=0
M1206 dff_10/a_57_n12# dff_10/a_17_8# dff_10/a_50_n12# Gnd CMOSN w=40 l=2
+  ad=240 pd=92 as=200 ps=90
M1207 dff_10/a_100_88# dff_10/a_50_n12# vdd dff_10/w_87_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1208 gnd clk dff_10/a_57_n12# Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1209 dff_10/a_17_8# clk dff_10/a_17_48# dff_10/w_4_38# CMOSP w=80 l=2
+  ad=400 pd=170 as=0 ps=0
M1210 vdd clk dff_10/a_57_48# dff_10/w_44_38# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1211 dff_10/a_100_28# dff_10/a_50_n12# gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1212 s2_out dff_10/a_100_88# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1213 dff_10/a_17_8# s2 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1214 dff_12/a_100_88# clk dff_12/a_100_28# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1215 dff_12/a_57_48# dff_12/a_17_8# dff_12/a_50_n12# dff_12/w_44_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=400 ps=170
M1216 c4_out dff_12/a_100_88# vdd dff_12/w_132_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1217 dff_12/a_17_48# c4 vdd dff_12/w_4_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=0 ps=0
M1218 dff_12/a_57_n12# dff_12/a_17_8# dff_12/a_50_n12# Gnd CMOSN w=40 l=2
+  ad=240 pd=92 as=200 ps=90
M1219 dff_12/a_100_88# dff_12/a_50_n12# vdd dff_12/w_87_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1220 gnd clk dff_12/a_57_n12# Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1221 dff_12/a_17_8# clk dff_12/a_17_48# dff_12/w_4_38# CMOSP w=80 l=2
+  ad=400 pd=170 as=0 ps=0
M1222 vdd clk dff_12/a_57_48# dff_12/w_44_38# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1223 dff_12/a_100_28# dff_12/a_50_n12# gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1224 c4_out dff_12/a_100_88# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1225 dff_12/a_17_8# c4 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1226 dff_11/a_100_88# clk dff_11/a_100_28# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1227 dff_11/a_57_48# dff_11/a_17_8# dff_11/a_50_n12# dff_11/w_44_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=400 ps=170
M1228 s3_out dff_11/a_100_88# vdd dff_11/w_132_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1229 dff_11/a_17_48# s3 vdd dff_11/w_4_38# CMOSP w=80 l=2
+  ad=480 pd=172 as=0 ps=0
M1230 dff_11/a_57_n12# dff_11/a_17_8# dff_11/a_50_n12# Gnd CMOSN w=40 l=2
+  ad=240 pd=92 as=200 ps=90
M1231 dff_11/a_100_88# dff_11/a_50_n12# vdd dff_11/w_87_78# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1232 gnd clk dff_11/a_57_n12# Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1233 dff_11/a_17_8# clk dff_11/a_17_48# dff_11/w_4_38# CMOSP w=80 l=2
+  ad=400 pd=170 as=0 ps=0
M1234 vdd clk dff_11/a_57_48# dff_11/w_44_38# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1235 dff_11/a_100_28# dff_11/a_50_n12# gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1236 s3_out dff_11/a_100_88# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1237 dff_11/a_17_8# s3 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1238 vdd b0 and_0/a_17_47# and_0/w_4_37# CMOSP w=40 l=2
+  ad=0 pd=0 as=240 ps=92
M1239 and_0/a_17_47# b0 and_0/a_17_n11# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1240 g0 and_0/a_17_47# vdd and_0/w_55_38# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1241 and_0/a_17_47# a0 vdd and_0/w_4_37# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1242 g0 and_0/a_17_47# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1243 and_0/a_17_n11# a0 gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1244 vdd b1 and_1/a_17_47# and_1/w_4_37# CMOSP w=40 l=2
+  ad=0 pd=0 as=240 ps=92
M1245 and_1/a_17_47# b1 and_1/a_17_n11# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1246 g1 and_1/a_17_47# vdd and_1/w_55_38# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1247 and_1/a_17_47# a1 vdd and_1/w_4_37# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1248 g1 and_1/a_17_47# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1249 and_1/a_17_n11# a1 gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1250 vdd b2 and_2/a_17_47# and_2/w_4_37# CMOSP w=40 l=2
+  ad=0 pd=0 as=240 ps=92
M1251 and_2/a_17_47# b2 and_2/a_17_n11# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1252 g2 and_2/a_17_47# vdd and_2/w_55_38# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1253 and_2/a_17_47# a2 vdd and_2/w_4_37# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1254 g2 and_2/a_17_47# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1255 and_2/a_17_n11# a2 gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1256 comp_3_0/a_17_18# p2 comp_3_0/a_17_65# comp_3_0/w_4_55# CMOSP w=40 l=2
+  ad=240 pd=92 as=480 ps=184
M1257 c3 comp_3_0/a_17_18# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1258 comp_3_0/a_25_18# g0 comp_3_0/a_41_18# Gnd CMOSN w=20 l=2
+  ad=220 pd=102 as=120 ps=52
M1259 comp_3_0/a_33_65# g0 comp_3_0/a_17_65# comp_3_0/w_4_55# CMOSP w=40 l=2
+  ad=440 pd=182 as=0 ps=0
M1260 gnd g1 comp_3_0/a_25_18# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1261 comp_3_0/a_33_65# g1 comp_3_0/a_17_18# comp_3_0/w_4_55# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1262 c3 comp_3_0/a_17_18# vdd comp_3_0/w_90_55# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1263 comp_3_0/a_17_18# g2 gnd Gnd CMOSN w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1264 comp_3_0/a_17_65# g2 vdd comp_3_0/w_4_55# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1265 comp_3_0/a_41_18# p1 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1266 comp_3_0/a_17_65# p1 comp_3_0/a_33_65# comp_3_0/w_4_55# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1267 comp_3_0/a_25_18# p2 comp_3_0/a_17_18# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1268 vdd b3 and_3/a_17_47# and_3/w_4_37# CMOSP w=40 l=2
+  ad=0 pd=0 as=240 ps=92
M1269 and_3/a_17_47# b3 and_3/a_17_n11# Gnd CMOSN w=40 l=2
+  ad=200 pd=90 as=240 ps=92
M1270 g3 and_3/a_17_47# vdd and_3/w_55_38# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1271 and_3/a_17_47# a3 vdd and_3/w_4_37# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1272 g3 and_3/a_17_47# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1273 and_3/a_17_n11# a3 gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
C0 gnd dff_7/a_50_n12# 0.05fF
C1 vdd dff_0/a_50_n12# 0.60fF
C2 inv_3/w_0_0# inv_3/a_13_n30# 0.08fF
C3 dff_0/a_100_28# dff_0/a_100_88# 0.41fF
C4 comp_4_0/a_49_48# g1 0.33fF
C5 dff_7/a_57_n12# dff_7/a_50_n12# 0.44fF
C6 gnd dff_2/a_50_n12# 0.05fF
C7 gnd c3 0.25fF
C8 dff_8/w_132_78# vdd 0.19fF
C9 dff_10/w_87_78# clk 0.36fF
C10 gnd b3 0.21fF
C11 dff_11/a_17_8# clk 1.33fF
C12 a2_in clk 0.18fF
C13 b1 and_1/a_17_47# 0.08fF
C14 dff_4/a_57_48# dff_4/a_50_n12# 0.82fF
C15 dff_6/w_132_78# dff_6/a_100_88# 0.09fF
C16 comp_4_0/a_17_4# p2 0.12fF
C17 vdd clk 8.25fF
C18 dff_5/a_50_n12# dff_5/a_57_n12# 0.44fF
C19 xor_1/w_42_39# b1 0.15fF
C20 dff_12/w_4_38# clk 0.14fF
C21 xor_0/a_17_8# b0 0.27fF
C22 dff_3/w_44_38# vdd 0.42fF
C23 comp_4_0/w_86_40# vdd 0.12fF
C24 b3 xor_3/w_42_39# 0.15fF
C25 p2 b2 0.72fF
C26 dff_9/w_4_38# dff_9/a_17_8# 0.25fF
C27 vdd dff_12/a_17_48# 0.82fF
C28 gnd g3 0.21fF
C29 c2 comp_2_0/w_58_38# 0.08fF
C30 comp_3_0/a_17_65# comp_3_0/a_33_65# 0.93fF
C31 and_0/w_4_37# vdd 0.20fF
C32 dff_12/w_4_38# dff_12/a_17_48# 0.01fF
C33 dff_12/w_87_78# dff_12/a_50_n12# 0.14fF
C34 dff_11/a_100_28# dff_11/a_100_88# 0.41fF
C35 dff_2/w_87_78# vdd 0.30fF
C36 c3 comp_3_0/a_17_18# 0.05fF
C37 and_3/w_4_37# b3 0.12fF
C38 and_3/w_55_38# and_3/a_17_47# 0.09fF
C39 gnd s1_out 0.33fF
C40 gnd dff_9/a_100_28# 0.44fF
C41 gnd dff_1/a_57_n12# 0.44fF
C42 c3 xor_7/w_75_54# 0.14fF
C43 p0 xor_0/w_42_39# 0.08fF
C44 g1 comp_4_0/a_41_4# 0.23fF
C45 dff_4/w_87_78# vdd 0.30fF
C46 dff_12/a_17_8# dff_12/a_50_n12# 0.08fF
C47 xor_1/w_42_39# p1 0.08fF
C48 dff_11/a_17_8# dff_11/w_4_38# 0.25fF
C49 b0 xor_0/w_75_54# 0.07fF
C50 g0 c2 0.05fF
C51 gnd and_1/a_17_47# 0.08fF
C52 dff_7/w_44_38# dff_7/a_57_48# 0.01fF
C53 vdd dff_11/w_4_38# 0.37fF
C54 comp_3_0/a_33_65# comp_3_0/w_4_55# 0.12fF
C55 xor_6/w_4_38# c2 0.12fF
C56 comp_4_0/a_17_4# p3 0.09fF
C57 vdd a3_in 0.01fF
C58 g2 vdd 0.79fF
C59 a1_in vdd 0.01fF
C60 b1 xor_1/a_17_8# 0.22fF
C61 a2 xor_2/w_42_39# 0.09fF
C62 dff_7/a_17_8# dff_7/w_4_38# 0.25fF
C63 dff_6/w_4_38# vdd 0.37fF
C64 s3 clk 0.18fF
C65 vdd inv_3/a_13_n30# 0.44fF
C66 gnd dff_1/a_17_8# 0.21fF
C67 dff_1/a_100_88# dff_1/w_132_78# 0.09fF
C68 dff_8/w_44_38# dff_8/a_17_8# 0.14fF
C69 dff_1/a_17_48# dff_1/w_4_38# 0.01fF
C70 b3 a3 0.51fF
C71 dff_4/a_50_n12# clk 0.49fF
C72 dff_3/w_4_38# clk 0.14fF
C73 gnd dff_12/a_50_n12# 0.05fF
C74 dff_7/a_50_n12# vdd 0.60fF
C75 dff_2/a_50_n12# vdd 0.60fF
C76 c3 vdd 0.61fF
C77 gnd dff_9/a_17_8# 0.21fF
C78 b3 vdd 0.69fF
C79 dff_5/a_50_n12# clk 0.49fF
C80 dff_9/a_17_48# vdd 0.82fF
C81 comp_3_0/a_25_18# p1 0.13fF
C82 dff_1/a_50_n12# dff_1/a_57_n12# 0.44fF
C83 g2 comp_4_0/a_33_48# 0.01fF
C84 xor_6/w_75_54# s2 0.09fF
C85 dff_8/w_4_38# dff_8/a_17_48# 0.01fF
C86 dff_11/w_87_78# dff_11/a_50_n12# 0.14fF
C87 dff_7/a_17_48# clk 0.53fF
C88 vdd inv_2/w_0_0# 0.12fF
C89 dff_7/a_100_88# dff_7/w_87_78# 0.08fF
C90 dff_11/w_132_78# vdd 0.19fF
C91 gnd comp_3_0/a_25_18# 0.31fF
C92 p1 xor_1/a_17_8# 0.29fF
C93 dff_5/a_17_48# vdd 0.82fF
C94 dff_3/w_87_78# clk 0.36fF
C95 gnd dff_6/a_100_88# 0.07fF
C96 dff_1/a_100_88# clk 0.08fF
C97 dff_0/a_17_48# dff_0/a_17_8# 0.86fF
C98 dff_4/a_100_88# dff_4/w_132_78# 0.09fF
C99 dff_8/w_44_38# vdd 0.42fF
C100 c4 clk 0.18fF
C101 gnd xor_1/a_17_8# 0.25fF
C102 dff_4/w_87_78# dff_4/a_50_n12# 0.14fF
C103 vdd g3 0.60fF
C104 dff_1/a_17_8# dff_1/a_50_n12# 0.08fF
C105 s3 dff_11/w_4_38# 0.14fF
C106 gnd dff_6/a_17_8# 0.21fF
C107 gnd c4_out 0.25fF
C108 dff_6/w_87_78# vdd 0.30fF
C109 comp_4_0/w_86_40# c4 0.08fF
C110 comp_3_0/a_33_65# g1 0.31fF
C111 comp_3_0/a_17_65# p1 0.41fF
C112 vdd s1_out 0.47fF
C113 dff_7/w_87_78# clk 0.36fF
C114 dff_7/a_100_88# clk 0.08fF
C115 dff_0/a_57_48# vdd 0.82fF
C116 and_2/w_4_37# vdd 0.20fF
C117 comp_4_0/w_4_38# g2 0.18fF
C118 gnd dff_7/a_100_28# 0.44fF
C119 dff_2/w_4_38# clk 0.14fF
C120 xor_0/a_17_8# a0 0.01fF
C121 g2 and_2/a_17_47# 0.05fF
C122 comp_3_0/a_25_18# comp_3_0/a_17_18# 0.57fF
C123 dff_10/w_4_38# clk 0.14fF
C124 vdd and_1/a_17_47# 0.86fF
C125 vdd dff_11/a_57_48# 0.82fF
C126 gnd dff_9/a_50_n12# 0.05fF
C127 c3 s3 0.47fF
C128 dff_12/a_100_88# c4_out 0.05fF
C129 dff_8/w_4_38# s0 0.14fF
C130 and_1/w_55_38# and_1/a_17_47# 0.09fF
C131 gnd dff_8/a_50_n12# 0.05fF
C132 dff_2/a_57_48# dff_2/w_44_38# 0.01fF
C133 dff_0/a_50_n12# clk 0.49fF
C134 comp_3_0/w_4_55# p1 0.16fF
C135 dff_8/a_100_88# s0_out 0.05fF
C136 dff_1/a_17_8# vdd 0.09fF
C137 p0 b0 1.24fF
C138 dff_6/a_57_n12# dff_6/a_50_n12# 0.44fF
C139 dff_7/a_17_8# dff_7/w_44_38# 0.14fF
C140 dff_2/a_100_88# gnd 0.07fF
C141 dff_11/a_57_n12# dff_11/a_50_n12# 0.44fF
C142 xor_6/a_17_8# s2 0.29fF
C143 b1_in vdd 0.01fF
C144 dff_12/w_44_38# dff_12/a_17_8# 0.14fF
C145 b0 and_0/a_17_47# 0.08fF
C146 vdd dff_12/a_50_n12# 0.60fF
C147 dff_10/a_17_8# dff_10/a_50_n12# 0.08fF
C148 dff_9/a_17_8# vdd 0.09fF
C149 a2 gnd 0.60fF
C150 xor_7/a_17_8# p3 0.05fF
C151 gnd dff_4/a_17_8# 0.21fF
C152 dff_3/w_44_38# clk 0.14fF
C153 dff_6/a_100_88# a3 0.05fF
C154 dff_6/a_100_28# dff_6/a_100_88# 0.41fF
C155 s3_out dff_11/a_100_88# 0.05fF
C156 a0 xor_0/w_75_54# 0.14fF
C157 p0 s0 0.47fF
C158 comp_3_0/a_17_65# comp_3_0/a_17_18# 0.47fF
C159 gnd xor_2/a_17_8# 0.25fF
C160 dff_12/a_17_48# clk 0.53fF
C161 gnd dff_11/a_50_n12# 0.05fF
C162 p0 g1 0.01fF
C163 dff_9/w_87_78# dff_9/a_100_88# 0.08fF
C164 dff_3/a_57_48# vdd 0.82fF
C165 p2 p3 0.13fF
C166 dff_6/a_17_48# vdd 0.82fF
C167 inv_0/w_0_0# inv_0/a_13_n30# 0.08fF
C168 xor_2/w_42_39# b2 0.15fF
C169 comp_4_0/w_4_38# g3 0.17fF
C170 dff_6/a_100_88# vdd 0.41fF
C171 a1_in dff_2/w_4_38# 0.14fF
C172 dff_10/a_57_n12# dff_10/a_50_n12# 0.44fF
C173 comp_4_0/a_25_4# g1 0.28fF
C174 dff_2/w_87_78# clk 0.36fF
C175 dff_8/a_17_8# dff_8/a_50_n12# 0.08fF
C176 dff_0/w_44_38# vdd 0.42fF
C177 inv_0/a_13_n30# s0_out 0.05fF
C178 vdd xor_1/a_17_8# 0.44fF
C179 dff_0/w_4_38# a0_in 0.14fF
C180 a3 xor_3/w_75_54# 0.14fF
C181 vdd dff_6/a_17_8# 0.09fF
C182 comp_3_0/w_4_55# comp_3_0/a_17_18# 0.04fF
C183 gnd xor_6/a_17_8# 0.25fF
C184 dff_7/a_50_n12# dff_7/w_87_78# 0.14fF
C185 dff_4/w_87_78# clk 0.36fF
C186 gnd dff_3/a_57_n12# 0.44fF
C187 gnd b0 0.38fF
C188 gnd dff_10/a_17_8# 0.21fF
C189 vdd c4_out 0.47fF
C190 dff_2/a_17_8# dff_2/w_44_38# 0.14fF
C191 and_2/a_17_47# and_2/w_4_37# 0.04fF
C192 b3 dff_7/a_100_88# 0.05fF
C193 p2 comp_4_0/a_41_4# 0.00fF
C194 dff_11/w_4_38# clk 0.14fF
C195 dff_8/a_17_48# dff_8/a_17_8# 0.86fF
C196 clk a3_in 0.18fF
C197 a1_in clk 0.18fF
C198 xor_6/w_42_39# s2 0.08fF
C199 dff_6/w_4_38# clk 0.14fF
C200 c3 c2 1.32fF
C201 g1 p1 1.82fF
C202 xor_2/w_4_38# vdd 0.11fF
C203 gnd s0 0.09fF
C204 comp_3_0/a_17_65# vdd 0.77fF
C205 gnd dff_11/a_100_28# 0.44fF
C206 and_3/w_55_38# vdd 0.09fF
C207 gnd dff_10/a_57_n12# 0.44fF
C208 dff_9/a_50_n12# vdd 0.60fF
C209 gnd g1 0.56fF
C210 dff_11/w_44_38# dff_11/a_17_8# 0.14fF
C211 xor_1/w_4_38# vdd 0.11fF
C212 dff_3/w_4_38# b1_in 0.14fF
C213 comp_4_0/a_17_4# comp_4_0/a_25_4# 0.66fF
C214 dff_3/w_132_78# b1 0.08fF
C215 dff_8/a_50_n12# vdd 0.60fF
C216 comp_2_0/a_17_48# comp_2_0/w_4_38# 0.15fF
C217 dff_9/w_44_38# vdd 0.42fF
C218 dff_7/a_50_n12# clk 0.49fF
C219 dff_11/w_44_38# vdd 0.42fF
C220 xor_5/a_17_8# p1 0.05fF
C221 gnd s0_out 0.33fF
C222 dff_2/a_50_n12# clk 0.49fF
C223 vdd dff_8/a_57_48# 0.82fF
C224 dff_9/a_17_48# clk 0.55fF
C225 inv_4/a_13_n30# c4_out 0.05fF
C226 inv_1/a_13_n30# s1_out 0.05fF
C227 gnd xor_5/a_17_8# 0.25fF
C228 dff_2/a_100_88# vdd 0.41fF
C229 comp_3_0/w_4_55# vdd 0.21fF
C230 dff_3/a_100_88# dff_3/w_132_78# 0.09fF
C231 comp_4_0/a_17_48# g1 0.33fF
C232 comp_4_0/a_57_4# comp_4_0/a_41_4# 0.26fF
C233 g0 comp_3_0/a_25_18# 0.28fF
C234 gnd dff_5/a_100_88# 0.07fF
C235 xor_5/a_17_8# s1 0.29fF
C236 dff_5/a_17_48# clk 0.53fF
C237 dff_8/a_17_48# vdd 0.82fF
C238 a2 vdd 1.14fF
C239 vdd dff_4/a_17_8# 0.09fF
C240 dff_7/w_4_38# vdd 0.37fF
C241 xor_2/a_17_8# vdd 0.44fF
C242 dff_11/a_17_8# dff_11/a_50_n12# 0.08fF
C243 comp_4_0/a_17_4# p1 0.13fF
C244 vdd dff_9/a_57_48# 0.82fF
C245 dff_8/w_44_38# clk 0.14fF
C246 vdd dff_10/w_132_78# 0.19fF
C247 dff_2/a_50_n12# dff_2/w_87_78# 0.14fF
C248 vdd dff_11/a_50_n12# 0.60fF
C249 gnd s2_out 0.33fF
C250 comp_3_0/a_17_18# g1 0.47fF
C251 dff_6/w_4_38# a3_in 0.14fF
C252 gnd comp_4_0/a_17_4# 0.25fF
C253 dff_6/w_44_38# dff_6/a_50_n12# 0.24fF
C254 dff_0/a_57_48# dff_0/a_50_n12# 0.82fF
C255 p0 a0 0.47fF
C256 vdd a0_in 0.01fF
C257 p0 xor_4/w_4_38# 0.12fF
C258 dff_6/w_87_78# clk 0.36fF
C259 gnd dff_4/a_57_n12# 0.44fF
C260 dff_12/a_57_n12# dff_12/a_50_n12# 0.44fF
C261 vdd dff_12/w_44_38# 0.42fF
C262 dff_10/w_44_38# dff_10/a_50_n12# 0.24fF
C263 p0 xor_4/w_75_54# 0.14fF
C264 gnd dff_6/a_57_n12# 0.44fF
C265 g0 comp_3_0/a_17_65# 0.31fF
C266 vdd xor_6/a_17_8# 0.44fF
C267 vdd dff_10/a_17_8# 0.09fF
C268 b0 vdd 0.68fF
C269 comp_4_0/a_17_4# comp_4_0/a_17_48# 0.44fF
C270 gnd inv_2/a_13_n30# 0.25fF
C271 p2 xor_2/w_42_39# 0.08fF
C272 gnd b2 0.39fF
C273 dff_4/a_17_48# vdd 0.82fF
C274 gnd dff_5/a_100_28# 0.44fF
C275 vdd xor_7/w_4_38# 0.11fF
C276 dff_5/w_4_38# vdd 0.37fF
C277 dff_0/a_100_88# dff_0/w_87_78# 0.08fF
C278 dff_0/w_4_38# dff_0/a_17_48# 0.01fF
C279 s0 xor_4/w_42_39# 0.08fF
C280 vdd dff_1/w_4_38# 0.37fF
C281 a1 xor_1/w_75_54# 0.14fF
C282 dff_2/w_132_78# a1 0.08fF
C283 gnd dff_10/a_100_88# 0.07fF
C284 vdd s0 0.08fF
C285 dff_1/a_17_8# clk 1.33fF
C286 a0 xor_0/w_4_38# 0.13fF
C287 s0 xor_4/a_52_122# 0.72fF
C288 g0 comp_3_0/w_4_55# 0.16fF
C289 vdd inv_0/w_0_0# 0.12fF
C290 vdd g1 1.00fF
C291 dff_3/a_17_8# dff_3/a_50_n12# 0.08fF
C292 b1_in clk 0.18fF
C293 gnd dff_3/a_50_n12# 0.05fF
C294 and_1/w_55_38# g1 0.08fF
C295 p0 comp_2_0/w_4_38# 0.14fF
C296 dff_12/a_50_n12# clk 0.49fF
C297 dff_4/a_17_8# dff_4/a_50_n12# 0.08fF
C298 g2 g3 0.05fF
C299 vdd s0_out 0.41fF
C300 gnd a0 0.60fF
C301 dff_9/a_17_8# clk 0.79fF
C302 and_0/w_55_38# and_0/a_17_47# 0.09fF
C303 dff_9/w_87_78# vdd 0.30fF
C304 vdd xor_5/a_17_8# 0.44fF
C305 dff_0/w_44_38# dff_0/a_50_n12# 0.24fF
C306 vdd dff_5/a_100_88# 0.41fF
C307 dff_6/a_17_48# clk 0.53fF
C308 xor_4/a_17_8# s0 0.29fF
C309 dff_7/a_100_28# dff_7/a_100_88# 0.41fF
C310 dff_6/a_100_88# clk 0.08fF
C311 dff_7/a_17_48# dff_7/w_4_38# 0.01fF
C312 b0_in vdd 0.01fF
C313 dff_9/w_132_78# dff_9/a_100_88# 0.09fF
C314 comp_4_0/a_33_48# g1 0.13fF
C315 vdd dff_12/a_57_48# 0.82fF
C316 dff_3/a_57_48# dff_3/w_44_38# 0.01fF
C317 a0 dff_0/a_100_88# 0.05fF
C318 dff_0/w_44_38# clk 0.14fF
C319 xor_6/w_75_54# c2 0.14fF
C320 s2_out vdd 0.47fF
C321 dff_7/w_44_38# vdd 0.42fF
C322 p2 comp_4_0/a_25_4# 0.12fF
C323 clk dff_6/a_17_8# 1.33fF
C324 a2_in dff_4/w_4_38# 0.14fF
C325 xor_6/w_4_38# xor_6/a_17_8# 0.08fF
C326 p2 s2 0.72fF
C327 comp_2_0/w_4_38# p1 0.18fF
C328 dff_1/a_50_n12# dff_1/a_57_48# 0.82fF
C329 and_1/w_4_37# a1 0.12fF
C330 vdd dff_0/w_87_78# 0.30fF
C331 gnd s3_out 0.33fF
C332 dff_4/w_4_38# vdd 0.37fF
C333 dff_1/a_50_n12# dff_1/w_44_38# 0.24fF
C334 dff_3/w_132_78# vdd 0.19fF
C335 dff_12/w_132_78# dff_12/a_100_88# 0.09fF
C336 b2_in vdd 0.01fF
C337 comp_2_0/a_17_8# comp_2_0/w_4_38# 0.04fF
C338 s3_out inv_3/w_0_0# 0.09fF
C339 vdd inv_2/a_13_n30# 0.44fF
C340 b2 vdd 0.69fF
C341 dff_5/w_44_38# dff_5/a_17_8# 0.14fF
C342 dff_9/a_50_n12# clk 0.49fF
C343 gnd xor_7/a_17_8# 0.25fF
C344 dff_1/a_100_88# b0 0.05fF
C345 vdd dff_0/a_17_48# 0.82fF
C346 dff_10/a_100_88# dff_10/w_87_78# 0.08fF
C347 p2 p1 0.07fF
C348 dff_11/w_87_78# dff_11/a_100_88# 0.08fF
C349 gnd dff_4/a_100_88# 0.07fF
C350 dff_8/w_87_78# dff_8/a_100_88# 0.08fF
C351 comp_4_0/a_17_4# comp_4_0/a_33_48# 0.87fF
C352 comp_4_0/w_4_38# g1 0.18fF
C353 dff_8/a_50_n12# clk 0.49fF
C354 dff_9/w_44_38# clk 0.14fF
C355 dff_11/w_44_38# clk 0.14fF
C356 dff_10/a_100_88# vdd 0.41fF
C357 comp_4_0/a_57_4# comp_4_0/a_25_4# 0.21fF
C358 dff_6/a_17_48# dff_6/w_4_38# 0.01fF
C359 vdd dff_7/w_132_78# 0.19fF
C360 dff_1/a_57_48# vdd 0.82fF
C361 gnd p2 0.31fF
C362 vdd dff_2/w_44_38# 0.42fF
C363 dff_8/a_50_n12# dff_8/a_57_n12# 0.44fF
C364 dff_2/a_100_88# clk 0.08fF
C365 vdd dff_1/w_44_38# 0.42fF
C366 dff_5/w_87_78# vdd 0.30fF
C367 vdd dff_10/w_44_38# 0.42fF
C368 dff_9/a_17_48# dff_9/a_17_8# 0.86fF
C369 gnd dff_5/a_17_8# 0.21fF
C370 dff_8/a_100_88# dff_8/a_100_28# 0.41fF
C371 dff_3/a_50_n12# vdd 0.60fF
C372 b0 dff_1/w_132_78# 0.08fF
C373 vdd xor_4/w_4_38# 0.11fF
C374 a0 vdd 1.15fF
C375 dff_6/w_4_38# dff_6/a_17_8# 0.25fF
C376 dff_4/a_17_8# clk 1.33fF
C377 b3_in vdd 0.01fF
C378 dff_7/w_4_38# clk 0.14fF
C379 p2 comp_4_0/a_17_48# 0.13fF
C380 comp_4_0/a_49_48# p1 0.43fF
C381 dff_10/w_4_38# dff_10/a_17_8# 0.25fF
C382 comp_4_0/a_57_4# p1 0.13fF
C383 xor_7/w_42_39# p3 0.12fF
C384 xor_3/a_17_8# p3 0.29fF
C385 dff_11/a_50_n12# clk 0.49fF
C386 xor_4/w_75_54# xor_4/a_52_122# 0.07fF
C387 g0 comp_4_0/a_17_4# 0.13fF
C388 p0 xor_0/a_17_8# 0.29fF
C389 dff_4/a_57_n12# dff_4/a_50_n12# 0.44fF
C390 dff_2/a_100_88# dff_2/w_87_78# 0.08fF
C391 dff_10/a_100_88# dff_10/a_100_28# 0.41fF
C392 comp_4_0/w_4_38# comp_4_0/a_17_4# 0.08fF
C393 a0_in clk 0.18fF
C394 vdd dff_12/w_132_78# 0.19fF
C395 xor_1/w_75_54# b1 0.07fF
C396 p2 comp_3_0/a_17_18# 0.08fF
C397 dff_12/w_44_38# clk 0.14fF
C398 comp_4_0/a_25_4# comp_4_0/a_41_4# 0.32fF
C399 a1 b1 0.67fF
C400 dff_5/w_132_78# dff_5/a_100_88# 0.09fF
C401 xor_4/a_17_8# xor_4/w_4_38# 0.08fF
C402 dff_10/a_17_8# clk 0.79fF
C403 s3_out vdd 0.47fF
C404 b3 xor_3/w_75_54# 0.07fF
C405 comp_4_0/a_49_48# comp_4_0/a_17_48# 0.52fF
C406 dff_4/a_17_48# clk 0.53fF
C407 b2 and_2/a_17_47# 0.08fF
C408 vdd comp_2_0/w_4_38# 0.17fF
C409 and_0/w_55_38# vdd 0.09fF
C410 dff_6/w_87_78# dff_6/a_100_88# 0.08fF
C411 dff_5/w_4_38# clk 0.14fF
C412 g2 comp_3_0/w_4_55# 0.15fF
C413 dff_3/a_17_8# dff_3/a_17_48# 0.86fF
C414 dff_4/w_44_38# vdd 0.42fF
C415 vdd xor_5/w_4_38# 0.11fF
C416 clk dff_1/w_4_38# 0.14fF
C417 comp_4_0/a_17_4# c4 0.05fF
C418 s0 clk 0.18fF
C419 xor_0/a_17_8# xor_0/w_4_38# 0.08fF
C420 gnd dff_9/a_57_n12# 0.44fF
C421 comp_3_0/w_90_55# comp_3_0/a_17_18# 0.09fF
C422 p0 xor_0/w_75_54# 0.09fF
C423 dff_2/a_100_88# dff_2/a_100_28# 0.41fF
C424 p1 comp_4_0/a_41_4# 0.08fF
C425 a0 dff_0/w_132_78# 0.08fF
C426 comp_4_0/a_17_48# p3 0.08fF
C427 dff_4/w_132_78# vdd 0.19fF
C428 gnd dff_0/a_17_8# 0.21fF
C429 and_0/w_4_37# b0 0.12fF
C430 xor_7/a_17_8# vdd 0.44fF
C431 dff_8/w_132_78# s0_out 0.08fF
C432 xor_1/w_75_54# p1 0.09fF
C433 dff_4/a_100_88# vdd 0.41fF
C434 dff_0/w_44_38# dff_0/a_57_48# 0.01fF
C435 p3 xor_3/w_42_39# 0.08fF
C436 gnd xor_0/a_17_8# 0.25fF
C437 gnd dff_11/a_100_88# 0.07fF
C438 a1 p1 0.47fF
C439 dff_0/w_4_38# dff_0/a_17_8# 0.25fF
C440 gnd comp_4_0/a_41_4# 0.66fF
C441 b2 dff_5/w_132_78# 0.08fF
C442 xor_6/w_42_39# c2 0.09fF
C443 dff_5/a_50_n12# dff_5/w_87_78# 0.14fF
C444 p0 comp_2_0/a_17_48# 0.17fF
C445 p2 vdd 0.48fF
C446 dff_6/w_44_38# vdd 0.42fF
C447 a2 xor_2/w_75_54# 0.14fF
C448 and_3/w_55_38# g3 0.08fF
C449 and_1/w_4_37# b1 0.12fF
C450 gnd a1 0.59fF
C451 dff_9/w_87_78# clk 0.36fF
C452 dff_8/w_44_38# dff_8/a_50_n12# 0.24fF
C453 dff_5/a_17_8# vdd 0.09fF
C454 dff_9/w_132_78# vdd 0.19fF
C455 gnd dff_8/a_100_28# 0.44fF
C456 dff_1/a_50_n12# dff_1/w_87_78# 0.14fF
C457 dff_5/a_100_88# clk 0.08fF
C458 xor_7/w_75_54# p3 0.07fF
C459 dff_8/w_44_38# dff_8/a_57_48# 0.01fF
C460 dff_3/w_87_78# dff_3/a_50_n12# 0.14fF
C461 b0_in clk 0.18fF
C462 dff_0/a_50_n12# dff_0/w_87_78# 0.14fF
C463 gnd dff_0/a_57_n12# 0.44fF
C464 comp_3_0/a_41_18# p1 0.13fF
C465 comp_3_0/w_90_55# vdd 0.12fF
C466 dff_7/w_44_38# clk 0.14fF
C467 p2 comp_4_0/a_33_48# 0.41fF
C468 comp_4_0/a_49_48# vdd 0.21fF
C469 dff_0/w_87_78# clk 0.36fF
C470 dff_4/w_4_38# clk 0.14fF
C471 comp_2_0/a_17_48# p1 0.08fF
C472 dff_7/a_100_88# dff_7/w_132_78# 0.09fF
C473 gnd dff_2/a_57_n12# 0.44fF
C474 xor_3/a_17_8# xor_3/w_4_38# 0.08fF
C475 g0 comp_2_0/w_4_38# 0.18fF
C476 gnd comp_3_0/a_41_18# 0.23fF
C477 and_0/w_55_38# g0 0.08fF
C478 p3 a3 0.47fF
C479 dff_10/a_57_48# dff_10/w_44_38# 0.01fF
C480 dff_4/w_44_38# dff_4/a_50_n12# 0.24fF
C481 dff_11/w_44_38# dff_11/a_57_48# 0.01fF
C482 g0 xor_5/w_4_38# 0.12fF
C483 b2_in clk 0.18fF
C484 xor_7/a_17_8# s3 0.29fF
C485 comp_4_0/w_86_40# comp_4_0/a_17_4# 0.09fF
C486 dff_10/a_17_48# vdd 0.82fF
C487 c3 xor_7/w_4_38# 0.12fF
C488 vdd dff_1/w_87_78# 0.30fF
C489 dff_6/a_17_48# dff_6/a_17_8# 0.86fF
C490 comp_2_0/a_17_8# comp_2_0/a_17_48# 0.82fF
C491 vdd dff_7/a_57_48# 0.82fF
C492 vdd p3 0.30fF
C493 a2 and_2/w_4_37# 0.12fF
C494 gnd dff_6/a_50_n12# 0.05fF
C495 dff_9/a_50_n12# dff_9/a_17_8# 0.08fF
C496 comp_4_0/a_49_48# comp_4_0/a_33_48# 0.91fF
C497 dff_4/a_57_48# dff_4/w_44_38# 0.01fF
C498 dff_3/a_17_48# vdd 0.82fF
C499 comp_3_0/a_33_65# p1 0.41fF
C500 dff_5/w_4_38# dff_5/a_17_48# 0.01fF
C501 dff_10/a_100_88# clk 0.08fF
C502 dff_9/a_17_8# dff_9/w_44_38# 0.14fF
C503 and_2/w_55_38# vdd 0.09fF
C504 gnd dff_7/a_17_8# 0.21fF
C505 dff_2/w_44_38# clk 0.14fF
C506 vdd dff_0/a_17_8# 0.09fF
C507 comp_4_0/w_4_38# p2 0.18fF
C508 dff_11/a_50_n12# dff_11/a_57_48# 0.82fF
C509 gnd dff_2/a_17_8# 0.21fF
C510 clk dff_1/w_44_38# 0.14fF
C511 dff_8/w_87_78# vdd 0.30fF
C512 dff_5/w_87_78# clk 0.36fF
C513 dff_10/w_44_38# clk 0.14fF
C514 xor_0/a_17_8# vdd 0.44fF
C515 dff_3/a_50_n12# clk 0.49fF
C516 gnd and_3/a_17_47# 0.08fF
C517 vdd dff_11/a_100_88# 0.41fF
C518 dff_4/a_100_88# dff_4/a_100_28# 0.41fF
C519 dff_5/w_44_38# dff_5/a_57_48# 0.01fF
C520 comp_4_0/a_17_4# g2 0.45fF
C521 dff_2/w_132_78# vdd 0.19fF
C522 b3_in clk 0.18fF
C523 dff_3/w_44_38# dff_3/a_50_n12# 0.24fF
C524 dff_5/a_17_8# dff_5/a_50_n12# 0.08fF
C525 a1 vdd 1.16fF
C526 xor_1/w_4_38# xor_1/a_17_8# 0.08fF
C527 gnd dff_8/a_100_88# 0.07fF
C528 g0 comp_4_0/a_49_48# 0.43fF
C529 dff_3/a_100_88# b1 0.05fF
C530 dff_7/a_50_n12# dff_7/w_44_38# 0.24fF
C531 p2 c4 0.09fF
C532 g0 comp_4_0/a_57_4# 0.13fF
C533 dff_2/a_57_48# vdd 0.82fF
C534 inv_4/w_0_0# vdd 0.12fF
C535 comp_4_0/w_4_38# comp_4_0/a_49_48# 0.14fF
C536 and_0/w_4_37# a0 0.12fF
C537 s3 p3 0.72fF
C538 dff_12/w_44_38# dff_12/a_50_n12# 0.24fF
C539 s2_out inv_2/w_0_0# 0.09fF
C540 comp_3_0/a_33_65# comp_3_0/a_17_18# 0.65fF
C541 and_3/w_4_37# and_3/a_17_47# 0.04fF
C542 dff_1/a_17_48# vdd 0.82fF
C543 gnd dff_9/a_100_88# 0.07fF
C544 gnd dff_1/a_100_28# 0.44fF
C545 and_1/a_17_47# g1 0.05fF
C546 b1 p1 0.72fF
C547 p0 p1 0.01fF
C548 dff_1/a_17_8# dff_1/w_4_38# 0.25fF
C549 xor_2/w_75_54# b2 0.07fF
C550 comp_4_0/w_4_38# p3 0.17fF
C551 dff_9/a_50_n12# dff_9/w_44_38# 0.24fF
C552 comp_4_0/a_25_4# p1 0.18fF
C553 dff_9/w_4_38# s1 0.14fF
C554 dff_6/w_44_38# dff_6/a_57_48# 0.01fF
C555 b0 xor_0/w_42_39# 0.13fF
C556 dff_3/w_4_38# dff_3/a_17_48# 0.01fF
C557 dff_4/w_44_38# clk 0.14fF
C558 gnd b1 0.38fF
C559 vdd comp_2_0/a_17_48# 0.81fF
C560 gnd p0 0.24fF
C561 comp_3_0/a_17_65# comp_3_0/w_4_55# 0.10fF
C562 p2 c2 0.13fF
C563 inv_2/w_0_0# inv_2/a_13_n30# 0.08fF
C564 xor_3/w_4_38# a3 0.13fF
C565 p0 comp_2_0/a_17_8# 0.09fF
C566 and_1/w_4_37# vdd 0.20fF
C567 gnd inv_0/a_13_n30# 0.25fF
C568 gnd comp_4_0/a_25_4# 0.26fF
C569 vdd dff_6/a_50_n12# 0.60fF
C570 dff_2/a_17_8# dff_2/a_17_48# 0.86fF
C571 inv_4/w_0_0# inv_4/a_13_n30# 0.08fF
C572 dff_8/a_50_n12# dff_8/a_57_48# 0.82fF
C573 gnd s2 0.09fF
C574 a2 xor_2/w_4_38# 0.13fF
C575 gnd and_0/a_17_47# 0.08fF
C576 gnd dff_10/a_50_n12# 0.05fF
C577 dff_1/a_100_88# dff_1/w_87_78# 0.08fF
C578 dff_4/a_100_88# clk 0.08fF
C579 g0 comp_4_0/a_41_4# 0.23fF
C580 xor_2/a_17_8# xor_2/w_4_38# 0.08fF
C581 dff_8/w_4_38# dff_8/a_17_8# 0.25fF
C582 b3 dff_7/w_132_78# 0.08fF
C583 gnd dff_3/a_100_88# 0.07fF
C584 dff_2/a_50_n12# dff_2/w_44_38# 0.24fF
C585 and_2/a_17_47# and_2/w_55_38# 0.09fF
C586 gnd dff_12/a_17_8# 0.21fF
C587 vdd xor_3/w_4_38# 0.13fF
C588 xor_3/a_17_8# gnd 0.25fF
C589 dff_12/w_87_78# dff_12/a_100_88# 0.08fF
C590 c4 p3 0.09fF
C591 dff_9/a_50_n12# dff_9/a_57_48# 0.82fF
C592 dff_7/a_17_8# vdd 0.09fF
C593 dff_6/w_44_38# clk 0.14fF
C594 dff_6/w_132_78# a3 0.08fF
C595 dff_2/a_17_8# vdd 0.09fF
C596 gnd dff_11/a_57_n12# 0.44fF
C597 dff_5/a_17_8# clk 1.33fF
C598 and_3/a_17_47# vdd 0.86fF
C599 dff_9/w_44_38# dff_9/a_57_48# 0.01fF
C600 comp_3_0/a_25_18# g1 0.28fF
C601 gnd p1 1.28fF
C602 dff_11/w_44_38# dff_11/a_50_n12# 0.24fF
C603 dff_6/w_132_78# vdd 0.19fF
C604 comp_2_0/a_17_8# p1 0.08fF
C605 dff_11/w_87_78# vdd 0.30fF
C606 s1 p1 0.72fF
C607 b2 and_2/w_4_37# 0.12fF
C608 s3_out inv_3/a_13_n30# 0.05fF
C609 gnd dff_3/a_17_8# 0.21fF
C610 dff_12/a_57_48# dff_12/a_50_n12# 0.82fF
C611 dff_10/a_17_48# dff_10/w_4_38# 0.01fF
C612 vdd dff_8/a_100_88# 0.41fF
C613 a2 xor_2/a_17_8# 0.52fF
C614 gnd dff_7/a_57_n12# 0.44fF
C615 dff_4/a_100_88# dff_4/w_87_78# 0.08fF
C616 gnd comp_2_0/a_17_8# 0.33fF
C617 gnd s1 0.09fF
C618 vdd inv_1/w_0_0# 0.16fF
C619 dff_8/w_4_38# vdd 0.38fF
C620 g0 comp_3_0/a_41_18# 0.13fF
C621 vdd dff_5/a_57_48# 0.82fF
C622 g0 comp_2_0/a_17_48# 0.08fF
C623 gnd dff_12/a_100_88# 0.07fF
C624 comp_3_0/a_17_65# g1 0.13fF
C625 vdd dff_9/a_100_88# 0.41fF
C626 dff_10/a_17_48# clk 0.55fF
C627 dff_1/w_87_78# clk 0.36fF
C628 gnd dff_0/a_100_88# 0.07fF
C629 comp_3_0/a_17_18# p1 0.13fF
C630 dff_9/w_4_38# vdd 0.37fF
C631 s3_out dff_11/w_132_78# 0.08fF
C632 g2 p2 1.85fF
C633 dff_11/a_17_8# dff_11/a_17_48# 0.86fF
C634 dff_4/a_17_48# dff_4/a_17_8# 0.86fF
C635 dff_0/a_17_8# dff_0/a_50_n12# 0.08fF
C636 p0 xor_4/w_42_39# 0.09fF
C637 vdd b1 0.68fF
C638 vdd dff_11/a_17_48# 0.82fF
C639 gnd comp_3_0/a_17_18# 0.27fF
C640 p0 vdd 0.38fF
C641 dff_3/a_17_48# clk 0.53fF
C642 vdd dff_12/w_87_78# 0.30fF
C643 dff_1/a_17_8# dff_1/w_44_38# 0.14fF
C644 dff_10/w_87_78# dff_10/a_50_n12# 0.14fF
C645 vdd inv_0/a_13_n30# 0.44fF
C646 dff_9/a_50_n12# dff_9/w_87_78# 0.14fF
C647 p0 xor_4/a_52_122# 0.13fF
C648 xor_3/a_17_8# a3 0.52fF
C649 gnd dff_8/a_17_8# 0.21fF
C650 g0 comp_3_0/a_33_65# 0.41fF
C651 vdd s2 0.08fF
C652 gnd dff_1/a_50_n12# 0.05fF
C653 and_0/a_17_47# vdd 0.86fF
C654 vdd dff_10/a_50_n12# 0.60fF
C655 dff_0/a_17_8# clk 0.51fF
C656 comp_3_0/w_4_55# g1 0.16fF
C657 p2 xor_2/w_75_54# 0.09fF
C658 p2 c3 0.09fF
C659 dff_8/w_87_78# clk 0.36fF
C660 dff_3/a_100_88# vdd 0.41fF
C661 dff_11/a_100_88# clk 0.08fF
C662 vdd dff_12/a_17_8# 0.09fF
C663 xor_3/a_17_8# vdd 0.44fF
C664 dff_5/w_44_38# vdd 0.42fF
C665 xor_5/w_75_54# p1 0.07fF
C666 dff_12/w_4_38# dff_12/a_17_8# 0.25fF
C667 dff_7/a_17_48# dff_7/a_17_8# 0.86fF
C668 dff_3/a_100_88# dff_3/a_100_28# 0.41fF
C669 dff_0/a_57_n12# dff_0/a_50_n12# 0.44fF
C670 a0 xor_0/w_42_39# 0.09fF
C671 gnd a3 0.63fF
C672 gnd dff_6/a_100_28# 0.44fF
C673 vdd xor_0/w_4_38# 0.11fF
C674 dff_3/a_57_48# dff_3/a_50_n12# 0.82fF
C675 vdd p1 0.67fF
C676 dff_5/a_17_8# dff_5/a_17_48# 0.86fF
C677 xor_5/w_75_54# s1 0.09fF
C678 comp_3_0/w_90_55# c3 0.08fF
C679 gnd dff_11/a_17_8# 0.21fF
C680 p0 comp_2_0/w_58_38# 0.14fF
C681 p2 g3 0.05fF
C682 g2 p3 0.52fF
C683 dff_3/a_17_8# vdd 0.09fF
C684 gnd comp_2_0/a_25_8# 0.25fF
C685 gnd vdd 1.42fF
C686 dff_6/a_57_48# dff_6/a_50_n12# 0.82fF
C687 comp_2_0/a_25_8# comp_2_0/a_17_8# 0.25fF
C688 vdd s1 0.08fF
C689 dff_0/w_4_38# vdd 0.37fF
C690 dff_1/a_17_48# clk 0.53fF
C691 dff_5/a_50_n12# dff_5/a_57_48# 0.82fF
C692 a3 xor_3/w_42_39# 0.09fF
C693 dff_7/a_50_n12# dff_7/a_57_48# 0.82fF
C694 gnd dff_3/a_100_28# 0.44fF
C695 vdd inv_3/w_0_0# 0.12fF
C696 g2 and_2/w_55_38# 0.08fF
C697 dff_9/w_132_78# s1_out 0.08fF
C698 dff_4/w_4_38# dff_4/a_17_8# 0.25fF
C699 g0 p0 0.08fF
C700 gnd dff_12/a_100_28# 0.44fF
C701 comp_4_0/a_17_48# vdd 0.80fF
C702 vdd dff_12/a_100_88# 0.41fF
C703 s2_out dff_10/w_132_78# 0.08fF
C704 c3 p3 0.13fF
C705 comp_4_0/a_33_48# p1 0.41fF
C706 dff_2/a_17_8# dff_2/w_4_38# 0.25fF
C707 b3 p3 0.72fF
C708 and_3/w_4_37# a3 0.12fF
C709 dff_0/a_100_88# vdd 0.41fF
C710 dff_12/w_44_38# dff_12/a_57_48# 0.01fF
C711 g0 and_0/a_17_47# 0.05fF
C712 clk dff_6/a_50_n12# 0.49fF
C713 s3 xor_7/w_42_39# 0.08fF
C714 a2 b2 0.79fF
C715 gnd xor_4/a_17_8# 0.25fF
C716 dff_1/a_100_88# dff_1/a_100_28# 0.41fF
C717 gnd inv_4/a_13_n30# 0.25fF
C718 and_3/w_4_37# vdd 0.20fF
C719 xor_5/w_42_39# p1 0.12fF
C720 dff_12/a_100_28# dff_12/a_100_88# 0.41fF
C721 gnd dff_10/a_100_28# 0.44fF
C722 inv_0/w_0_0# s0_out 0.09fF
C723 xor_2/a_17_8# b2 0.29fF
C724 inv_1/w_0_0# inv_1/a_13_n30# 0.08fF
C725 dff_12/w_132_78# c4_out 0.08fF
C726 dff_8/a_17_8# vdd 0.09fF
C727 dff_1/a_50_n12# vdd 0.60fF
C728 comp_2_0/a_17_8# comp_2_0/w_58_38# 0.09fF
C729 comp_4_0/a_17_48# comp_4_0/a_33_48# 0.49fF
C730 dff_7/a_17_8# clk 1.33fF
C731 g3 p3 0.34fF
C732 b0_in dff_1/w_4_38# 0.14fF
C733 dff_2/a_17_8# clk 1.33fF
C734 dff_5/w_44_38# dff_5/a_50_n12# 0.24fF
C735 s1 xor_5/w_42_39# 0.08fF
C736 dff_4/w_4_38# dff_4/a_17_48# 0.01fF
C737 g0 p1 1.90fF
C738 gnd s3 0.09fF
C739 dff_10/a_100_88# dff_10/w_132_78# 0.09fF
C740 dff_3/a_100_88# dff_3/w_87_78# 0.08fF
C741 dff_11/w_132_78# dff_11/a_100_88# 0.09fF
C742 dff_8/w_132_78# dff_8/a_100_88# 0.09fF
C743 comp_4_0/w_4_38# p1 0.18fF
C744 dff_3/w_4_38# dff_3/a_17_8# 0.25fF
C745 dff_2/a_17_48# vdd 0.82fF
C746 gnd dff_4/a_50_n12# 0.05fF
C747 gnd g0 0.51fF
C748 dff_11/w_87_78# clk 0.36fF
C749 dff_2/a_57_48# dff_2/a_50_n12# 0.82fF
C750 dff_5/w_4_38# b2_in 0.14fF
C751 dff_8/a_100_88# clk 0.08fF
C752 g0 comp_2_0/a_17_8# 0.13fF
C753 b3_in dff_7/w_4_38# 0.14fF
C754 g0 s1 0.47fF
C755 vdd a3 1.14fF
C756 comp_4_0/a_17_4# g1 0.13fF
C757 gnd and_2/a_17_47# 0.08fF
C758 dff_8/w_4_38# clk 0.14fF
C759 vdd dff_10/w_87_78# 0.30fF
C760 gnd dff_5/a_50_n12# 0.05fF
C761 vdd dff_11/a_17_8# 0.09fF
C762 a2_in vdd 0.01fF
C763 gnd dff_5/a_57_n12# 0.44fF
C764 dff_10/a_57_48# dff_10/a_50_n12# 0.82fF
C765 dff_0/a_100_88# dff_0/w_132_78# 0.09fF
C766 dff_6/w_44_38# dff_6/a_17_8# 0.14fF
C767 dff_2/a_50_n12# dff_2/a_57_n12# 0.44fF
C768 p0 c2 0.17fF
C769 xor_4/w_42_39# xor_4/a_52_122# 0.12fF
C770 vdd and_1/w_55_38# 0.09fF
C771 gnd dff_4/a_100_28# 0.44fF
C772 comp_4_0/w_4_38# comp_4_0/a_17_48# 0.12fF
C773 dff_10/w_4_38# s2 0.14fF
C774 vdd dff_12/w_4_38# 0.37fF
C775 dff_10/w_44_38# dff_10/a_17_8# 0.14fF
C776 clk dff_9/a_100_88# 0.08fF
C777 dff_3/a_50_n12# dff_3/a_57_n12# 0.44fF
C778 gnd dff_1/a_100_88# 0.07fF
C779 s2 c2 0.47fF
C780 b0 a0 0.69fF
C781 dff_9/w_4_38# clk 0.14fF
C782 p2 xor_6/w_75_54# 0.07fF
C783 s3 xor_7/w_75_54# 0.09fF
C784 gnd c4 0.25fF
C785 p2 comp_3_0/a_17_65# 0.08fF
C786 g0 comp_3_0/a_17_18# 0.13fF
C787 dff_11/a_17_48# clk 0.53fF
C788 dff_12/w_87_78# clk 0.36fF
C789 dff_4/w_44_38# dff_4/a_17_8# 0.14fF
C790 gnd dff_12/a_57_n12# 0.44fF
C791 b2 dff_5/a_100_88# 0.05fF
C792 s2 clk 0.18fF
C793 dff_10/a_50_n12# clk 0.49fF
C794 a1 xor_1/w_42_39# 0.09fF
C795 vdd xor_4/a_17_8# 0.44fF
C796 gnd inv_1/a_13_n30# 0.25fF
C797 dff_7/a_17_8# dff_7/a_50_n12# 0.08fF
C798 dff_5/a_100_28# dff_5/a_100_88# 0.41fF
C799 inv_4/a_13_n30# vdd 0.44fF
C800 gnd dff_7/a_100_88# 0.07fF
C801 a2 dff_4/w_132_78# 0.08fF
C802 dff_3/a_100_88# clk 0.08fF
C803 dff_12/a_17_8# clk 1.33fF
C804 s0 xor_4/w_75_54# 0.09fF
C805 xor_4/a_17_8# xor_4/a_52_122# 0.05fF
C806 c2 p1 0.09fF
C807 dff_2/a_17_8# dff_2/a_50_n12# 0.08fF
C808 vdd comp_2_0/w_58_38# 0.15fF
C809 a2 dff_4/a_100_88# 0.05fF
C810 dff_5/w_44_38# clk 0.14fF
C811 p2 comp_3_0/w_4_55# 0.15fF
C812 s2_out inv_2/a_13_n30# 0.05fF
C813 b3 and_3/a_17_47# 0.08fF
C814 gnd c2 0.33fF
C815 g0 xor_5/w_75_54# 0.14fF
C816 a2 p2 0.47fF
C817 c2 comp_2_0/a_17_8# 0.05fF
C818 dff_5/w_87_78# dff_5/a_100_88# 0.08fF
C819 s3 vdd 0.08fF
C820 dff_6/w_87_78# dff_6/a_50_n12# 0.14fF
C821 gnd dff_0/a_50_n12# 0.05fF
C822 vdd dff_0/w_132_78# 0.19fF
C823 and_0/w_4_37# and_0/a_17_47# 0.04fF
C824 p2 xor_2/a_17_8# 0.29fF
C825 dff_12/a_17_8# dff_12/a_17_48# 0.86fF
C826 dff_10/a_100_88# s2_out 0.05fF
C827 p3 xor_3/w_75_54# 0.09fF
C828 dff_0/w_44_38# dff_0/a_17_8# 0.14fF
C829 vdd dff_4/a_50_n12# 0.60fF
C830 g0 vdd 1.14fF
C831 dff_3/a_17_8# clk 1.33fF
C832 dff_1/a_17_8# dff_1/a_17_48# 0.86fF
C833 dff_3/w_4_38# vdd 0.37fF
C834 gnd clk 0.62fF
C835 xor_6/w_4_38# vdd 0.11fF
C836 dff_11/a_17_48# dff_11/w_4_38# 0.01fF
C837 comp_4_0/w_4_38# vdd 0.22fF
C838 and_1/w_4_37# and_1/a_17_47# 0.04fF
C839 dff_3/w_44_38# dff_3/a_17_8# 0.14fF
C840 and_3/a_17_47# g3 0.05fF
C841 and_2/a_17_47# vdd 0.86fF
C842 s1 clk 0.18fF
C843 dff_0/w_4_38# clk 0.14fF
C844 dff_5/a_50_n12# vdd 0.60fF
C845 gnd dff_8/a_57_n12# 0.44fF
C846 g2 comp_4_0/a_25_4# 0.27fF
C847 xor_7/a_17_8# xor_7/w_4_38# 0.08fF
C848 comp_2_0/w_4_38# g1 0.18fF
C849 p2 xor_6/a_17_8# 0.05fF
C850 dff_7/a_17_48# vdd 0.82fF
C851 dff_4/a_57_48# vdd 0.82fF
C852 dff_12/a_100_88# clk 0.08fF
C853 dff_9/a_50_n12# dff_9/a_57_n12# 0.44fF
C854 dff_3/w_87_78# vdd 0.30fF
C855 dff_9/w_4_38# dff_9/a_17_48# 0.01fF
C856 g0 comp_4_0/a_33_48# 0.31fF
C857 dff_1/a_100_88# vdd 0.41fF
C858 dff_0/a_100_88# clk 0.08fF
C859 dff_5/w_132_78# vdd 0.19fF
C860 c4 vdd 0.56fF
C861 comp_4_0/w_4_38# comp_4_0/a_33_48# 0.10fF
C862 dff_2/a_17_48# dff_2/w_4_38# 0.01fF
C863 dff_5/w_4_38# dff_5/a_17_8# 0.25fF
C864 comp_3_0/a_25_18# comp_3_0/a_41_18# 0.26fF
C865 xor_5/a_17_8# xor_5/w_4_38# 0.08fF
C866 dff_8/w_87_78# dff_8/a_50_n12# 0.14fF
C867 inv_4/w_0_0# c4_out 0.09fF
C868 c4 dff_12/w_4_38# 0.14fF
C869 inv_1/w_0_0# s1_out 0.09fF
C870 g2 p1 0.06fF
C871 g0 xor_5/w_42_39# 0.09fF
C872 p2 g1 1.02fF
C873 dff_1/a_57_48# dff_1/w_44_38# 0.01fF
C874 dff_8/a_17_8# clk 0.51fF
C875 xor_1/w_4_38# a1 0.13fF
C876 dff_1/a_50_n12# clk 0.49fF
C877 dff_10/a_57_48# vdd 0.82fF
C878 gnd dff_0/a_100_28# 0.44fF
C879 c3 xor_7/w_42_39# 0.09fF
C880 vdd inv_1/a_13_n30# 0.44fF
C881 vdd dff_1/w_132_78# 0.19fF
C882 xor_3/a_17_8# b3 0.13fF
C883 vdd dff_7/a_100_88# 0.41fF
C884 vdd dff_7/w_87_78# 0.30fF
C885 gnd g2 0.24fF
C886 dff_9/a_100_88# s1_out 0.05fF
C887 vdd dff_2/w_4_38# 0.37fF
C888 dff_6/a_57_48# vdd 0.82fF
C889 dff_9/a_100_28# dff_9/a_100_88# 0.41fF
C890 gnd inv_3/a_13_n30# 0.25fF
C891 dff_2/a_100_88# dff_2/w_132_78# 0.09fF
C892 vdd dff_10/w_4_38# 0.37fF
C893 dff_2/a_100_88# a1 0.05fF
C894 dff_2/a_17_48# clk 0.53fF
C895 gnd dff_2/a_100_28# 0.44fF
C896 dff_10/a_17_48# dff_10/a_17_8# 0.86fF
C897 vdd c2 0.58fF
C898 dff_6/a_17_8# dff_6/a_50_n12# 0.08fF
C899 comp_4_0/w_4_38# g0 0.18fF
C900 p2 xor_6/w_42_39# 0.12fF
C901 g2 comp_4_0/a_17_48# 0.12fF
C902 g0 Gnd 1.42fF
C903 gnd Gnd 22.50fF
C904 and_3/a_17_47# Gnd 0.32fF
C905 b3 Gnd 1.62fF
C906 and_3/w_55_38# Gnd 1.51fF
C907 and_3/w_4_37# Gnd 1.93fF
C908 comp_3_0/a_41_18# Gnd 0.01fF
C909 comp_3_0/a_25_18# Gnd 0.12fF
C910 comp_3_0/a_17_65# Gnd 0.00fF
C911 comp_3_0/a_17_18# Gnd 0.40fF
C912 p2 Gnd 9.55fF
C913 g2 Gnd 0.66fF
C914 comp_3_0/w_90_55# Gnd 1.51fF
C915 comp_3_0/w_4_55# Gnd 4.37fF
C916 and_2/a_17_47# Gnd 0.32fF
C917 b2 Gnd 1.62fF
C918 and_2/w_55_38# Gnd 1.51fF
C919 and_2/w_4_37# Gnd 1.93fF
C920 and_1/a_17_47# Gnd 0.32fF
C921 b1 Gnd 1.62fF
C922 and_1/w_55_38# Gnd 1.51fF
C923 and_1/w_4_37# Gnd 1.93fF
C924 and_0/a_17_47# Gnd 0.32fF
C925 and_0/w_55_38# Gnd 1.51fF
C926 and_0/w_4_37# Gnd 1.93fF
C927 dff_11/a_57_n12# Gnd 0.01fF
C928 dff_11/a_100_28# Gnd 0.01fF
C929 s3_out Gnd 0.51fF
C930 dff_11/a_100_88# Gnd 0.30fF
C931 dff_11/a_50_n12# Gnd 0.60fF
C932 dff_11/a_17_8# Gnd 0.53fF
C933 dff_11/w_132_78# Gnd 1.51fF
C934 dff_11/w_87_78# Gnd 1.62fF
C935 dff_11/w_44_38# Gnd 3.38fF
C936 dff_11/w_4_38# Gnd 3.28fF
C937 dff_12/a_57_n12# Gnd 0.01fF
C938 dff_12/a_100_28# Gnd 0.01fF
C939 c4_out Gnd 0.50fF
C940 dff_12/a_100_88# Gnd 0.30fF
C941 dff_12/a_50_n12# Gnd 0.60fF
C942 dff_12/a_17_8# Gnd 0.53fF
C943 dff_12/w_132_78# Gnd 1.51fF
C944 dff_12/w_87_78# Gnd 1.62fF
C945 dff_12/w_44_38# Gnd 3.38fF
C946 dff_12/w_4_38# Gnd 3.28fF
C947 dff_10/a_57_n12# Gnd 0.01fF
C948 dff_10/a_100_28# Gnd 0.01fF
C949 s2_out Gnd 0.50fF
C950 dff_10/a_100_88# Gnd 0.30fF
C951 dff_10/a_50_n12# Gnd 0.60fF
C952 dff_10/a_17_8# Gnd 0.53fF
C953 dff_10/w_132_78# Gnd 1.51fF
C954 dff_10/w_87_78# Gnd 1.62fF
C955 dff_10/w_44_38# Gnd 3.38fF
C956 dff_10/w_4_38# Gnd 3.28fF
C957 xor_7/a_17_8# Gnd 0.54fF
C958 xor_7/w_75_54# Gnd 1.43fF
C959 xor_7/w_42_39# Gnd 1.51fF
C960 xor_7/w_4_38# Gnd 1.51fF
C961 inv_4/a_13_n30# Gnd 0.09fF
C962 inv_4/w_0_0# Gnd 1.51fF
C963 xor_6/a_17_8# Gnd 0.54fF
C964 xor_6/w_75_54# Gnd 1.43fF
C965 xor_6/w_42_39# Gnd 1.51fF
C966 xor_6/w_4_38# Gnd 1.51fF
C967 inv_3/a_13_n30# Gnd 0.09fF
C968 inv_3/w_0_0# Gnd 1.51fF
C969 xor_5/a_17_8# Gnd 0.54fF
C970 xor_5/w_75_54# Gnd 1.43fF
C971 xor_5/w_42_39# Gnd 1.51fF
C972 xor_5/w_4_38# Gnd 1.51fF
C973 inv_2/a_13_n30# Gnd 0.09fF
C974 inv_2/w_0_0# Gnd 1.51fF
C975 xor_4/a_17_8# Gnd 0.54fF
C976 xor_4/a_52_122# Gnd 1.08fF
C977 xor_4/w_75_54# Gnd 1.43fF
C978 xor_4/w_42_39# Gnd 1.51fF
C979 xor_4/w_4_38# Gnd 1.51fF
C980 inv_1/a_13_n30# Gnd 0.09fF
C981 inv_1/w_0_0# Gnd 1.51fF
C982 inv_0/a_13_n30# Gnd 0.09fF
C983 inv_0/w_0_0# Gnd 1.51fF
C984 xor_3/a_17_8# Gnd 0.54fF
C985 xor_3/w_75_54# Gnd 1.43fF
C986 xor_3/w_42_39# Gnd 1.51fF
C987 xor_3/w_4_38# Gnd 1.51fF
C988 xor_2/a_17_8# Gnd 0.54fF
C989 xor_2/w_75_54# Gnd 1.43fF
C990 xor_2/w_42_39# Gnd 1.51fF
C991 xor_2/w_4_38# Gnd 1.51fF
C992 xor_1/a_17_8# Gnd 0.54fF
C993 xor_1/w_75_54# Gnd 1.43fF
C994 xor_1/w_42_39# Gnd 1.51fF
C995 xor_1/w_4_38# Gnd 1.51fF
C996 xor_0/a_17_8# Gnd 0.54fF
C997 xor_0/w_75_54# Gnd 1.43fF
C998 xor_0/w_42_39# Gnd 1.51fF
C999 xor_0/w_4_38# Gnd 1.51fF
C1000 comp_2_0/a_25_8# Gnd 0.01fF
C1001 c2 Gnd 0.68fF
C1002 comp_2_0/a_17_48# Gnd 0.00fF
C1003 comp_2_0/a_17_8# Gnd 0.29fF
C1004 p1 Gnd 3.69fF
C1005 g1 Gnd 0.98fF
C1006 comp_2_0/w_58_38# Gnd 1.73fF
C1007 comp_2_0/w_4_38# Gnd 2.84fF
C1008 dff_9/a_57_n12# Gnd 0.01fF
C1009 dff_9/a_100_28# Gnd 0.01fF
C1010 s1_out Gnd 0.46fF
C1011 dff_9/a_100_88# Gnd 0.30fF
C1012 dff_9/a_50_n12# Gnd 0.60fF
C1013 dff_9/a_17_8# Gnd 0.53fF
C1014 dff_9/w_132_78# Gnd 1.51fF
C1015 dff_9/w_87_78# Gnd 1.62fF
C1016 dff_9/w_44_38# Gnd 3.38fF
C1017 dff_9/w_4_38# Gnd 3.28fF
C1018 dff_8/a_57_n12# Gnd 0.01fF
C1019 dff_8/a_100_28# Gnd 0.01fF
C1020 s0_out Gnd 0.45fF
C1021 dff_8/a_100_88# Gnd 0.30fF
C1022 dff_8/a_50_n12# Gnd 0.60fF
C1023 dff_8/a_17_8# Gnd 0.53fF
C1024 clk Gnd 10.67fF
C1025 dff_8/w_132_78# Gnd 1.51fF
C1026 dff_8/w_87_78# Gnd 1.62fF
C1027 dff_8/w_44_38# Gnd 3.38fF
C1028 dff_8/w_4_38# Gnd 3.28fF
C1029 comp_4_0/a_57_4# Gnd 0.01fF
C1030 comp_4_0/a_41_4# Gnd 0.13fF
C1031 comp_4_0/a_25_4# Gnd 0.10fF
C1032 c4 Gnd 0.36fF
C1033 comp_4_0/a_49_48# Gnd 0.00fF
C1034 comp_4_0/a_33_48# Gnd 0.00fF
C1035 comp_4_0/a_17_48# Gnd 0.00fF
C1036 comp_4_0/a_17_4# Gnd 0.32fF
C1037 comp_4_0/w_86_40# Gnd 1.51fF
C1038 comp_4_0/w_4_38# Gnd 4.99fF
C1039 dff_7/a_57_n12# Gnd 0.01fF
C1040 dff_7/a_100_28# Gnd 0.01fF
C1041 dff_7/a_100_88# Gnd 0.30fF
C1042 dff_7/a_50_n12# Gnd 0.60fF
C1043 dff_7/a_17_8# Gnd 0.53fF
C1044 b3_in Gnd 0.19fF
C1045 dff_7/w_132_78# Gnd 1.51fF
C1046 dff_7/w_87_78# Gnd 1.62fF
C1047 dff_7/w_44_38# Gnd 3.38fF
C1048 dff_7/w_4_38# Gnd 3.28fF
C1049 dff_6/a_57_n12# Gnd 0.01fF
C1050 dff_6/a_100_28# Gnd 0.01fF
C1051 a3 Gnd 1.05fF
C1052 dff_6/a_100_88# Gnd 0.30fF
C1053 dff_6/a_50_n12# Gnd 0.60fF
C1054 dff_6/a_17_8# Gnd 0.53fF
C1055 a3_in Gnd 0.19fF
C1056 dff_6/w_132_78# Gnd 1.51fF
C1057 dff_6/w_87_78# Gnd 1.62fF
C1058 dff_6/w_44_38# Gnd 3.38fF
C1059 dff_6/w_4_38# Gnd 3.28fF
C1060 dff_4/a_57_n12# Gnd 0.01fF
C1061 dff_4/a_100_28# Gnd 0.01fF
C1062 a2 Gnd 1.04fF
C1063 dff_4/a_100_88# Gnd 0.30fF
C1064 dff_4/a_50_n12# Gnd 0.60fF
C1065 dff_4/a_17_8# Gnd 0.53fF
C1066 a2_in Gnd 0.19fF
C1067 dff_4/w_132_78# Gnd 1.51fF
C1068 dff_4/w_87_78# Gnd 1.62fF
C1069 dff_4/w_44_38# Gnd 3.38fF
C1070 dff_4/w_4_38# Gnd 3.28fF
C1071 dff_5/a_57_n12# Gnd 0.01fF
C1072 dff_5/a_100_28# Gnd 0.01fF
C1073 dff_5/a_100_88# Gnd 0.30fF
C1074 dff_5/a_50_n12# Gnd 0.60fF
C1075 dff_5/a_17_8# Gnd 0.53fF
C1076 b2_in Gnd 0.19fF
C1077 dff_5/w_132_78# Gnd 1.51fF
C1078 dff_5/w_87_78# Gnd 1.62fF
C1079 dff_5/w_44_38# Gnd 3.38fF
C1080 dff_5/w_4_38# Gnd 3.28fF
C1081 dff_3/a_57_n12# Gnd 0.01fF
C1082 dff_3/a_100_28# Gnd 0.01fF
C1083 dff_3/a_100_88# Gnd 0.30fF
C1084 dff_3/a_50_n12# Gnd 0.60fF
C1085 dff_3/a_17_8# Gnd 0.53fF
C1086 b1_in Gnd 0.19fF
C1087 dff_3/w_132_78# Gnd 1.51fF
C1088 dff_3/w_87_78# Gnd 1.62fF
C1089 dff_3/w_44_38# Gnd 3.38fF
C1090 dff_3/w_4_38# Gnd 3.28fF
C1091 dff_2/a_57_n12# Gnd 0.01fF
C1092 dff_2/a_100_28# Gnd 0.01fF
C1093 a1 Gnd 1.04fF
C1094 dff_2/a_100_88# Gnd 0.30fF
C1095 dff_2/a_50_n12# Gnd 0.60fF
C1096 dff_2/a_17_8# Gnd 0.53fF
C1097 a1_in Gnd 0.19fF
C1098 dff_2/w_132_78# Gnd 1.51fF
C1099 dff_2/w_87_78# Gnd 1.62fF
C1100 dff_2/w_44_38# Gnd 3.38fF
C1101 dff_2/w_4_38# Gnd 3.28fF
C1102 dff_1/a_57_n12# Gnd 0.01fF
C1103 dff_1/a_100_28# Gnd 0.01fF
C1104 dff_1/a_100_88# Gnd 0.30fF
C1105 dff_1/a_50_n12# Gnd 0.60fF
C1106 dff_1/a_17_8# Gnd 0.53fF
C1107 b0_in Gnd 0.19fF
C1108 dff_1/w_132_78# Gnd 1.51fF
C1109 dff_1/w_87_78# Gnd 1.62fF
C1110 dff_1/w_44_38# Gnd 3.38fF
C1111 dff_1/w_4_38# Gnd 3.28fF
C1112 dff_0/a_57_n12# Gnd 0.01fF
C1113 dff_0/a_100_28# Gnd 0.01fF
C1114 dff_0/a_100_88# Gnd 0.30fF
C1115 vdd Gnd 25.95fF
C1116 dff_0/a_50_n12# Gnd 0.60fF
C1117 dff_0/a_17_8# Gnd 0.53fF
C1118 a0_in Gnd 0.19fF
C1119 dff_0/w_132_78# Gnd 1.51fF
C1120 dff_0/w_87_78# Gnd 1.62fF
C1121 dff_0/w_44_38# Gnd 3.38fF
C1122 dff_0/w_4_38# Gnd 3.28fF


.tran 10ps 30ns

.measure tran delay_dff_in
+TRIG v(clk) VAL=0.9 RISE=1
+TARG v(a2) VAL=0.9 RISE=1

.measure tran delay_cla
+TRIG v(a2) VAL=0.9 RISE=1
+TARG v(s3) VAL=0.9 RISE=1

.measure tran delay_dff_out
+TRIG v(clk) VAL=0.9 RISE=2
+TARG v(s3_out) VAL=0.9 RISE=1

.measure tran total_delay param = (delay_dff_in + delay_cla + delay_dff_out)
*.measure tran tphl_s0
*+TRIG v(s1) VAL=0.9 FALL=1
*+TARG v(b1) VAL=0.9 FALL=1

*.measure tran tp_s param = (abs(tplh_s0) + abs(tphl_s0))/2

.control
run
set color0 = white
set xbrushwidth = 3
set curplottitle = "Aditya_Peketi_2024122001_CLA_Adder_PostLayout"

plot v(a0_in) 2+v(a1_in) 4+v(a2_in) 6+v(a3_in) 8+v(b0_in) 10+v(b1_in) 12+v(b2_in) 14+v(b3_in) 16+v(clk)
*plot v(s0) 2+v(s1) 4+v(s2) 6+v(s3) 8+v(c4) 10+v(clk)

*plot v(a0) 2+v(a1) 4+v(a2) 6+v(a3) 8+v(b0) 10+v(b1) 12+v(b2) 14+v(b3) 16+v(clk)
plot v(s0_out) 2+v(s1_out) 4+v(s2_out) 6+v(s3_out) 8+v(c4_out) 10+v(clk)

* plot v(a0_in) 2+v(a1_in) 4+v(a2_in) 6+v(a3_in) 8+v(b0_in) 10+v(b1_in) 12+v(b2_in) 14+v(b3_in) 16+v(clk)
* plot v(s0) 2+v(s1) 4+v(s2) 6+v(s3) 8+v(c4) 10+v(clk)

* plot v(g0) 2+v(g1) 4+v(g2) 6+v(g3) 8+v(clk)
* plot v(p0) 2+v(p1) 4+v(p2) 6+v(p3) 8+v(clk)

* plot v(a0) 2+v(a1) 4+v(a2) 6+v(a3) 8+v(b0) 10+v(b1) 12+v(b2) 14+v(b3) 16+v(clk)
* plot v(s0_out) 2+v(s1_out) 4+v(s2_out) 6+v(s3_out) 8+v(c4_out) 10+v(clk)

.endc
