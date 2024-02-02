vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93  \
"../../../bd/kria_fir/sim/kria_fir.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_Loop_Shift_Accum_Loop_proc.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_Loop_Shift_Accum_Loop_proc_Pipeline_Shift_Accum_Loop.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_mul_32s_6ns_32_1_1.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_mul_32s_7ns_32_1_1.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_mul_32s_7s_32_1_1.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_mul_32s_8ns_32_1_1.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_mul_32s_8s_32_1_1.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_mul_32s_9s_32_1_1.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_mul_32s_10ns_32_1_1.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_mul_32s_10s_32_1_1.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_mul_32s_11ns_32_1_1.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_mul_32s_11s_32_1_1.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_mul_32s_12s_32_1_1.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_mul_32s_13s_32_1_1.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_mul_32s_15ns_32_1_1.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_mul_32s_32s_32_1_1.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir_mux_1017_32_1_1.vhd" \
"../../../../Fir_Parallel_Vivado.gen/sources_1/bd/kria_fir/ipshared/0e3a/hdl/vhdl/fir.vhd" \
"../../../bd/kria_fir/ip/kria_fir_fir_0_1/sim/kria_fir_fir_0_1.vhd" \


