
.include "/home/taf27/hspice/libs/CMOS_180nm_L49.lib"

.include "sram_cell.sp"

.param t_end = 500n
Vdd vdd gnd dc 1.8 
Vword word gnd pwl 0 0 (120n) 0 (121n) 1.8 500n 1.8 (501n) 0
Vcol col gnd pwl 0 1.8 (110n) 1.8 (111n) 0 500n 0 (501n) 1.8
Vpc pc gnd pwl 0 1.8 10n 1.8 11n 0 500n 0 501n 1.8
Vsa sa_vcs gnd dc 0.7
.param W1=4
.param W5=2
X1 q qb bit bitb word vdd gnd SRAM_Cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Cb bit gnd 2f
Cbb bitb gnd 2f

*Column precharge transistors
M7 vdd vdd bit gnd NMOS W=1u L=500n
M8 vdd vdd bit gnd NMOS W=1u L=500n

*Column balance transistor
Mbal bit pc bitb vdd PMOS W=1u L=500n
*ask about this one, wont current go through it during a write if it is left on

*Read driver transistor
M13 sense_amp_in_a col bit vdd PMOS W=1u L=500n
M14 sense_amp_in_b col bitb vdd PMOS W=1u L=500n

*Sense amp
Ma1 na1 sense_amp_in_a sa_cs_d gnd NMOS W=0.8u L=540n
Ma2 sa_out sense_amp_in_b sa_cs_d gnd NMOS W=0.8u L=540n
Ma3 na1 na1 vdd vdd PMOS W=2u L=540n
Ma4 sa_out na1 vdd vdd PMOS W=2u L=540n
Ma5 sa_cs_d sa_vcs gnd gnd NMOS W=5u L=540n
Ca sa_out gnd 50f
.options post probe

.ic q=1.8 qb=0
.tran 0.5p (50n+t_end) uic 
.probe tran V(bit) V(bitb) V(word) V(q) V(qb) V(write) V(col) V(data) V(datab) V(pc) V(bit_col_sel) V(bitb_col_sel) V(and_inv_in) V(and_inv_inb) V(sa_out) V(sense_amp_in_a) V(sense_amp_in_b) V(sa_vcs) 
.end
