
.SUBCKT column_pull_up bit bitb pc vdd vss

*Column precharge transistors
M7 vdd vdd bit gnd NMOS W=2u L=500n
M8 vdd vdd bitb gnd NMOS W=2u L=500n

*Column balance transistor
Mbal bitb pc bit vdd PMOS W=5u L=5u

.ENDS column_pull_up
