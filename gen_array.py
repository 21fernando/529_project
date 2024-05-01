N = 2

filename = "sram_{0}x{0}.sp".format(N)

with open(filename, 'w') as file:
    file.write("* {0}x{0} SRAM Array Netlist\n".format(N))
    file.write(".include \"/home/taf27/hspice/libs/CMOS_180nm_L49.lib\"\n")
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
    file.write(".param R_wl=0.5\n")
    for row in range(N):
        if row != N-1:
            file.write("Vwl_{0} word_{0} 0 0\n".format(row))
        else:
            file.write("Vwl_{0} word_{0} gnd pulse 0 1.8 20n 1n 1n 100n 200n \n".format(row))
        for col in range(N):
            #file.write("COL:{0}\n".format(col))
            if col==0:
                file.write("Rw{1}_{0} word_{0} word{1}_{0} R_wl\n".format(row, col))
            else:
                file.write("Rw{1}_{0} word{1}_{0} word{2}_{0} R_wl\n".format(row, col-1, col))

    #Generating Column selects:
    for col in range(N):
        file.write("*Column access, activates at 110n\n")
        if col != N-1:
            file.write("Vcol_{0} col_{0} gnd dc 0\n".format(col))
        else:
            file.write("Vcol_{0} col_{0} gnd pwl 0 1.8 (30n) 1.8 (31n) 0 50n 0 (51n) 1.8\n".format(col))

    #Generating Precharge selects:
    for col in range(N):
        file.write("*Precharge, activates at 10n\n")
        if col != N-1:
            file.write("Vpc_{0} pc_{0} gnd dc 1.8\n".format(col))
        else:
            file.write("Vpc_{0} pc_{0} gnd pwl 0 1.8 10n 1.8 11n 0 50n 0 51n 1.8\n".format(col))

    #Sense amp bias voltage    
    file.write("*Sense amp bias supply\n")
    file.write("Vsa sa_vcs gnd dc 0.7\n")

    #Initializing bitlines
    file.write(".param R_bl=0.5\n")
    file.write(".param C_bl=1.3f\n")
    for col in range(N):
        for row in range(N):
            file.write("Rb_{1}_{0} bit_{1}_{0} bit_{1}_{2} R_bl\n".format(row, col,row+1))
            file.write("Rbb_{1}_{0} bitb_{1}_{0} bitb_{1}_{2} R_bl\n".format(row, col,row+1))
            file.write("Cb_{1}_{0} bit_{1}_{0} gnd C_bl\n".format(row, col))
            file.write("Cbb_{1}_{0} bitb_{1}_{0} gnd C_bl\n".format(row, col))

    #Initializing cells values
    for row in range(N):
        for col in range(N):
            file.write(".ic q_{1}_{0}=0\n".format(row,col))
            file.write(".ic qb_{1}_{0}=1.8\n".format(row,col))

    #Instantiating the Cells
    for row in range(N):
        for col in range(N):
            file.write("X{1}_{0} q_{1}_{0} qb_{1}_{0} bit_{1}_{0} bitb_{1}_{0} word{1}_{0} vdd gnd SRAM_cell\n".format(row, col))

    for col in range(N):
        #Top of colum circuits
        file.write("Xt{0} bit_{0}_{1} bitb_{0}_{1} pc_{0} vdd gnd column_pull_up \n".format(col,N))

        #Bottom of column circuits
        file.write("Xb{0} bit_{0}_0 bitb_{0}_0 col_{0} sa_vcs sa_out_{0} vdd gnd read_driver \n".format(col))
     
    file.write(".options post probe\n")
    file.write(".tran 1n 200n uic\n")
    file.write(".probe V(bit_{1}_0) V(bitb_{1}_0) V(word{1}) V(q{1}_{1}) V(qb{1}_{1}) V(sa_out_{1}) V(pc_{1}) V(col_{1})".format(0,N-1))
    file.write(".end\n")
