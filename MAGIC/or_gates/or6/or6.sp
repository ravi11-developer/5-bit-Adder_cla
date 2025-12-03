* SPICE3 file created from or6.ext - technology: scmos
.include "TSMC_180nm.txt"
.option scale=90n
.param SUPPLY=1.8
* .option scale=10n
.global gnd vdd

Vdd vdd gnd {SUPPLY}


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
M1009 nout a gnd Gnd CMOSN w=10 l=2
+  ad=50p pd=30u as=50p ps=20u
M1010 nout a a_49_71# vdd CMOSP w=100 l=2
+  ad=0.5n pd=0.21m as=0.5n ps=0.11m
M1011 nout c gnd gnd CMOSN w=10 l=2
+  ad=50p pd=20u as=50p ps=20u
M1012 out nout gnd gnd CMOSN w=10 l=2
+  ad=50p pd=30u as=50p ps=30u
M1013 out nout vdd vdd CMOSP w=20 l=2
+  ad=100p pd=50u as=100p ps=50u
C0 nout c 0.01047f
C1 a_n5_71# vdd 0
C2 f e 0
C3 nout d 0.01047f
C4 nout f 0.0133f
C5 gnd out 0.1031f
C6 gnd a 0.00206f
C7 a c 0.00728f
C8 nout e 0.01047f
C9 b gnd 0.00206f
C10 b c 0.50358f
C11 d a 0.00728f
C12 b d 0.00728f
C13 f a 0
C14 c vdd 0.02007f
C15 b f 0
C16 d vdd 0.02007f
C17 f vdd 0.02949f
C18 nout out 0.06031f
C19 a e 0.00728f
C20 b e 0.00728f
C21 nout a 0.88705f
C22 nout b 0.01047f
C23 e vdd 0.02021f
C24 gnd c 0.00206f
C25 nout vdd 0.07122f
C26 d gnd 0.00206f
C27 d c 0.33863f
C28 f gnd 0.00109f
C29 f c 0
C30 a_25_71# vdd 0
C31 d f 0
C32 a_13_71# vdd 0
C33 a_49_71# vdd 0
C34 vdd out 0.21551f
C35 b a 0.66853f
C36 gnd e 0.00206f
C37 a vdd 0.02007f
C38 c e 0.00728f
C39 a_37_71# vdd 0
C40 nout gnd 1.22354f
C41 d e 0.17367f
C42 b vdd 0.02007f
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

va a gnd pulse 0 1.8 0 0.1n 0.1n 10n 20n
vb b gnd pulse 0 1.8 0 0.1n 0.1n 20n 40n
vc c gnd pulse 0 1.8 0 0.1n 0.1n 40n 80n
vd d gnd pulse 0 1.8 0 0.1n 0.1n 80n 160n
ve f gnd pulse 0 1.8 0 0.1n 0.1n 160n 320n
vf e gnd 0

.tran  0.01n 400ns
.control
run
set hcopypscolor = 1
set color0=white
set color1=black
plot v(a) v(b)+2 v(c)+4 v(d)+6 v(f)+8  v(out)+10
.endc
.end