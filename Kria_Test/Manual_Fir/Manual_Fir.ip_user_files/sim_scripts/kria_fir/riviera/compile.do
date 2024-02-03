vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/kria_fir/ip/kria_fir_fir_fab_0_0/sim/kria_fir_fir_fab_0_0.v" \
"../../../bd/kria_fir/sim/kria_fir.v" \


vlog -work xil_defaultlib \
"glbl.v"

