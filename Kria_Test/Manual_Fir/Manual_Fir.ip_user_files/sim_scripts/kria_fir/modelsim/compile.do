vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/kria_fir/ip/kria_fir_fir_fab_0_0/sim/kria_fir_fir_fab_0_0.v" \
"../../../bd/kria_fir/sim/kria_fir.v" \


vlog -work xil_defaultlib \
"glbl.v"

