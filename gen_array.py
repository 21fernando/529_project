filename = "sram_256x256.sp"

with open(filename, 'w') as file:
    file.write("* 256x256 SRAM Array Netlist\n")
    #file.write(".include \"/home/taf27/hspice/libs/CMOS_180nm_L49.lib\"\n")
    file.write(".include \"sram_cell.sp\"\n")
    file.write("Vdd vdd 0 1.8\n")
    file.write("Vss gnd 0 0\n")
    
    # Generating the Word and Bit Lines
    for i in range(256):
	if i != 7:
            file.write("Vwl{0} word{0} 0 0\n".format(i))
    	else:
	    file.write("Vwl{0} word{0} gnd pulse 0 1.8 20n 1n 1n 100n 200n \n".format(i))
    #Initializing bitlines
    for i in range(256):
        file.write("Cb{0} bit{0} gnd 2p\n".format(i))
        file.write("Cbb{0} bitb{0} gnd 2p\n".format(i))
	file.write(".ic bit{0}=1.8\n".format(i))
        file.write(".ic bitb{0}=1.8\n".format(i))

    #Initializing cells values
    for row in range(256):
	for col in range(256):
            file.write(".ic q{0}_{1}=0\n".format(row,col))
            file.write(".ic qb{0}_{1}=1.8\n".format(row,col))

    # Instantiating the Cells
    for row in range(256):
        for col in range(256):
            file.write("X{0}_{1} q{0}_{1} qb{0}_{1} bit{1} bitb{1} word{0} vdd gnd SRAM_cell\n".format(row, col))

    file.write(".options post probe\n")
    file.write(".tran 1n 200n uic\n")
    file.write(".probe V(bit240) V(bitb240) V(word7) V(q7_240) V(qb7_240)")
    file.write(".end\n")
