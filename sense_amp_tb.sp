
.include "/home/taf27/hspice/libs/CMOS_180nm_L49.lib"


.param t_end = 500n
Vdd vdd gnd dc 1.8 
V1 sense_amp_in_a gnd pwl 0 1.3 100n 1.3 1u 0
V2 sense_amp_in_b gnd dc 1.3
V3 sense_amp_vcs gnd dc 0.7
*Sense amp
Ma1 na1 sense_amp_in_a sa_cs_d gnd NMOS W=0.8u L=540n
Ma2 sa_out sense_amp_in_b sa_cs_d gnd NMOS W=0.8u L=540n
Ma3 na1 na1 vdd vdd PMOS W=2u L=540n
Ma4 sa_out na1 vdd vdd PMOS W=2u L=540n
Ma5 sa_cs_d sense_amp_vcs gnd gnd NMOS W=5u L=540n

C1 sa_out gnd 50f

.options post probe

$.op
.tran 0.5p 1u 
.probe V(sense_amp_in_a) V(sense_amp_in_b) V(na1) V(sa_out) V(sa_cs_d) V(sense_amp_vcs) 
.probe I(Ma1) I(Ma2) I(Ma3) I(Ma4) I(Ma5)
.end
