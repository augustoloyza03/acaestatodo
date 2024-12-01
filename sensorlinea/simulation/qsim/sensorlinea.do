onerror {quit -f}
vlib work
vlog -work work sensorlinea.vo
vlog -work work sensorlinea.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.sensorlinea_vlg_vec_tst
vcd file -direction sensorlinea.msim.vcd
vcd add -internal sensorlinea_vlg_vec_tst/*
vcd add -internal sensorlinea_vlg_vec_tst/i1/*
add wave /*
run -all
