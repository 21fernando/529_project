
.SUBCKT AND2 a b out vdd gnd

Ma1 inv_in a n1 gnd NMOS W=2u L=180n
Ma2 n1 b gnd gnd NMOS W=2u L=180n
Ma3 inv_in a vdd vdd PMOS W=2u L=180n
Ma4 inv_in b vdd vdd PMOS W=2u L=180n
Ma5 out inv_in gnd gnd NMOS W=180n L=180n
Ma6 out inv_in vdd vdd PMOS W=360n L=180n

.ENDS AND2