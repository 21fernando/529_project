
.SUBCKT sense_amplifier sa_in_a sa_in_b sa_vcs sa_out vdd gnd

*Diff Pair
Ma1 na1 sa_in_a sa_cs_d gnd NMOS W=0.8u L=540n
Ma2 sa_out sa_in_b sa_cs_d gnd NMOS W=0.8u L=540n

*Current Mirror Load
Ma3 na1 na1 vdd vdd PMOS W=2u L=540n
Ma4 sa_out na1 vdd vdd PMOS W=2u L=540n

*Tail Current Source
Ma5 sa_cs_d sa_vcs gnd gnd NMOS W=5u L=540n

*Load Capacitance
C1 sa_out gnd 50f

.ENDS sense_amplifier
