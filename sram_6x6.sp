* 6x6 SRAM Array Netlist
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
Rw2_0 word2_0 word1_0 R_wl
Rw3_0 word3_0 word2_0 R_wl
Rw4_0 word4_0 word3_0 R_wl
Rw5_0 word5_0 word4_0 R_wl
Vwl_1 word_1 0 0
Rw0_1 word_1 word0_1 R_wl
Rw1_1 word1_1 word0_1 R_wl
Rw2_1 word2_1 word1_1 R_wl
Rw3_1 word3_1 word2_1 R_wl
Rw4_1 word4_1 word3_1 R_wl
Rw5_1 word5_1 word4_1 R_wl
Vwl_2 word_2 0 0
Rw0_2 word_2 word0_2 R_wl
Rw1_2 word1_2 word0_2 R_wl
Rw2_2 word2_2 word1_2 R_wl
Rw3_2 word3_2 word2_2 R_wl
Rw4_2 word4_2 word3_2 R_wl
Rw5_2 word5_2 word4_2 R_wl
Vwl_3 word_3 0 0
Rw0_3 word_3 word0_3 R_wl
Rw1_3 word1_3 word0_3 R_wl
Rw2_3 word2_3 word1_3 R_wl
Rw3_3 word3_3 word2_3 R_wl
Rw4_3 word4_3 word3_3 R_wl
Rw5_3 word5_3 word4_3 R_wl
Vwl_4 word_4 0 0
Rw0_4 word_4 word0_4 R_wl
Rw1_4 word1_4 word0_4 R_wl
Rw2_4 word2_4 word1_4 R_wl
Rw3_4 word3_4 word2_4 R_wl
Rw4_4 word4_4 word3_4 R_wl
Rw5_4 word5_4 word4_4 R_wl
Vwl_5 word_5 gnd pwl 0 0 (16n) 0 (17n) 1.8 50n 1.8 (51n) 0 
Rw0_5 word_5 word0_5 R_wl
Rw1_5 word1_5 word0_5 R_wl
Rw2_5 word2_5 word1_5 R_wl
Rw3_5 word3_5 word2_5 R_wl
Rw4_5 word4_5 word3_5 R_wl
Rw5_5 word5_5 word4_5 R_wl
*Column access, activates at 110n
Vcol_write_0 col_write_0 gnd dc 0
Vcol_read_0 col_read_0 gnd dc 1.8
*Column access, activates at 110n
Vcol_write_1 col_write_1 gnd dc 0
Vcol_read_1 col_read_1 gnd dc 1.8
*Column access, activates at 110n
Vcol_write_2 col_write_2 gnd dc 0
Vcol_read_2 col_read_2 gnd dc 1.8
*Column access, activates at 110n
Vcol_write_3 col_write_3 gnd dc 0
Vcol_read_3 col_read_3 gnd dc 1.8
*Column access, activates at 110n
Vcol_write_4 col_write_4 gnd dc 0
Vcol_read_4 col_read_4 gnd dc 1.8
*Column access, activates at 110n
Vcol_read_5 col_read_5 gnd pwl 0 1.8 (17n) 1.8 (18n) 0 50n 0 (51n) 1.8
Vcol_write_5 col_write_5 gnd pwl 0 0 (17n) 0 (18n) 1.8 50n 1.8 (51n) 0
*Precharge, activates at 10n
Vpc_0 pc_0 gnd dc 1.8
*Precharge, activates at 10n
Vpc_1 pc_1 gnd dc 1.8
*Precharge, activates at 10n
Vpc_2 pc_2 gnd dc 1.8
*Precharge, activates at 10n
Vpc_3 pc_3 gnd dc 1.8
*Precharge, activates at 10n
Vpc_4 pc_4 gnd dc 1.8
*Precharge, activates at 10n
Vpc_5 pc_5 gnd pwl 0 1.8 10n 1.8 11n 0 14n 0 15n 1.8
*Sense amp bias supply
Vsa sa_vcs gnd dc 0.7
.param R_bl=0.5
.param C_bl=61.6666666667f
Rb_0_0 bit_0_0 bit_0_1 R_bl
Rbb_0_0 bitb_0_0 bitb_0_1 R_bl
Cb_0_0 bit_0_0 gnd C_bl
Cbb_0_0 bitb_0_0 gnd C_bl
Rb_0_1 bit_0_1 bit_0_2 R_bl
Rbb_0_1 bitb_0_1 bitb_0_2 R_bl
Cb_0_1 bit_0_1 gnd C_bl
Cbb_0_1 bitb_0_1 gnd C_bl
Rb_0_2 bit_0_2 bit_0_3 R_bl
Rbb_0_2 bitb_0_2 bitb_0_3 R_bl
Cb_0_2 bit_0_2 gnd C_bl
Cbb_0_2 bitb_0_2 gnd C_bl
Rb_0_3 bit_0_3 bit_0_4 R_bl
Rbb_0_3 bitb_0_3 bitb_0_4 R_bl
Cb_0_3 bit_0_3 gnd C_bl
Cbb_0_3 bitb_0_3 gnd C_bl
Rb_0_4 bit_0_4 bit_0_5 R_bl
Rbb_0_4 bitb_0_4 bitb_0_5 R_bl
Cb_0_4 bit_0_4 gnd C_bl
Cbb_0_4 bitb_0_4 gnd C_bl
Rb_0_5 bit_0_5 bit_0_6 R_bl
Rbb_0_5 bitb_0_5 bitb_0_6 R_bl
Cb_0_5 bit_0_5 gnd C_bl
Cbb_0_5 bitb_0_5 gnd C_bl
Rb_1_0 bit_1_0 bit_1_1 R_bl
Rbb_1_0 bitb_1_0 bitb_1_1 R_bl
Cb_1_0 bit_1_0 gnd C_bl
Cbb_1_0 bitb_1_0 gnd C_bl
Rb_1_1 bit_1_1 bit_1_2 R_bl
Rbb_1_1 bitb_1_1 bitb_1_2 R_bl
Cb_1_1 bit_1_1 gnd C_bl
Cbb_1_1 bitb_1_1 gnd C_bl
Rb_1_2 bit_1_2 bit_1_3 R_bl
Rbb_1_2 bitb_1_2 bitb_1_3 R_bl
Cb_1_2 bit_1_2 gnd C_bl
Cbb_1_2 bitb_1_2 gnd C_bl
Rb_1_3 bit_1_3 bit_1_4 R_bl
Rbb_1_3 bitb_1_3 bitb_1_4 R_bl
Cb_1_3 bit_1_3 gnd C_bl
Cbb_1_3 bitb_1_3 gnd C_bl
Rb_1_4 bit_1_4 bit_1_5 R_bl
Rbb_1_4 bitb_1_4 bitb_1_5 R_bl
Cb_1_4 bit_1_4 gnd C_bl
Cbb_1_4 bitb_1_4 gnd C_bl
Rb_1_5 bit_1_5 bit_1_6 R_bl
Rbb_1_5 bitb_1_5 bitb_1_6 R_bl
Cb_1_5 bit_1_5 gnd C_bl
Cbb_1_5 bitb_1_5 gnd C_bl
Rb_2_0 bit_2_0 bit_2_1 R_bl
Rbb_2_0 bitb_2_0 bitb_2_1 R_bl
Cb_2_0 bit_2_0 gnd C_bl
Cbb_2_0 bitb_2_0 gnd C_bl
Rb_2_1 bit_2_1 bit_2_2 R_bl
Rbb_2_1 bitb_2_1 bitb_2_2 R_bl
Cb_2_1 bit_2_1 gnd C_bl
Cbb_2_1 bitb_2_1 gnd C_bl
Rb_2_2 bit_2_2 bit_2_3 R_bl
Rbb_2_2 bitb_2_2 bitb_2_3 R_bl
Cb_2_2 bit_2_2 gnd C_bl
Cbb_2_2 bitb_2_2 gnd C_bl
Rb_2_3 bit_2_3 bit_2_4 R_bl
Rbb_2_3 bitb_2_3 bitb_2_4 R_bl
Cb_2_3 bit_2_3 gnd C_bl
Cbb_2_3 bitb_2_3 gnd C_bl
Rb_2_4 bit_2_4 bit_2_5 R_bl
Rbb_2_4 bitb_2_4 bitb_2_5 R_bl
Cb_2_4 bit_2_4 gnd C_bl
Cbb_2_4 bitb_2_4 gnd C_bl
Rb_2_5 bit_2_5 bit_2_6 R_bl
Rbb_2_5 bitb_2_5 bitb_2_6 R_bl
Cb_2_5 bit_2_5 gnd C_bl
Cbb_2_5 bitb_2_5 gnd C_bl
Rb_3_0 bit_3_0 bit_3_1 R_bl
Rbb_3_0 bitb_3_0 bitb_3_1 R_bl
Cb_3_0 bit_3_0 gnd C_bl
Cbb_3_0 bitb_3_0 gnd C_bl
Rb_3_1 bit_3_1 bit_3_2 R_bl
Rbb_3_1 bitb_3_1 bitb_3_2 R_bl
Cb_3_1 bit_3_1 gnd C_bl
Cbb_3_1 bitb_3_1 gnd C_bl
Rb_3_2 bit_3_2 bit_3_3 R_bl
Rbb_3_2 bitb_3_2 bitb_3_3 R_bl
Cb_3_2 bit_3_2 gnd C_bl
Cbb_3_2 bitb_3_2 gnd C_bl
Rb_3_3 bit_3_3 bit_3_4 R_bl
Rbb_3_3 bitb_3_3 bitb_3_4 R_bl
Cb_3_3 bit_3_3 gnd C_bl
Cbb_3_3 bitb_3_3 gnd C_bl
Rb_3_4 bit_3_4 bit_3_5 R_bl
Rbb_3_4 bitb_3_4 bitb_3_5 R_bl
Cb_3_4 bit_3_4 gnd C_bl
Cbb_3_4 bitb_3_4 gnd C_bl
Rb_3_5 bit_3_5 bit_3_6 R_bl
Rbb_3_5 bitb_3_5 bitb_3_6 R_bl
Cb_3_5 bit_3_5 gnd C_bl
Cbb_3_5 bitb_3_5 gnd C_bl
Rb_4_0 bit_4_0 bit_4_1 R_bl
Rbb_4_0 bitb_4_0 bitb_4_1 R_bl
Cb_4_0 bit_4_0 gnd C_bl
Cbb_4_0 bitb_4_0 gnd C_bl
Rb_4_1 bit_4_1 bit_4_2 R_bl
Rbb_4_1 bitb_4_1 bitb_4_2 R_bl
Cb_4_1 bit_4_1 gnd C_bl
Cbb_4_1 bitb_4_1 gnd C_bl
Rb_4_2 bit_4_2 bit_4_3 R_bl
Rbb_4_2 bitb_4_2 bitb_4_3 R_bl
Cb_4_2 bit_4_2 gnd C_bl
Cbb_4_2 bitb_4_2 gnd C_bl
Rb_4_3 bit_4_3 bit_4_4 R_bl
Rbb_4_3 bitb_4_3 bitb_4_4 R_bl
Cb_4_3 bit_4_3 gnd C_bl
Cbb_4_3 bitb_4_3 gnd C_bl
Rb_4_4 bit_4_4 bit_4_5 R_bl
Rbb_4_4 bitb_4_4 bitb_4_5 R_bl
Cb_4_4 bit_4_4 gnd C_bl
Cbb_4_4 bitb_4_4 gnd C_bl
Rb_4_5 bit_4_5 bit_4_6 R_bl
Rbb_4_5 bitb_4_5 bitb_4_6 R_bl
Cb_4_5 bit_4_5 gnd C_bl
Cbb_4_5 bitb_4_5 gnd C_bl
Rb_5_0 bit_5_0 bit_5_1 R_bl
Rbb_5_0 bitb_5_0 bitb_5_1 R_bl
Cb_5_0 bit_5_0 gnd C_bl
Cbb_5_0 bitb_5_0 gnd C_bl
Rb_5_1 bit_5_1 bit_5_2 R_bl
Rbb_5_1 bitb_5_1 bitb_5_2 R_bl
Cb_5_1 bit_5_1 gnd C_bl
Cbb_5_1 bitb_5_1 gnd C_bl
Rb_5_2 bit_5_2 bit_5_3 R_bl
Rbb_5_2 bitb_5_2 bitb_5_3 R_bl
Cb_5_2 bit_5_2 gnd C_bl
Cbb_5_2 bitb_5_2 gnd C_bl
Rb_5_3 bit_5_3 bit_5_4 R_bl
Rbb_5_3 bitb_5_3 bitb_5_4 R_bl
Cb_5_3 bit_5_3 gnd C_bl
Cbb_5_3 bitb_5_3 gnd C_bl
Rb_5_4 bit_5_4 bit_5_5 R_bl
Rbb_5_4 bitb_5_4 bitb_5_5 R_bl
Cb_5_4 bit_5_4 gnd C_bl
Cbb_5_4 bitb_5_4 gnd C_bl
Rb_5_5 bit_5_5 bit_5_6 R_bl
Rbb_5_5 bitb_5_5 bitb_5_6 R_bl
Cb_5_5 bit_5_5 gnd C_bl
Cbb_5_5 bitb_5_5 gnd C_bl
Vwrite_0 write_0 gnd dc 0
Vwrite_1 write_1 gnd dc 0
Vwrite_2 write_2 gnd dc 0
Vwrite_3 write_3 gnd dc 0
Vwrite_4 write_4 gnd dc 0
Vwrite_5 write_5 gnd dc 0
Vdata_0 data_0 gnd dc 0 
Vdatab_0 datab_0 gnd dc 1.8
Vdata_1 data_1 gnd dc 0 
Vdatab_1 datab_1 gnd dc 1.8
Vdata_2 data_2 gnd dc 0 
Vdatab_2 datab_2 gnd dc 1.8
Vdata_3 data_3 gnd dc 0 
Vdatab_3 datab_3 gnd dc 1.8
Vdata_4 data_4 gnd dc 0 
Vdatab_4 datab_4 gnd dc 1.8
Vdata_5 data_5 gnd dc 0 
Vdatab_5 datab_5 gnd dc 1.8
.ic q_0_0=0
.ic qb_0_0=1.8
.ic q_1_0=0
.ic qb_1_0=1.8
.ic q_2_0=0
.ic qb_2_0=1.8
.ic q_3_0=0
.ic qb_3_0=1.8
.ic q_4_0=0
.ic qb_4_0=1.8
.ic q_5_0=0
.ic qb_5_0=1.8
.ic q_0_1=0
.ic qb_0_1=1.8
.ic q_1_1=0
.ic qb_1_1=1.8
.ic q_2_1=0
.ic qb_2_1=1.8
.ic q_3_1=0
.ic qb_3_1=1.8
.ic q_4_1=0
.ic qb_4_1=1.8
.ic q_5_1=0
.ic qb_5_1=1.8
.ic q_0_2=0
.ic qb_0_2=1.8
.ic q_1_2=0
.ic qb_1_2=1.8
.ic q_2_2=0
.ic qb_2_2=1.8
.ic q_3_2=0
.ic qb_3_2=1.8
.ic q_4_2=0
.ic qb_4_2=1.8
.ic q_5_2=0
.ic qb_5_2=1.8
.ic q_0_3=0
.ic qb_0_3=1.8
.ic q_1_3=0
.ic qb_1_3=1.8
.ic q_2_3=0
.ic qb_2_3=1.8
.ic q_3_3=0
.ic qb_3_3=1.8
.ic q_4_3=0
.ic qb_4_3=1.8
.ic q_5_3=0
.ic qb_5_3=1.8
.ic q_0_4=0
.ic qb_0_4=1.8
.ic q_1_4=0
.ic qb_1_4=1.8
.ic q_2_4=0
.ic qb_2_4=1.8
.ic q_3_4=0
.ic qb_3_4=1.8
.ic q_4_4=0
.ic qb_4_4=1.8
.ic q_5_4=0
.ic qb_5_4=1.8
.ic q_0_5=0
.ic qb_0_5=1.8
.ic q_1_5=0
.ic qb_1_5=1.8
.ic q_2_5=0
.ic qb_2_5=1.8
.ic q_3_5=0
.ic qb_3_5=1.8
.ic q_4_5=0
.ic qb_4_5=1.8
.ic q_5_5=1.8
.ic qb_5_5=0
.param W1=4
.param W5=2
X0_0 q_0_0 qb_0_0 bit_0_0 bitb_0_0 word0_0 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X1_0 q_1_0 qb_1_0 bit_1_0 bitb_1_0 word1_0 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X2_0 q_2_0 qb_2_0 bit_2_0 bitb_2_0 word2_0 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X3_0 q_3_0 qb_3_0 bit_3_0 bitb_3_0 word3_0 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X4_0 q_4_0 qb_4_0 bit_4_0 bitb_4_0 word4_0 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X5_0 q_5_0 qb_5_0 bit_5_0 bitb_5_0 word5_0 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X0_1 q_0_1 qb_0_1 bit_0_1 bitb_0_1 word0_1 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X1_1 q_1_1 qb_1_1 bit_1_1 bitb_1_1 word1_1 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X2_1 q_2_1 qb_2_1 bit_2_1 bitb_2_1 word2_1 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X3_1 q_3_1 qb_3_1 bit_3_1 bitb_3_1 word3_1 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X4_1 q_4_1 qb_4_1 bit_4_1 bitb_4_1 word4_1 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X5_1 q_5_1 qb_5_1 bit_5_1 bitb_5_1 word5_1 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X0_2 q_0_2 qb_0_2 bit_0_2 bitb_0_2 word0_2 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X1_2 q_1_2 qb_1_2 bit_1_2 bitb_1_2 word1_2 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X2_2 q_2_2 qb_2_2 bit_2_2 bitb_2_2 word2_2 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X3_2 q_3_2 qb_3_2 bit_3_2 bitb_3_2 word3_2 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X4_2 q_4_2 qb_4_2 bit_4_2 bitb_4_2 word4_2 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X5_2 q_5_2 qb_5_2 bit_5_2 bitb_5_2 word5_2 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X0_3 q_0_3 qb_0_3 bit_0_3 bitb_0_3 word0_3 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X1_3 q_1_3 qb_1_3 bit_1_3 bitb_1_3 word1_3 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X2_3 q_2_3 qb_2_3 bit_2_3 bitb_2_3 word2_3 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X3_3 q_3_3 qb_3_3 bit_3_3 bitb_3_3 word3_3 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X4_3 q_4_3 qb_4_3 bit_4_3 bitb_4_3 word4_3 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X5_3 q_5_3 qb_5_3 bit_5_3 bitb_5_3 word5_3 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X0_4 q_0_4 qb_0_4 bit_0_4 bitb_0_4 word0_4 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X1_4 q_1_4 qb_1_4 bit_1_4 bitb_1_4 word1_4 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X2_4 q_2_4 qb_2_4 bit_2_4 bitb_2_4 word2_4 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X3_4 q_3_4 qb_3_4 bit_3_4 bitb_3_4 word3_4 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X4_4 q_4_4 qb_4_4 bit_4_4 bitb_4_4 word4_4 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X5_4 q_5_4 qb_5_4 bit_5_4 bitb_5_4 word5_4 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X0_5 q_0_5 qb_0_5 bit_0_5 bitb_0_5 word0_5 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X1_5 q_1_5 qb_1_5 bit_1_5 bitb_1_5 word1_5 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X2_5 q_2_5 qb_2_5 bit_2_5 bitb_2_5 word2_5 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X3_5 q_3_5 qb_3_5 bit_3_5 bitb_3_5 word3_5 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X4_5 q_4_5 qb_4_5 bit_4_5 bitb_4_5 word4_5 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
X5_5 q_5_5 qb_5_5 bit_5_5 bitb_5_5 word5_5 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 
Xt0 bit_0_6 bitb_0_6 pc_0 vdd gnd column_pull_up 
Xbr0 bit_0_0 bitb_0_0 col_read_0 sa_vcs sa_out_0 vdd gnd read_driver 
Xbw0 bit_0_0 bitb_0_0 col_write_0 write_0 data_0 datab_0 vdd gnd write_driver
Xt1 bit_1_6 bitb_1_6 pc_1 vdd gnd column_pull_up 
Xbr1 bit_1_0 bitb_1_0 col_read_1 sa_vcs sa_out_1 vdd gnd read_driver 
Xbw1 bit_1_0 bitb_1_0 col_write_1 write_1 data_1 datab_1 vdd gnd write_driver
Xt2 bit_2_6 bitb_2_6 pc_2 vdd gnd column_pull_up 
Xbr2 bit_2_0 bitb_2_0 col_read_2 sa_vcs sa_out_2 vdd gnd read_driver 
Xbw2 bit_2_0 bitb_2_0 col_write_2 write_2 data_2 datab_2 vdd gnd write_driver
Xt3 bit_3_6 bitb_3_6 pc_3 vdd gnd column_pull_up 
Xbr3 bit_3_0 bitb_3_0 col_read_3 sa_vcs sa_out_3 vdd gnd read_driver 
Xbw3 bit_3_0 bitb_3_0 col_write_3 write_3 data_3 datab_3 vdd gnd write_driver
Xt4 bit_4_6 bitb_4_6 pc_4 vdd gnd column_pull_up 
Xbr4 bit_4_0 bitb_4_0 col_read_4 sa_vcs sa_out_4 vdd gnd read_driver 
Xbw4 bit_4_0 bitb_4_0 col_write_4 write_4 data_4 datab_4 vdd gnd write_driver
Xt5 bit_5_6 bitb_5_6 pc_5 vdd gnd column_pull_up 
Xbr5 bit_5_0 bitb_5_0 col_read_5 sa_vcs sa_out_5 vdd gnd read_driver 
Xbw5 bit_5_0 bitb_5_0 col_write_5 write_5 data_5 datab_5 vdd gnd write_driver
.options post probe
.tran 1n 70n uic
.probe V(bit_5_0) V(bitb_5_0) V(word_5) V(q_5_5) V(qb_5_5) V(sa_out_5) V(pc_5) V(col_read_5) V(col_write_5) V(write_5) V(data_5) V(datab_5)
.end
