onerror {quit -f}
vlib work
vlog -work work decision.vo
vlog -work work decision.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.decisionfinal_vlg_vec_tst
vcd file -direction decision.msim.vcd
vcd add -internal decisionfinal_vlg_vec_tst/*
vcd add -internal decisionfinal_vlg_vec_tst/i1/*
add wave /*
run -all
