transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Enf/Documents/QuartusProjects/Projeto1PHI/ULA/shift_l.vhd}
vcom -93 -work work {C:/Users/Enf/Documents/QuartusProjects/Projeto1PHI/ULA/ULA.vhd}
vcom -93 -work work {C:/Users/Enf/Documents/QuartusProjects/Projeto1PHI/ULA/subtrator.vhd}
vcom -93 -work work {C:/Users/Enf/Documents/QuartusProjects/Projeto1PHI/ULA/somador.vhd}
vcom -93 -work work {C:/Users/Enf/Documents/QuartusProjects/Projeto1PHI/ULA/porta_or.vhd}
vcom -93 -work work {C:/Users/Enf/Documents/QuartusProjects/Projeto1PHI/ULA/porta_not.vhd}
vcom -93 -work work {C:/Users/Enf/Documents/QuartusProjects/Projeto1PHI/ULA/porta_and.vhd}
vcom -93 -work work {C:/Users/Enf/Documents/QuartusProjects/Projeto1PHI/ULA/multiplex.vhd}
vcom -93 -work work {C:/Users/Enf/Documents/QuartusProjects/Projeto1PHI/ULA/incrementador.vhd}
vcom -93 -work work {C:/Users/Enf/Documents/QuartusProjects/Projeto1PHI/ULA/decrementador.vhd}
vcom -93 -work work {C:/Users/Enf/Documents/QuartusProjects/Projeto1PHI/ULA/shift_r.vhd}

vcom -93 -work work {C:/Users/Enf/Documents/QuartusProjects/Projeto1PHI/ULA/ULA_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  ULA_tb

add wave *
view structure
view signals
run 90 ns
