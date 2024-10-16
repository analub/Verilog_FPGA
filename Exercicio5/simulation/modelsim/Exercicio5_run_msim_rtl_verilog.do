transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/Desktop/Ana_Luisa/Exercicio5 {E:/Desktop/Ana_Luisa/Exercicio5/paraleloSerie.v}

vlog -vlog01compat -work work +incdir+E:/Desktop/Ana_Luisa/Exercicio5 {E:/Desktop/Ana_Luisa/Exercicio5/conversor_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  conversor_tb

add wave *
view structure
view signals
run 8000 ns
