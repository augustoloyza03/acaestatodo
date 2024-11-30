onerror {quit -f}
vlib work
vlog -work work fin.vo
vlog -work work fin.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.fin_vlg_vec_tst
vcd file -direction fin.msim.vcd
vcd add -internal fin_vlg_vec_tst/*
vcd add -internal fin_vlg_vec_tst/i1/*
add wave /*
run -all
