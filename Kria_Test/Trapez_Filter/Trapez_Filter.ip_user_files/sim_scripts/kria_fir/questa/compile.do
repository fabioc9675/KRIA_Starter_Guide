vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93  \
"../../../bd/kria_fir/ip/kria_fir_trapz_fab_real_0_0/sim/kria_fir_trapz_fab_real_0_0.vhd" \
"../../../bd/kria_fir/sim/kria_fir.vhd" \


