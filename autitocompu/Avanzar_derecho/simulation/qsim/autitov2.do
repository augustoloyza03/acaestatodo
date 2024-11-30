onerror {quit -f}
vlib work
vlog -work work autitov2.vo
vlog -work work autitov2.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.avanzar_vlg_vec_tst
vcd file -direction autitov2.msim.vcd
vcd add -internal avanzar_vlg_vec_tst/*
vcd add -internal avanzar_vlg_vec_tst/i1/*
add wave /*
run -all
