filename = "column_256.sp"

with open(filename, 'w') as file:
    file.write("* 256x256 SRAM Array Netlist\n")
    file.write(".include \"sram_cell.sp\"\n")
    file.write(".include \"write_driver.sp\"\n")
    file.write(".include \"read_driver.sp\"\n")
    file.write(".include \"column_pull_up.sp\"\n")
    file.write("\n\n*+++++++++++++++++++++++++++++++++\n")
    file.write("*++++++++++++SOURCES++++++++++++++\n")
    file.write("*+++++++++++++++++++++++++++++++++\n")
    file.write("Vdd vdd 0 1.8\n")
    file.write("Vss gnd 0 0\n")

    # Generating the Wordlines
    for i in range(256):
        if (i != 7):
            file.write("Vwl{0} word{0} 0 0\n".format(i))
        else:
            file.write("Vword word gnd pwl 0 0 (20n) 0 (21n) 1.8 50n 1.8 (51n) 0\n".format(i))

    file.write("*Column access, activates at 110n\n")
    file.write("Vcol col gnd pwl 0 1.8 (30n) 1.8 (31n) 0 50n 0 (51n) 1.8\n")
    file.write("*Precharge, activates at 10n\n")
    file.write("Vpc pc gnd pwl 0 1.8 10n 1.8 11n 0 50n 0 51n 1.8\n")
    file.write("*Sense amp bias supply\n")
    file.write("Vsa sa_vcs gnd dc 0.7\n")

    file.write("\n\n*+++++++++++++++++++++++++++++++++\n")
    file.write("*++++++BITLINE CAPACITANCES+++++++\n")
    file.write("*+++++++++++++++++++++++++++++++++\n")

    #Bitline capacitance 
    file.write("*Bitline Capacitances \nCb bit gnd 330f \nCbb bitb gnd 330f\n")

    #Bottom of colum circuits
    file.write("X2 bit bitb pc vdd gnd column_pull_up \n")

    #Top of column circuits
    file.write("X3 bit bitb col sa_vcs sa_out vdd gnd read_driver \n")

    file.write("\n\n*+++++++++++++++++++++++++++++++++\n")
    file.write("*+++++++++++SRAM CELLS++++++++++++\n")
    file.write("*+++++++++++++++++++++++++++++++++\n")

    #Initializing cells values
    for row in range(256):
        file.write(".ic q{0}=0\n".format(row))
        file.write(".ic qb{0}=1.8\n".format(row))

    # Instantiating the Cells
    file.write(".param W1=4\n")
    file.write(".param W5=2\n") 
    for row in range(256):
        file.write("Xsram{0} q{0} qb{0} bit bitb word{0} vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2\n".format(row))


    file.write("\n\n*+++++++++++++++++++++++++++++++++\n")
    file.write("*+++++++++++SIMULATION++++++++++++\n")
    file.write("*+++++++++++++++++++++++++++++++++\n")
    file.write(".options post probe\n")
    file.write(".tran 1n 200n uic\n")
    file.write(".probe V(bit) V(bitb) V(word7) V(q7) V(qb7)")
    file.write(".end\n")
