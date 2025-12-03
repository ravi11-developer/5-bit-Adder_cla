* SPICE3 file created from newc3_label_backup.ext - technology: scmos

.include TSMC_180nm.txt
.option scale=0.09u
.global gnd Vdd

vdd vdd gnd 1.8

* Input Signals
Va1 g2 gnd 0V
Va2 g1 gnd PULSE(0 1.8 0ns 0ns 0ns 10ns 20ns)
Va3 g0 gnd PULSE(0 1.8 2ns 0ns 0ns 15ns 30ns)
Va4 p2 gnd PULSE(0 1.8 0ns 0ns 0ns 7ns 14ns)
Va5 p1 gnd PULSE(0 1.8 2ns 0ns 0ns 20ns 40ns)


M1000 a_17_18# p2 a_17_65# w_4_55# CMOSP w=40 l=2
+  ad=240 pd=92 as=480 ps=184
M1001 c3 a_17_18# gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=320 ps=152
M1002 a_25_18# g0 a_41_18# Gnd CMOSN w=20 l=2
+  ad=220 pd=102 as=120 ps=52
M1003 a_33_65# g0 a_17_65# w_4_55# CMOSP w=40 l=2
+  ad=440 pd=182 as=0 ps=0
M1004 gnd g1 a_25_18# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1005 a_33_65# g1 a_17_18# w_4_55# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1006 c3 a_17_18# vdd w_90_55# CMOSP w=40 l=2
+  ad=200 pd=90 as=400 ps=180
M1007 a_17_18# g2 gnd Gnd CMOSN w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1008 a_17_65# g2 vdd w_4_55# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1009 a_41_18# p1 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1010 a_17_65# p1 a_33_65# w_4_55# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1011 a_25_18# p2 a_17_18# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
C0 vdd w_90_55# 0.12fF
C1 a_17_65# w_4_55# 0.10fF
C2 w_4_55# g1 0.15fF
C3 vdd g2 0.13fF
C4 a_17_18# a_33_65# 0.65fF
C5 a_25_18# a_41_18# 0.26fF
C6 p2 a_17_18# 0.08fF
C7 w_4_55# g0 0.15fF
C8 w_90_55# c3 0.08fF
C9 a_17_65# p1 0.08fF
C10 g1 p1 0.25fF
C11 p1 a_25_18# 0.08fF
C12 w_4_55# g2 0.15fF
C13 a_17_65# a_17_18# 0.47fF
C14 g1 a_17_18# 0.08fF
C15 p1 g0 0.25fF
C16 a_17_18# a_25_18# 0.57fF
C17 vdd c3 0.44fF
C18 a_17_65# a_33_65# 0.93fF
C19 gnd c3 0.25fF
C20 g0 a_17_18# 0.08fF
C21 a_17_65# p2 0.08fF
C22 g1 p2 0.25fF
C23 vdd w_4_55# 0.21fF
C24 g0 a_33_65# 0.08fF
C25 w_90_55# a_17_18# 0.09fF
C26 gnd a_41_18# 0.23fF
C27 vdd p1 0.13fF
C28 a_17_65# g1 0.08fF
C29 g1 a_25_18# 0.08fF
C30 g2 p2 0.25fF
C31 a_17_18# gnd 0.27fF
C32 g0 a_25_18# 0.08fF
C33 w_4_55# p1 0.15fF
C34 vdd p2 0.13fF
C35 a_17_18# c3 0.05fF
C36 w_4_55# a_17_18# 0.04fF
C37 vdd a_17_65# 0.77fF
C38 w_4_55# a_33_65# 0.12fF
C39 vdd g1 0.13fF
C40 w_4_55# p2 0.15fF
C41 gnd a_25_18# 0.31fF
C42 p1 a_17_18# 0.08fF
C43 vdd g0 0.13fF
C44 p1 a_33_65# 0.08fF
C45 a_41_18# Gnd 0.01fF
C46 a_25_18# Gnd 0.12fF
C47 gnd Gnd 0.50fF
C48 c3 Gnd 0.03fF
C49 a_17_65# Gnd 0.00fF
C50 vdd Gnd 0.17fF
C51 a_17_18# Gnd 0.40fF
C52 g0 Gnd 0.08fF
C53 p1 Gnd 0.08fF
C54 g1 Gnd 0.08fF
C55 p2 Gnd 0.08fF
C56 g2 Gnd 0.08fF
C57 w_90_55# Gnd 1.51fF
C58 w_4_55# Gnd 4.37fF

.tran 100ps 60ns

.control
run
set color0 = white
set xbrushwidth = 3
set curplottitle = "Ravi - Comp_3 "
plot v(g2) 2+v(p2) 4+V(g1) 8+v(p1) 10+v(g0) 12+v(c3)
.endc
