transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {E:/riscvsingle/src/mux2.vhd}
vcom -2008 -work work {E:/riscvsingle/src/mux3.vhd}
vcom -2008 -work work {E:/riscvsingle/src/flopr.vhd}
vcom -2008 -work work {E:/riscvsingle/src/adder.vhd}
vcom -2008 -work work {E:/riscvsingle/src/som_1a.vhd}
vcom -2008 -work work {E:/riscvsingle/src/alu.vhd}
vcom -2008 -work work {E:/riscvsingle/src/regfile.vhd}
vcom -2008 -work work {E:/riscvsingle/src/extend.vhd}
vcom -2008 -work work {E:/riscvsingle/src/aludec.vhd}
vcom -2008 -work work {E:/riscvsingle/src/controller.vhd}
vcom -2008 -work work {E:/riscvsingle/src/datapath.vhd}
vcom -2008 -work work {E:/riscvsingle/src/dmem.vhd}
vcom -2008 -work work {E:/riscvsingle/src/imem.vhd}
vcom -2008 -work work {E:/riscvsingle/src/maindec.vhd}
vcom -2008 -work work {E:/riscvsingle/src/riscvsingle.vhd}
vcom -2008 -work work {E:/riscvsingle/src/top.vhd}
vcom -2008 -work work {E:/riscvsingle/src/riscv_pkg.vhd}
vcom -2008 -work work {E:/riscvsingle/src/testbench.vhd}

vcom -2008 -work work {E:/riscvsingle/quartus/../src/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
