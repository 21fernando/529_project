
.SUBCKT column_pull_up bit bitb pc vdd vss

*Column precharge transistors
M7 vdd vss bit gnd NMOS W=1u L=500n
M8 vdd vss bit gnd NMOS W=1u L=500n

*Column balance transistor
Mbal bit pc bitb vss PMOS W=1u L=500n

.ENDS column_pull_up