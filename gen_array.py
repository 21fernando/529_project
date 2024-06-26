N = 100
do_read = True
cell_value = 1.8
cell_bar_value = 0
data_val = 0
data_bar_val = 1.8
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
    file.write(".param C_wl={0}f\n".format(575.0/N))
    for row in range(N):
        if row != N-1:
            file.write("Vwl_{0} word_{0} 0 0\n".format(row))
        else:
            if do_read == 1:
                file.write("Vwl_{0} word_{0} gnd pwl 0 0 (16n) 0 (17n) 1.8 50n 1.8 (51n) 0 \n".format(row))
            else:
                file.write("Vwl_{0} word_{0} gnd pwl 0 0 (41n) 0 (42n) 1.8 44n 1.8 (45n) 0 \n".format(row))
        for col in range(N):
            #file.write("COL:{0}\n".format(col))
            if col==0:
                file.write("Rw{1}_{0} word_{0} word{1}_{0} R_wl\n".format(row, col))
            else:
                file.write("Rw{2}_{0} word{2}_{0} word{1}_{0} R_wl\n".format(row, col-1, col))
            file.write("Cwl_{1}_{0} word{1}_{0} gnd C_wl\n".format(row, col))

    #Generating Column selects:
    for col in range(N):
        file.write("*Column access, activates at 110n\n")
        if col != N-1:
            file.write("Vcol_write_{0} col_write_{0} gnd dc 0\n".format(col))
            file.write("Vcol_read_{0} col_read_{0} gnd dc 1.8\n".format(col))
        else:
            if do_read:
                file.write("Vcol_read_{0} col_read_{0} gnd pwl 0 1.8 (17n) 1.8 (18n) 0 50n 0 (51n) 1.8\n".format(col))
                file.write("Vcol_write_{0} col_write_{0} gnd pwl 0 0 (17n) 0 (18n) 1.8 50n 1.8 (51n) 0\n".format(col))
            else:
		file.write("Vcol_write_{0} col_write_{0} gnd pwl 0 0 (32n) 0 (33n) 1.8 60n 1.8 61n 0\n".format(col))
                file.write("Vcol_read_{0} col_read_{0} gnd pwl 0 1.8 (32n) 1.8 (33n) 0 60n 0 (61n) 1.8\n".format(col))

    #Generating Precharge selects:
    for col in range(N):
        file.write("*Precharge, activates at 10n\n")
        if col != N-1:
            file.write("Vpc_{0} pc_{0} gnd dc 1.8\n".format(col))
        else:
            if do_read:
                file.write("Vpc_{0} pc_{0} gnd pwl 0 1.8 10n 1.8 11n 0 14n 0 15n 1.8\n".format(col))
            else:
                file.write("Vpc_{0} pc_{0} gnd pwl 0 1.8 5n 1.8 6n 0 15n 0 16n 1.8\n".format(col))
    #Sense amp bias voltage    
    file.write("*Sense amp bias supply\n")
    file.write("Vsa sa_vcs gnd dc 0.7\n")

    #Initializing bitlines
    file.write(".param R_bl=0.5\n")
    file.write(".param C_bl={0}f\n".format(378.9/N))
    for col in range(N):
        for row in range(N):
            file.write("Rb_{1}_{0} bit_{1}_{0} bit_{1}_{2} R_bl\n".format(row, col,row+1))
            file.write("Rbb_{1}_{0} bitb_{1}_{0} bitb_{1}_{2} R_bl\n".format(row, col,row+1))
            file.write("Cb_{1}_{0} bit_{1}_{0} gnd C_bl\n".format(row, col))
            file.write("Cbb_{1}_{0} bitb_{1}_{0} gnd C_bl\n".format(row, col))

    #Write signals
    for col in range(N):
        if col == N-1 and do_read == False:
            file.write("Vwrite_{0} write_{0} gnd pwl 0 0 20n 0 21n 1.8 60n 1.8 61n 0\n".format(col))
        else:
            file.write("Vwrite_{0} write_{0} gnd dc 0\n".format(col))

    #Data signals
    for col in range(N):
        if col == N-1 and do_read == False:
            file.write("Vdata_{0} data_{0} gnd pwl 0 {1} 20n {1} 21n {2} 60n {2} 61n {1}\n".format(col, data_bar_val, data_val))
            file.write("Vdatab_{0} datab_{0} gnd pwl 0 {1} 20n {1} 21n {2} 60n {2} 61n {1}\n".format(col, data_val, data_bar_val))
        else:
            file.write("Vdata_{0} data_{0} gnd dc 0 \n".format(col))
            file.write("Vdatab_{0} datab_{0} gnd dc 1.8\n".format(col))
            
    
    #Initializing cells values
    for row in range(N):
        for col in range(N):
            if row == N-1 and col == N-1:
                file.write(".ic q_{1}_{0}={2}\n".format(row,col, cell_value))
                file.write(".ic qb_{1}_{0}={2}\n".format(row,col, cell_bar_value))
	    else:            
		file.write(".ic q_{1}_{0}=0\n".format(row,col))
		file.write(".ic qb_{1}_{0}=1.8\n".format(row,col))
    file.write(".param W1=4\n")
    file.write(".param W5=2\n")
    #Instantiating the Cells
    for row in range(N):
        for col in range(N):
            file.write("X{1}_{0} q_{1}_{0} qb_{1}_{0} bit_{1}_{0} bitb_{1}_{0} word{1}_{0} vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2 \n".format(row, col))

    for col in range(N):
        #Top of colum circuits
        file.write("Xt{0} bit_{0}_{1} bitb_{0}_{1} pc_{0} vdd gnd column_pull_up \n".format(col,N))

        #Bottom of column circuits
        file.write("Xbr{0} bit_{0}_0 bitb_{0}_0 col_read_{0} sa_vcs sa_out_{0} vdd gnd read_driver \n".format(col))
        file.write("Xbw{0} bit_{0}_0 bitb_{0}_0 col_write_{0} write_{0} data_{0} datab_{0} vdd gnd write_driver\n".format(col))
    file.write(".options post probe\n")
    file.write(".tran 1n 70n uic\n")
    file.write(".probe I(X5_5.M3) I(X5_5.M4) V(bit_{1}_0) V(bitb_{1}_0) V(word_{1}) V(q_{1}_{1}) V(qb_{1}_{1}) V(sa_out_{1}) V(pc_{1}) V(col_read_{1}) V(col_write_{1}) V(write_{1}) V(data_{1}) V(datab_{1})\n".format(0,N-1))
    file.write(".end\n")
