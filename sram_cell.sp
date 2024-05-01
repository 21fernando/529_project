$.include "/home/taf27/hspice/libs/CMOS_180nm_L49.lib"
.SUBCKT SRAM_cell q qb bit bitb word vdd vss W1=11 L1=2 W3=8 L3=2 W5=18 L5=2

M1 q qb vss vss NMOS W=W1*90n L=L1*90n
M2 qb q vss vss NMOS W=W1*90n L=L1*90n
M3 bit word q vss NMOS W=W3*90n L=L3*90n
M4 qb word bitb vss NMOS W=W3*90n L=L3*90n
M5 q qb vdd vdd PMOS W=W5*90n L=L5*90n
M6 qb q vdd vdd PMOS W=W5*90n L=L5*90n

.ENDS SRAM_cell
