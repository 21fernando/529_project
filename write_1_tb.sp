.include "/home/taf27/hspice/libs/CMOS_180nm_L49.lib"
.include "sram_cell.sp"

Vdd vdd gnd dc 1.8 
Vbit bit gnd dc 1.8
Vbitbar bitb gnd dc 0
Vword word gnd pulse 0 1.8 20n 1n 1n 100n 200n

.param W1=11
.param W5=18
X1 q qb bit bitb word vdd gnd SRAM_Cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Cb bit gnd 2p
Cbb bitb gnd 2p

.ic q=0 qb=1.8
.options post probe

.tran 0.5p 120n uic sweep data=mydata 
.probe tran V(bit) V(bitb) V(word) V(q) V(qb)
.measure tran max_write MAX V(q) FROM 20n to 120n
.data mydata W1 W5
4 2
5 2
6 2
4 3
5 3
6 3
4 4
5 4
6 4
.enddata

.end
