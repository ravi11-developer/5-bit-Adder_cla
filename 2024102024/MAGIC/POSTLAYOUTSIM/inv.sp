* SPICE3 file created from inv.ext - technology: scmos
.include TSMC_180nm.txt
* Include TSMC 180nm technology file (model definitions for NMOS/PMOS)
.param SUPPLY=1.8
* Define supply voltage parameter = 1.8V
.option scale=90n
* Scale factor: all layout dimensions multiplied by 90nm
.global gnd vdd
* Global nodes: ground and power supply

Vdd vdd gnd 'SUPPLY'
* Voltage source: VDD = 1.8V
.param SUPPLY=1.8 
.option scale=90n
.global gnd vdd

* Vdd vdd gnd 'SUPPLY'

M1000 out in gnd Gnd CMOSN w=10 l=2
+  ad=50p pd=30u as=50p ps=30u
M1001 out in vdd w_n9_n5# CMOSP w=20 l=2
+  ad=100p pd=50u as=100p ps=50u
C0 vdd out 0.233693f
C1 in gnd 0.035089f
C2 w_n9_n5# vdd 0.016753f
C3 w_n9_n5# out 0.009324f
C4 in vdd 0.001532f
C5 out gnd 0.130598f
C6 in out 0.060313f
C7 w_n9_n5# in 0.020942f
C8 gnd 0 0.069063f 
C9 out 0 0.11532f 
C10 vdd 0 0.122414f 
C11 in 0 0.224289f 
C12 w_n9_n5# 0 0.88789f 

vin in gnd pulse 0 1.8 0 0.1n 0.1n 10n 20n

* Propagation delay measurements: in -> out
.measure tran tpd_lh TRIG v(in) VAL=0.9 RISE=1 TARG v(out) VAL=0.9 FALL=1
.measure tran tpd_hl TRIG v(in) VAL=0.9 FALL=1 TARG v(out) VAL=0.9 RISE=1
.measure tran avg_tpd param = '(tpd_lh + tpd_hl)/2'

.tran 0.01n 60n

.control
run 
set hcopypscolor = 1
set color0=white
set xbrushwidth = 3
set curplottitle = "raviSahu2024102024CLAADDER"
plot v(in) v(out)
hardcopy inv_outputs.ps v(in) 2+v(out)
.endc