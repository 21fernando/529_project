* 2x2 SRAM Array Netlist
.include "/home/taf27/hspice/libs/CMOS_180nm_L49.lib"
.include "sram_cell.sp"
.include "write_driver.sp"
.include "read_driver.sp"
.include "column_pull_up.sp"


*+++++++++++++++++++++++++++++++++
*++++++++++++SOURCES++++++++++++++
*+++++++++++++++++++++++++++++++++
Vdd vdd 0 1.8
Vss gnd 0 0
.param R_wl=0.5
Vwl_0 word_0 0 0
Rw0_0 word_0 word0_0 R_wl
Rw1_0 word1_0 word0_0 R_wl
Vwl_1 word_1 gnd pwl 0 0 (41n) 0 (42n) 1.8 50n 1.8 (51n) 0 
Rw0_1 word_1 word0_1 R_wl
Rw1_1 word1_1 word0_1 R_wl
*Column access, activates at 110n
Vcol_0 col_0 gnd dc 0
*Column access, activates at 110n
Vcol_1 col_1 gnd pwl 0 0 (32n) 0 (33n) 1.8 60n 1.8 61n 0
*Precharge, activates at 10n
Vpc_0 pc_0 gnd dc 1.8
*Precharge, activates at 10n
Vpc_1 pc_1 gnd pwl 0 1.8 5n 1.8 6n 0 10n 0 15n 1.8
*Sense amp bias supply
Vsa sa_vcs gnd dc 0.7
.param R_bl=0.5
.param C_bl=185.0f
Rb_0_0 bit_0_0 bit_0_1 R_bl
Rbb_0_0 bitb_0_0 bitb_0_1 R_bl
Cb_0_0 bit_0_0 gnd C_bl
Cbb_0_0 bitb_0_0 gnd C_bl
Rb_0_1 bit_0_1 bit_0_2 R_bl
Rbb_0_1 bitb_0_1 bitb_0_2 R_bl
Cb_0_1 bit_0_1 gnd C_bl
Cbb_0_1 bitb_0_1 gnd C_bl
Rb_1_0 bit_1_0 bit_1_1 R_bl
Rbb_1_0 bitb_1_0 bitb_1_1 R_bl
Cb_1_0 bit_1_0 gnd C_bl
Cbb_1_0 bitb_1_0 gnd C_bl
Rb_1_1 bit_1_1 bit_1_2 R_bl
Rbb_1_1 bitb_1_1 bitb_1_2 R_bl
Cb_1_1 bit_1_1 gnd C_bl
Cbb_1_1 bitb_1_1 gnd C_bl
Vwrite_0 write_0 gnd dc 0
Vwrite_1 write_1 gnd pwl 0 0 20n 0 21n 1.8 60n 1.8 61n 0
Vdata_0 data_0 gnd dc 0 
Vdatab_0 datab_0 gnd dc 1.8
Vdata_1 data_1 gnd pwl 0 1.8 20n 1.8 21n 0 60n 0 61n 1.8
Vdatab_1 datab_1 gnd pwl 0 0 20n 0 21n 1.8 60n 1.8 61n 0
.ic q_0_0=0
.ic qb_0_0=1.8
.ic q_1_0=0
.ic qb_1_0=1.8
.ic q_0_1=0
.ic qb_0_1=1.8
.ic q_1_1=1.8
.ic qb_1_1=0
X0_0 q_0_0 qb_0_0 bit_0_0 bitb_0_0 word0_0 vdd gnd SRAM_cell
X1_0 q_1_0 qb_1_0 bit_1_0 bitb_1_0 word1_0 vdd gnd SRAM_cell
X0_1 q_0_1 qb_0_1 bit_0_1 bitb_0_1 word0_1 vdd gnd SRAM_cell
X1_1 q_1_1 qb_1_1 bit_1_1 bitb_1_1 word1_1 vdd gnd SRAM_cell
Xt0 bit_0_2 bitb_0_2 pc_0 vdd gnd column_pull_up 
Xbr0 bit_0_0 bitb_0_0 col_0 sa_vcs sa_out_0 vdd gnd read_driver 
Xbw0 bit_0_0 bitb_0_0 col_0 write_0 data_0 datab_0 vdd gnd write_driver
Xt1 bit_1_2 bitb_1_2 pc_1 vdd gnd column_pull_up 
Xbr1 bit_1_0 bitb_1_0 col_1 sa_vcs sa_out_1 vdd gnd read_driver 
Xbw1 bit_1_0 bitb_1_0 col_1 write_1 data_1 datab_1 vdd gnd write_driver
.options post probe
.tran 1n 70n uic
.probe V(bit_1_0) V(bitb_1_0) V(word_1) V(q_1_1) V(qb_1_1) V(sa_out_1) V(pc_1) V(col_1) V(write_1) V(data_1) V(datab_1)
.end
