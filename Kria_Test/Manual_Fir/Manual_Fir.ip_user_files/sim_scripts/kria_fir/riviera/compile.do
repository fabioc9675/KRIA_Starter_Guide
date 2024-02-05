vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93  \
"../../../bd/kria_fir/ip/kria_fir_fir_fab_0_3/sim/kria_fir_fir_fab_0_3.vhd" \
"../../../bd/kria_fir/sim/kria_fir.vhd" \


