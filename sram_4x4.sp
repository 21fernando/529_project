* 4x4 SRAM Array Netlist
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
Rw1_0 word1_0 word2_1 R_wl
Rw2_0 word2_0 word3_1 R_wl
Rw3_0 word3_0 word4_1 R_wl
Vwl_1 word_1 0 0
Rw0_1 word_1 word0_1 R_wl
Rw1_1 word1_1 word2_2 R_wl
Rw2_1 word2_1 word3_2 R_wl
Rw3_1 word3_1 word4_2 R_wl
Vwl_2 word_2 0 0
Rw0_2 word_2 word0_2 R_wl
Rw1_2 word1_2 word2_3 R_wl
Rw2_2 word2_2 word3_3 R_wl
Rw3_2 word3_2 word4_3 R_wl
Vwl_3 word_3 gnd pulse 0 1.8 20n 1n 1n 100n 200n 
Rw0_3 word_3 word0_3 R_wl
Rw1_3 word1_3 word2_4 R_wl
Rw2_3 word2_3 word3_4 R_wl
Rw3_3 word3_3 word4_4 R_wl
*Column access, activates at 110n
Vcol_0 col_0 gnd dc 0
*Column access, activates at 110n
Vcol_1 col_1 gnd dc 0
*Column access, activates at 110n
Vcol_2 col_2 gnd dc 0
*Column access, activates at 110n
Vcol_3 col_3 gnd pwl 0 1.8 (30n) 1.8 (31n) 0 50n 0 (51n) 1.8
*Precharge, activates at 10n
Vpc_0 pc_0 gnd dc 1.8
*Precharge, activates at 10n
Vpc_1 pc_1 gnd dc 1.8
*Precharge, activates at 10n
Vpc_2 pc_2 gnd dc 1.8
*Precharge, activates at 10n
Vpc_3 pc_3 gnd pwl 0 1.8 10n 1.8 11n 0 50n 0 51n 1.8
*Sense amp bias supply
Vsa sa_vcs gnd dc 0.7
.param R_bl=0.5
.param C_bl=1.3f
Rb_0_0 bit_0_0 bit_1_1 
Rbb_0_0 bitb_0_0 bitb_1_1 
Cb_0_0 bit_0_0 gnd C_bl
Cbb_0_0 bitb_0_0 gnd C_bl
Rb_0_1 bit_0_1 bit_1_2 
Rbb_0_1 bitb_0_1 bitb_1_2 
Cb_0_1 bit_0_1 gnd C_bl
Cbb_0_1 bitb_0_1 gnd C_bl
Rb_0_2 bit_0_2 bit_1_3 
Rbb_0_2 bitb_0_2 bitb_1_3 
Cb_0_2 bit_0_2 gnd C_bl
Cbb_0_2 bitb_0_2 gnd C_bl
Rb_0_3 bit_0_3 bit_1_4 
Rbb_0_3 bitb_0_3 bitb_1_4 
Cb_0_3 bit_0_3 gnd C_bl
Cbb_0_3 bitb_0_3 gnd C_bl
Rb_1_0 bit_1_0 bit_2_1 
Rbb_1_0 bitb_1_0 bitb_2_1 
Cb_1_0 bit_1_0 gnd C_bl
Cbb_1_0 bitb_1_0 gnd C_bl
Rb_1_1 bit_1_1 bit_2_2 
Rbb_1_1 bitb_1_1 bitb_2_2 
Cb_1_1 bit_1_1 gnd C_bl
Cbb_1_1 bitb_1_1 gnd C_bl
Rb_1_2 bit_1_2 bit_2_3 
Rbb_1_2 bitb_1_2 bitb_2_3 
Cb_1_2 bit_1_2 gnd C_bl
Cbb_1_2 bitb_1_2 gnd C_bl
Rb_1_3 bit_1_3 bit_2_4 
Rbb_1_3 bitb_1_3 bitb_2_4 
Cb_1_3 bit_1_3 gnd C_bl
Cbb_1_3 bitb_1_3 gnd C_bl
Rb_2_0 bit_2_0 bit_3_1 
Rbb_2_0 bitb_2_0 bitb_3_1 
Cb_2_0 bit_2_0 gnd C_bl
Cbb_2_0 bitb_2_0 gnd C_bl
Rb_2_1 bit_2_1 bit_3_2 
Rbb_2_1 bitb_2_1 bitb_3_2 
Cb_2_1 bit_2_1 gnd C_bl
Cbb_2_1 bitb_2_1 gnd C_bl
Rb_2_2 bit_2_2 bit_3_3 
Rbb_2_2 bitb_2_2 bitb_3_3 
Cb_2_2 bit_2_2 gnd C_bl
Cbb_2_2 bitb_2_2 gnd C_bl
Rb_2_3 bit_2_3 bit_3_4 
Rbb_2_3 bitb_2_3 bitb_3_4 
Cb_2_3 bit_2_3 gnd C_bl
Cbb_2_3 bitb_2_3 gnd C_bl
Rb_3_0 bit_3_0 bit_4_1 
Rbb_3_0 bitb_3_0 bitb_4_1 
Cb_3_0 bit_3_0 gnd C_bl
Cbb_3_0 bitb_3_0 gnd C_bl
Rb_3_1 bit_3_1 bit_4_2 
Rbb_3_1 bitb_3_1 bitb_4_2 
Cb_3_1 bit_3_1 gnd C_bl
Cbb_3_1 bitb_3_1 gnd C_bl
Rb_3_2 bit_3_2 bit_4_3 
Rbb_3_2 bitb_3_2 bitb_4_3 
Cb_3_2 bit_3_2 gnd C_bl
Cbb_3_2 bitb_3_2 gnd C_bl
Rb_3_3 bit_3_3 bit_4_4 
Rbb_3_3 bitb_3_3 bitb_4_4 
Cb_3_3 bit_3_3 gnd C_bl
Cbb_3_3 bitb_3_3 gnd C_bl
.ic q_0_0=0
.ic qb_0_0=1.8
.ic q_1_0=0
.ic qb_1_0=1.8
.ic q_2_0=0
.ic qb_2_0=1.8
.ic q_3_0=0
.ic qb_3_0=1.8
.ic q_0_1=0
.ic qb_0_1=1.8
.ic q_1_1=0
.ic qb_1_1=1.8
.ic q_2_1=0
.ic qb_2_1=1.8
.ic q_3_1=0
.ic qb_3_1=1.8
.ic q_0_2=0
.ic qb_0_2=1.8
.ic q_1_2=0
.ic qb_1_2=1.8
.ic q_2_2=0
.ic qb_2_2=1.8
.ic q_3_2=0
.ic qb_3_2=1.8
.ic q_0_3=0
.ic qb_0_3=1.8
.ic q_1_3=0
.ic qb_1_3=1.8
.ic q_2_3=0
.ic qb_2_3=1.8
.ic q_3_3=0
.ic qb_3_3=1.8
X0_0 q_0_0 qb_0_0 bit_0_0 bitb_0_0 word0_0 vdd gnd SRAM_cell
X1_0 q_1_0 qb_1_0 bit_1_0 bitb_1_0 word1_0 vdd gnd SRAM_cell
X2_0 q_2_0 qb_2_0 bit_2_0 bitb_2_0 word2_0 vdd gnd SRAM_cell
X3_0 q_3_0 qb_3_0 bit_3_0 bitb_3_0 word3_0 vdd gnd SRAM_cell
X0_1 q_0_1 qb_0_1 bit_0_1 bitb_0_1 word0_1 vdd gnd SRAM_cell
X1_1 q_1_1 qb_1_1 bit_1_1 bitb_1_1 word1_1 vdd gnd SRAM_cell
X2_1 q_2_1 qb_2_1 bit_2_1 bitb_2_1 word2_1 vdd gnd SRAM_cell
X3_1 q_3_1 qb_3_1 bit_3_1 bitb_3_1 word3_1 vdd gnd SRAM_cell
X0_2 q_0_2 qb_0_2 bit_0_2 bitb_0_2 word0_2 vdd gnd SRAM_cell
X1_2 q_1_2 qb_1_2 bit_1_2 bitb_1_2 word1_2 vdd gnd SRAM_cell
X2_2 q_2_2 qb_2_2 bit_2_2 bitb_2_2 word2_2 vdd gnd SRAM_cell
X3_2 q_3_2 qb_3_2 bit_3_2 bitb_3_2 word3_2 vdd gnd SRAM_cell
X0_3 q_0_3 qb_0_3 bit_0_3 bitb_0_3 word0_3 vdd gnd SRAM_cell
X1_3 q_1_3 qb_1_3 bit_1_3 bitb_1_3 word1_3 vdd gnd SRAM_cell
X2_3 q_2_3 qb_2_3 bit_2_3 bitb_2_3 word2_3 vdd gnd SRAM_cell
X3_3 q_3_3 qb_3_3 bit_3_3 bitb_3_3 word3_3 vdd gnd SRAM_cell
Xb0 bit_0_256 bitb_0_256 pc_0 vdd gnd column_pull_up 
Xt0 bit_0_0 bitb_0_0 col_0 sa_vcs sa_out_0 vdd gnd read_driver 
Xb1 bit_1_256 bitb_1_256 pc_1 vdd gnd column_pull_up 
Xt1 bit_1_0 bitb_1_0 col_1 sa_vcs sa_out_1 vdd gnd read_driver 
Xb2 bit_2_256 bitb_2_256 pc_2 vdd gnd column_pull_up 
Xt2 bit_2_0 bitb_2_0 col_2 sa_vcs sa_out_2 vdd gnd read_driver 
Xb3 bit_3_256 bitb_3_256 pc_3 vdd gnd column_pull_up 
Xt3 bit_3_0 bitb_3_0 col_3 sa_vcs sa_out_3 vdd gnd read_driver 
.options post probe
.tran 1n 200n uic
.probe V(bit240) V(bitb240) V(word7) V(q7_240) V(qb7_240).end
