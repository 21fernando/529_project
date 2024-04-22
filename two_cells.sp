.include "/home/taf27/hspice/libs/CMOS_180nm_L49.lib"
.include "sram_cell.sp"

Vdd vdd gnd dc 1.8
Vword1 word1 gnd pulse 0 1.8 20n 1n 1n 100n 200n
Vword2 word2 gnd pulse 0 1.8 40n 1n 1n 100n 200n 

X1 q1 qb1 bit1 bitb1 word1 vdd gnd SRAM_cell
X2 q2 qb2 bit2 bitb2 word2 vdd gnd SRAM_cell

Cb1 bit1 gnd 2p
Cb1b bitb1 gnd 2p
Cb2 bit2 gnd 2p
Cb2b bitb2 gnd 2p

.ic q1=0 qb1=1.8 q2=1.8 qb2=0 bit1=1.8 bitb1 = 1.8 bit2=1.8 bitb2=1.8
.options post probe 

.tran 0.5p 600n uic

.probe tran V(bit1) V(bit2) V(bitb1) V(bitb2) V(word1) V(word2) V(q1) V(qb1) V(q2) V(qb2)

.end
