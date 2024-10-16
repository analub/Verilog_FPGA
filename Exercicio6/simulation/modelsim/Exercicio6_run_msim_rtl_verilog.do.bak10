transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/Desktop/Ana_Luisa/Exercicio6 {E:/Desktop/Ana_Luisa/Exercicio6/cont_64.v}

vlog -vlog01compat -work work +incdir+E:/Desktop/Ana_Luisa/Exercicio6 {E:/Desktop/Ana_Luisa/Exercicio6/contador_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  contador_tb

add wave *
view structure
view signals
run 2000 ns
