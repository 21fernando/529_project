
.include "/home/taf27/hspice/libs/CMOS_180nm_L49.lib"

Vdd vdd gnd dc 1.8 
Vwrite write gnd pulse 0 1.8 40n 1n 1n 100n 200n
Vdatab datab gnd pulse 0 1.8 20n 1n 1n 100n 200n

M1 and_inv_in datab n1 gnd NMOS W=2u L=180n
M2 n1 write gnd gnd NMOS W=2u L=180n
M3 and_inv_in datab vdd vdd PMOS W=2u L=180n
M4 and_inv_in write vdd vdd PMOS W=2u L=180n
M5 bit_col_sel and_inv_in gnd gnd NMOS W=180n L=180n
M6 bit_col_sel and_inv_in vdd vdd PMOS W=360n L=180n
 
.options post probe

.tran 0.5p 500n 
.probe V(write) V(datab) V(and_inv_in) V(bit_col_sel)

.end
