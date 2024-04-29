
.include "sense_amp.sp"

.SUBCKT read_driver bit bitb col sa_vcs sa_out vdd gnd

*Read driver transistor
M13 sense_amp_in_a col bit vdd PMOS W=1u L=500n
M14 sense_amp_in_b col bitb vdd PMOS W=1u L=500n

*Sense amp
X1 sense_amp_in_a sense_amp_in_b sa_vcs sa_out vdd gnd sense_amplifier

.ENDS read_driver
