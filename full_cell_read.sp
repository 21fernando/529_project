
.include "/home/taf27/hspice/libs/CMOS_180nm_L49.lib"

.include "sram_cell.sp"
.include "column_pull_up.sp"
.include "read_driver.sp"

.param t_end = 500n

*DC power supply
Vdd vdd gnd dc 1.8 
*Wordline, activates at 120n
Vword word gnd pwl 0 0 (20n) 0 (21n) 1.8 50n 1.8 (51n) 0
*Column access, activates at 110n
Vcol col gnd pwl 0 1.8 (30n) 1.8 (31n) 0 50n 0 (51n) 1.8
*Precharge, activates at 10n
Vpc pc gnd pwl 0 1.8 10n 1.8 11n 0 50n 0 51n 1.8
*pc pc gnd dc 1.8
*Sense amp bias supply
Vsa sa_vcs gnd dc 0.7

*SRAM cell
.param W1=4
.param W5=2
X1 q qb bit bitb word vdd gnd SRAM_Cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2

*Bitline Capacitances
Cb bit gnd 1.3f
Cbb bitb gnd 1.3f

*Top of column circuitry
X2 bit bitb pc vdd gnd column_pull_up

*Bottom of colum circuitry
X3 bit bitb col sa_vcs sa_out vdd gnd read_driver

.options post probe
.options list node post

*Sets a 1 in the cell 
.ic q=1.8 qb=0

.tran 0.5p 65n uic 
.probe tran V(bit) V(bitb) V(word) V(q) V(qb) V(col) V(pc) V(sa_out) V(X3.X1.sense_amp_in_a) V(X3.X1.sense_amp_in_b) V(sa_vcs) 

.end
