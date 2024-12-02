onerror {quit -f}
vlib work
vlog -work work comp.vo
vlog -work work comp.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.comp_vlg_vec_tst
vcd file -direction comp.msim.vcd
vcd add -internal comp_vlg_vec_tst/*
vcd add -internal comp_vlg_vec_tst/i1/*
add wave /*
run -all
