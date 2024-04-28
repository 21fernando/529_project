
.include "/home/taf27/hspice/libs/CMOS_180nm_L49.lib"

.include "sram_cell.sp"

.param t_end = 500n
Vdd vdd gnd dc 1.8 
Vword word gnd pwl 0 0 (120n) 0 (121n) 1.8 500n 1.8 (501n) 0
Vwrite write gnd pwl 0 0 (100n) 0 (101n) 1.8 500n 1.8 (501n) 0
Vcol col gnd pwl 0 0 (110n) 0 (111n) 1.8 500n 1.8 (501n) 0
Vdata data gnd pwl 0 0 (100n) 0 (101n) 1.8 500n 1.8 (501n) 0
Vdatab datab gnd pwl 0 1.8 (100n) 1.8 (101n) 0 500n 0 (501n) 1.8
Vpc pc gnd pwl 0 1.8 10n 1.8 11n 0 t_end 0 (1n+t_end) 1.8

.param W1=4
.param W5=2
X1 q qb bit bitb word vdd gnd SRAM_Cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Cb bit gnd 2p
Cbb bitb gnd 2p

*Column precharge transistors
M7 bit pc vdd vdd PMOS W=360n L=180n
M8 bitb pc vdd vdd PMOS W=360n L=180n

*Column balance transistor
Mbal bit pc bitb vdd PMOS W=360n L=180n
*ask about this one, wont current go through it during a write if it is left on

*Write driver transistor
M13 bit bit_col_sel col_sel_drain gnd NMOS W=180n L=180n
M14 bitb bitb_col_sel col_sel_drain gnd NMOS W=180n L=180n

*Column select transistor
M15 col_sel_drain col_sel gnd gnd NMOS W=180n L=180n

*And gate for bitline 
Ma1 and_inv_in datab n1 gnd NMOS W=2u L=180n
Ma2 n1 write gnd gnd NMOS W=2u L=180n
Ma3 and_inv_in datab vdd vdd PMOS W=2u L=180n
Ma4 and_inv_in write vdd vdd PMOS W=2u L=180n
Ma5 bit_col_sel and_inv_in gnd gnd NMOS W=180n L=180n
Ma6 bit_col_sel and_inv_in vdd vdd PMOS W=360n L=180n
 
*And gate for bitline bar
Mab1 and_inv_inb data n2 gnd NMOS W=2u L=180n
Mab2 n2 write gnd gnd NMOS W=2u L=180n
Mab3 and_inv_inb data vdd vdd PMOS W=2u L=180n
Mab4 and_inv_inb write vdd vdd PMOS W=2u L=180n
Mab5 bitb_col_sel and_inv_inb gnd gnd NMOS W=180n L=180n
Mab6 bitb_col_sel and_inv_inb vdd vdd PMOS W=360n L=180n

.options post probe

.ic q=0 qb=1.8
.tran 0.5p (50n+t_end) uic 
.probe tran V(bit) V(bitb) V(word) V(q) V(qb) V(write) V(col) V(data) V(datab) V(pc) V(bit_col_sel) V(bitb_col_sel) V(and_inv_in) V(and_inv_inb)
.end
