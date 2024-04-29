
.include "and2.sp"

.SUBCKT write_driver bit bitb col write data datab vdd gnd

*Write driver transistor
M13 bit bit_col_sel col_sel_drain gnd NMOS W=540n L=180n
M14 bitb bitb_col_sel col_sel_drain gnd NMOS W=540n L=180n

*Column select transistor
M15 col_sel_drain col gnd gnd NMOS W=540n L=180n

*And gate for bitline 
X1 datab write bit_col_sel vdd gnd AND2
 
*And gate for bitline bar
X2 data write bitb_col_sel vdd gnd AND2

.ENDS write_driver