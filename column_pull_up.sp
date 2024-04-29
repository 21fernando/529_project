
.SUBCKT column_pull_up bit bitb pc vdd gnd

*Column precharge transistors
M7 vdd vdd bit gnd NMOS W=1u L=500n
M8 vdd vdd bit gnd NMOS W=1u L=500n

*Column balance transistor
Mbal bit pc bitb vdd PMOS W=1u L=500n

.ENDS column_pull_up