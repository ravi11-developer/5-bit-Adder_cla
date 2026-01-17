* OR6 test - all inputs = 0, output should be 0
.include "TSMC_180nm.txt"
.option scale=90n`
.param SUPPLY=1.8`
.global gnd vdd`
Vdd vdd gnd {SUPPLY}`

M1000 nout e gnd gnd CMOSN w=10 l=2
+  ad=50p pd=20u as=80p ps=26u
M1001 gnd b nout gnd CMOSN w=10 l=2
+  ad=50p pd=20u as=50p ps=20u
M1002 a_13_71# e a_n5_71# vdd CMOSP w=100 l=2
+  ad=0.5n pd=0.11m as=0.8n ps=0.116m
M1003 a_n5_71# f vdd vdd CMOSP w=100 l=3
+  ad=0.8n pd=0.116m as=0.5n ps=0.21m
M1004 a_25_71# d a_13_71# vdd CMOSP w=100 l=2
+  ad=0.5n pd=0.11m as=0.5n ps=0.11m
M1005 gnd f nout gnd CMOSN w=10 l=3
+  ad=80p pd=26u as=50p ps=30u
M1006 a_37_71# c a_25_71# vdd CMOSP w=100 l=2
+  ad=0.5n pd=0.11m as=0.5n ps=0.11m
M1007 gnd d nout gnd CMOSN w=10 l=2
+  ad=50p pd=20u as=50p ps=20u
M1008 a_49_71# b a_37_71# vdd CMOSP w=100 l=2
+  ad=0.5n pd=0.11m as=0.5n ps=0.11m
M1009 nout a gnd gnd CMOSN w=10 l=2
+  ad=50p pd=30u as=50p ps=20u
M1010 nout a a_49_71# vdd CMOSP w=100 l=2
+  ad=0.5n pd=0.21m as=0.5n ps=0.11m
M1011 nout c gnd gnd CMOSN w=10 l=2
+  ad=50p pd=20u as=50p ps=20u
M1012 out nout gnd gnd CMOSN w=10 l=2
+  ad=50p pd=30u as=50p ps=30u
M1013 out nout vdd vdd CMOSP w=20 l=2
+  ad=100p pd=50u as=100p ps=50u
C0 c vdd 0.02007f
C1 e a 0.00728f
C2 d b 0.00728f
C3 d nout 0.01047f
C4 gnd b 0.00206f
C5 vdd a 0.02007f
C6 gnd nout 1.22354f
C7 e f 0
C8 c a 0.00728f
C9 gnd d 0.00206f
C10 vdd a_25_71# 0
C11 vdd out 0.21551f
C12 f vdd 0.02949f
C13 f c 0
C14 e b 0.00728f
C15 e nout 0.01047f
C16 vdd a_37_71# 0
C17 vdd b 0.02007f
C18 f a 0
C19 nout vdd 0.07122f
C20 e d 0.17367f
C21 gnd e 0.00206f
C22 c b 0.50358f
C23 d vdd 0.02007f
C24 nout c 0.01047f
C25 vdd a_49_71# 0
C26 b a 0.66853f
C27 d c 0.33863f
C28 nout a 0.88705f
C29 gnd c 0.00206f
C30 d a 0.00728f
C31 f b 0
C32 gnd a 0.00206f
C33 nout out 0.06031f
C34 f nout 0.0133f
C35 vdd a_13_71# 0
C36 e vdd 0.02021f
C37 f d 0
C38 gnd out 0.1031f
C39 gnd f 0.00109f
C40 vdd a_n5_71# 0
C41 e c 0.00728f
C42 nout b 0.01047f
C43 gnd 0 0.34645f 
C44 out 0 0.11334f 
C45 nout 0 0.80257f 
C46 a 0 0.44532f 
C47 b 0 0.4286f 
C48 c 0 0.41572f 
C49 d 0 0.40285f 
C50 e 0 0.39279f 
C51 f 0 0.45741f 
C52 vdd 0 13.9682f 

* Test 1: All inputs = 0, output should be 0
va a gnd pulse 0 1.8 0 0.1n 0.1n 10n 20n
vb b gnd pulse 0 1.8 0 0.1n 0.1n 20n 40n
vc c gnd pulse 0 1.8 0 0.1n 0.1n 40n 80n
vd d gnd pulse 0 1.8 0 0.1n 0.1n 80n 160n
vf e gnd pulse 0 1.8 0 0.1n 0.1n 320n 640n
ve f gnd dc 0
.tran  0.01n 400ns
.control
run
set hcopypscolor = 1
set color0=white
set xbrushwidth = 3
set curplottitle = "raviSahu2024102024CLAADDER"
plot v(a) v(b)+2 v(c)+4 v(d)+6 v(f)+8  v(out)+10 v(nout)+12
* hardcopy or6_outputs.ps v(a) 2+v(b) 4+v(c) 6+v(d) 8+v(f) 10+v(out)
.endc
.end