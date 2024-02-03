vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/kria_fir/ip/kria_fir_fir_fab_0_0/sim/kria_fir_fir_fab_0_0.v" \
"../../../bd/kria_fir/sim/kria_fir.v" \


vlog -work xil_defaultlib \
"glbl.v"

