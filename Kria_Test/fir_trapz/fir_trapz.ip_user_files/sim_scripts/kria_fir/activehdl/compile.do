vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93  \
"../../../bd/kria_fir/ip/kria_fir_trapz_klm_0_0/sim/kria_fir_trapz_klm_0_0.vhd" \
"../../../bd/kria_fir/ip/kria_fir_fir_fab_0_0/sim/kria_fir_fir_fab_0_0.vhd" \
"../../../bd/kria_fir/sim/kria_fir.vhd" \


