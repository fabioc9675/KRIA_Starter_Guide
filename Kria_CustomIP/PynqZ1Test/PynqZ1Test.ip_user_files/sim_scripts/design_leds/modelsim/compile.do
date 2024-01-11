vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_13
vlib modelsim_lib/msim/processing_system7_vip_v1_0_15
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/axi_data_fifo_v2_1_26
vlib modelsim_lib/msim/axi_register_slice_v2_1_27
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_27
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 modelsim_lib/msim/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 modelsim_lib/msim/processing_system7_vip_v1_0_15
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 modelsim_lib/msim/axi_data_fifo_v2_1_26
vmap axi_register_slice_v2_1_27 modelsim_lib/msim/axi_register_slice_v2_1_27
vmap axi_protocol_converter_v2_1_27 modelsim_lib/msim/axi_protocol_converter_v2_1_27
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ee60/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ee60/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ee60/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ee60/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ee60/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_leds/ip/design_leds_processing_system7_0_0/sim/design_leds_processing_system7_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_leds/ipshared/128b/hdl/Fab_Led_IP_v1_0_S00_AXI.vhd" \
"../../../bd/design_leds/ipshared/128b/src/Led_4count.vhd" \
"../../../bd/design_leds/ipshared/128b/src/Led_Bouncing.vhd" \
"../../../bd/design_leds/ipshared/128b/src/Led_Full.vhd" \
"../../../bd/design_leds/ipshared/128b/src/Led_Logic.vhd" \
"../../../bd/design_leds/ipshared/128b/hdl/Fab_Led_IP_v1_0.vhd" \
"../../../bd/design_leds/ip/design_leds_Fab_Led_IP_0_0/sim/design_leds_Fab_Led_IP_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ee60/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ee60/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93  \
"../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ee60/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -incr -mfcu  "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ee60/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -incr -mfcu  "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ee60/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_27  -incr -mfcu  "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ee60/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ee60/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_leds/ip/design_leds_auto_pc_0/sim/design_leds_auto_pc_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_leds/ip/design_leds_rst_ps7_0_100M_0/sim/design_leds_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/ee60/hdl" "+incdir+../../../../PynqZ1Test.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_leds/ip/design_leds_clk_wiz_0_0/design_leds_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_leds/ip/design_leds_clk_wiz_0_0/design_leds_clk_wiz_0_0.v" \
"../../../bd/design_leds/sim/design_leds.v" \

vlog -work xil_defaultlib \
"glbl.v"

