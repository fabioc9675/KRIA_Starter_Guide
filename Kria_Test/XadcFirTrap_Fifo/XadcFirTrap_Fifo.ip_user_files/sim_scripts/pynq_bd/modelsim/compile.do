vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_13
vlib modelsim_lib/msim/processing_system7_vip_v1_0_15
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/xlconcat_v2_1_4
vlib modelsim_lib/msim/xlslice_v1_0_2
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/axi_data_fifo_v2_1_26
vlib modelsim_lib/msim/axi_register_slice_v2_1_27
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_27

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 modelsim_lib/msim/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 modelsim_lib/msim/processing_system7_vip_v1_0_15
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap xlconcat_v2_1_4 modelsim_lib/msim/xlconcat_v2_1_4
vmap xlslice_v1_0_2 modelsim_lib/msim/xlslice_v1_0_2
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 modelsim_lib/msim/axi_data_fifo_v2_1_26
vmap axi_register_slice_v2_1_27 modelsim_lib/msim/axi_register_slice_v2_1_27
vmap axi_protocol_converter_v2_1_27 modelsim_lib/msim/axi_protocol_converter_v2_1_27

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

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_processing_system7_0_0/sim/pynq_bd_processing_system7_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_2/pynq_bd_xadc_wiz_0_2.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_fir_fab_0_0/sim/pynq_bd_fir_fab_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_trapz_klm_0_0/sim/pynq_bd_trapz_klm_0_0.vhd" \
"../../../bd/pynq_bd/ipshared/7b64/hdl/axil.vhdl" \
"../../../bd/pynq_bd/ipshared/7b64/hdl/axif.vhdl" \
"../../../bd/pynq_bd/ipshared/7b64/hdl/tdpram.vhdl" \
"../../../bd/pynq_bd/ipshared/7b64/hdl/graysync.vhdl" \
"../../../bd/pynq_bd/ipshared/7b64/hdl/fifo.vhdl" \
"../../../bd/pynq_bd/ipshared/7b64/hdl/comblock.vhdl" \
"../../../bd/pynq_bd/ipshared/7b64/hdl/axi_comblock.vhdl" \
"../../../bd/pynq_bd/ip/pynq_bd_comblock_0_0/sim/pynq_bd_comblock_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_rgb_0_0/sim/pynq_bd_rgb_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_leds_0_0/sim/pynq_bd_leds_0_0.vhd" \

vlog -work xlconstant_v1_1_7  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xlconstant_0_0/sim/pynq_bd_xlconstant_0_0.v" \

vlog -work xlconcat_v2_1_4  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xlconcat_0_0/sim/pynq_bd_xlconcat_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_xlconstant_1_0/sim/pynq_bd_xlconstant_1_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_xlconstant_2_0/sim/pynq_bd_xlconstant_2_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_xlconcat_1_0/sim/pynq_bd_xlconcat_1_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_xlconstant_3_0/sim/pynq_bd_xlconstant_3_0.v" \

vlog -work xlslice_v1_0_2  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xlslice_0_0/sim/pynq_bd_xlslice_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/sim/pynq_bd.vhd" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_rst_ps7_0_100M_2/sim/pynq_bd_rst_ps7_0_100M_2.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_rst_ps7_0_1M_1/sim/pynq_bd_rst_ps7_0_1M_1.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93  \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_27  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_pc_0/sim/pynq_bd_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"
