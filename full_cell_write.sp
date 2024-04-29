
.include "/home/taf27/hspice/libs/CMOS_180nm_L49.lib"

.include "column_pull_up.sp"
.include "write_driver.sp"
.include "sram_cell.sp"

.param t_end = 500n
*DC power supply
Vdd vdd gnd dc 1.8 
*Precharge, actiavtes at 10n
Vpc pc gnd pwl 0 1.8 10n 1.8 11n 0 50n 0 51n 1.8 (1n+t_end) 1.8
*Write enable, activates at 100n
Vwrite write gnd pwl 0 0 (100n) 0 (101n) 1.8 500n 1.8 (501n) 0
*Data, updates at 100n
Vdata data gnd pwl 0 0 (100n) 0 (101n) 1.8 500n 1.8 (501n) 0
*Data bar, updates at 100n
Vdatab datab gnd pwl 0 1.8 (100n) 1.8 (101n) 0 500n 0 (501n) 1.8
*Column select, activates at 110n
Vcol col gnd pwl 0 0 (110n) 0 (111n) 1.8 500n 1.8 (501n) 0
*Wordline, activates at 120n
Vword word gnd pwl 0 0 (120n) 0 (121n) 1.8 500n 1.8 (501n) 0


.param W1=4
.param W5=2
*SRAM Cell
X1 q qb bit bitb word vdd gnd SRAM_Cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
*Bitline capacitances
Cb bit gnd 2f
Cbb bitb gnd 2f

*Top of column circuitry
X2 bit bitb pc vdd gnd column_pull_up

*Bottom of column circuitry
X3 bit bitb col write data datab vdd gnd write_driver

.options post probe

.ic q=0 qb=1.8
.tran 0.5p (50n+t_end) uic 
.probe tran V(bit) V(bitb) V(word) V(q) V(qb) V(write) V(col) V(data) V(datab) V(pc) V(X3.bit_col_sel) V(X3.bitb_col_sel)
.end
