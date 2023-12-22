vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_13
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_13
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/axi_intc_v4_1_17
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/axi_data_fifo_v2_1_26
vlib modelsim_lib/msim/axi_register_slice_v2_1_27
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_27

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 modelsim_lib/msim/axi_vip_v1_1_13
vmap zynq_ultra_ps_e_vip_v1_0_13 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_13
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_17 modelsim_lib/msim/axi_intc_v4_1_17
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 modelsim_lib/msim/axi_data_fifo_v2_1_26
vmap axi_register_slice_v2_1_27 modelsim_lib/msim/axi_register_slice_v2_1_27
vmap axi_protocol_converter_v2_1_27 modelsim_lib/msim/axi_protocol_converter_v2_1_27

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_13 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_leds/ip/design_leds_zynq_ultra_ps_e_0_0/sim/design_leds_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/design_leds/ip/design_leds_clk_wiz_0_0/design_leds_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_leds/ip/design_leds_clk_wiz_0_0/design_leds_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93  \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_leds/ip/design_leds_proc_sys_reset_0_0/sim/design_leds_proc_sys_reset_0_0.vhd" \
"../../../bd/design_leds/ip/design_leds_proc_sys_reset_1_0/sim/design_leds_proc_sys_reset_1_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_17 -64 -93  \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/802b/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_leds/ip/design_leds_axi_intc_0_1/sim/design_leds_axi_intc_0_1.vhd" \
"../../../bd/design_leds/ip/design_leds_Led_4count_0_1/sim/design_leds_Led_4count_0_1.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr -mfcu  "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu  "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -64 -93  \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu  "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26 -64 -incr -mfcu  "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27 -64 -incr -mfcu  "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_27 -64 -incr -mfcu  "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_leds/ip/design_leds_auto_pc_0/sim/design_leds_auto_pc_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_leds/sim/design_leds.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

