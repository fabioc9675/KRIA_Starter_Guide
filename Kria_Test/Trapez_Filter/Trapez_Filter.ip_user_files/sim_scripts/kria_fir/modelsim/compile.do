vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93  \
"../../../bd/kria_fir/ip/kria_fir_trapz_fab_0_0/sim/kria_fir_trapz_fab_0_0.vhd" \
"../../../bd/kria_fir/sim/kria_fir.vhd" \


