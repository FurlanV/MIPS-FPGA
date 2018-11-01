onerror {quit -f}
vlib work
vlog -work work arquivoOndas.vo
vlog -work work mainCaminhoDados2.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.arquivoOndas_vlg_vec_tst
vcd file -direction mainCaminhoDados2.msim.vcd
vcd add -internal arquivoOndas_vlg_vec_tst/*
vcd add -internal arquivoOndas_vlg_vec_tst/i1/*
add wave /*
run -all
