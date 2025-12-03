.include TSMC_180nm.txt
.param SUPPLY=1.8
.option scale=90n
.global gnd vdd

Vdd vdd gnd 'SUPPLY'


M1000 a_60_n39# a_27_n8# gnd Gnd CMOSN w=10 l=2
+  ad=50p pd=20u as=50p ps=30u
M1001 a_60_n8# clk a_60_n39# Gnd CMOSN w=10 l=2
+  ad=50p pd=30u as=50p ps=20u
M1002 a_n8_n8# d vdd vdd CMOSP w=20 l=2
+  ad=100p pd=30u as=100p ps=50u
M1003 a_n8_n39# d gnd Gnd CMOSN w=10 l=2
+  ad=50p pd=30u as=50p ps=30u
M1004 a_27_n8# clk vdd vdd CMOSP w=20 l=2
+  ad=100p pd=50u as=100p ps=50u
M1005 a_27_n39# clk gnd Gnd CMOSN w=10 l=2
+  ad=50p pd=20u as=50p ps=30u
M1006 a_27_n8# a_n8_n39# a_27_n39# Gnd CMOSN w=10 l=2
+  ad=50p pd=30u as=50p ps=20u
M1007 a_n8_n39# clk a_n8_n8# vdd CMOSP w=20 l=2
+  ad=100p pd=50u as=100p ps=30u
M1008 q a_60_n8# gnd Gnd CMOSN w=10 l=2
+  ad=50p pd=30u as=50p ps=30u
M1009 a_60_n8# a_27_n8# vdd vdd CMOSP w=20 l=2
+  ad=100p pd=50u as=100p ps=50u
M1010 q a_60_n8# vdd vdd CMOSP w=20 l=2
+  ad=100p pd=50u as=100p ps=50u
C0 q gnd 0.144356f
C1 a_60_n8# gnd 0.001637f
C2 a_27_n8# a_n8_n39# 0.05902f
C3 d gnd 0.056598f
C4 clk a_60_n8# 7.27e-19
C5 vdd a_n8_n39# 0.008778f
C6 d clk 0.174076f
C7 vdd a_27_n8# 0.466524f
C8 clk gnd 0.035923f
C9 clk a_n8_n8# 3.39e-20
C10 vdd q 0.255467f
C11 vdd a_60_n8# 0.476832f
C12 vdd d 0.020635f
C13 gnd a_27_n39# 1.36e-19
C14 a_n8_n39# gnd 0.268957f
C15 a_27_n8# gnd 0.001637f
C16 a_60_n8# q 0.060555f
C17 clk a_n8_n39# 0.100169f
C18 vdd a_n8_n8# 1.36e-19
C19 vdd clk 0.063984f
C20 gnd a_60_n39# 1.36e-19
C21 gnd 0 0.413681f 
C22 q 0 0.106752f 
C23 a_n8_n39# 0 0.374941f 
C24 a_60_n8# 0 0.342185f 
C25 a_27_n8# 0 0.346318f 
C26 clk 0 1.06564f 
C27 d 0 0.208908f 
C28 vdd 0 4.9425f 

vclk clk gnd pulse 0 1.8 0 0.1n 0.1n 10n 20n
vd d gnd pulse 0 1.8 0 0.1n 0.1n 7n 14n
.tran 0.01n 80n
.control
run
plot v(clk) v(d)+2 v(q)+4
set hcopypscolor = 1
set color0=white
set color1=black
.endc