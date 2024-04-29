
.include "/home/taf27/hspice/libs/CMOS_180nm_L49.lib"

.param vdd_max = 1.8

vdd drain gnd dc 1

vgg gate gnd dc 1.3

vss source gnd dc 0.3

M1 drain gate source gnd NMOS L=540n W=0.7u

.options post probe

.dc vdd 0 1.8 0.01

.probe dc V(vdd) V(vgg) -I(vdd)

.end
