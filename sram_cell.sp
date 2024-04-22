.include "/home/taf27/hspice/libs/CMOS_180nm_L49.lib"
.SUBCKT SRAM_cell q qb bit bitb word vdd vss

M1 q qb vss vss NMOS W=1u L=0.2u
M2 qb q vss vss NMOS W=1u L=0.2u
M3 bit word q vss NMOS W=0.7u L=0.2u
M4 qb word bitb gnd NMOS W=0.7u L=0.2u
M5 q qb vdd vdd PMOS W=1.6u L=0.2u
M6 qb q vdd vdd PMOS W=1.6u L=0.2u

.ENDS SRAM_cell
