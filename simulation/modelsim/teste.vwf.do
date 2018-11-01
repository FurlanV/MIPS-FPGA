vlog -work work C:/Users/Luis Carlos/Desktop/TP02-OC1-PT1/ViniciusFurlan1785AntonioAlmeida2632-OC1-PT2/CaminhoDados/simulation/modelsim/teste.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.arquivoOndas_vlg_vec_tst
onerror {resume}
add wave {arquivoOndas_vlg_vec_tst/i1/clock}
add wave {arquivoOndas_vlg_vec_tst/i1/hex0}
add wave {arquivoOndas_vlg_vec_tst/i1/hex0[6]}
add wave {arquivoOndas_vlg_vec_tst/i1/hex0[5]}
add wave {arquivoOndas_vlg_vec_tst/i1/hex0[4]}
add wave {arquivoOndas_vlg_vec_tst/i1/hex0[3]}
add wave {arquivoOndas_vlg_vec_tst/i1/hex0[2]}
add wave {arquivoOndas_vlg_vec_tst/i1/hex0[1]}
add wave {arquivoOndas_vlg_vec_tst/i1/hex0[0]}
run -all
