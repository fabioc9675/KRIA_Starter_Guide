vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_13
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_13
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_27
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/axi_data_fifo_v2_1_26
vlib activehdl/axi_crossbar_v2_1_28
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/axi_intc_v4_1_17
vlib activehdl/xlslice_v1_0_2
vlib activehdl/axi_protocol_converter_v2_1_27

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 activehdl/axi_vip_v1_1_13
vmap zynq_ultra_ps_e_vip_v1_0_13 activehdl/zynq_ultra_ps_e_vip_v1_0_13
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_27 activehdl/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 activehdl/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 activehdl/axi_crossbar_v2_1_28
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_17 activehdl/axi_intc_v4_1_17
vmap xlslice_v1_0_2 activehdl/xlslice_v1_0_2
vmap axi_protocol_converter_v2_1_27 activehdl/axi_protocol_converter_v2_1_27

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_13  -sv2k12 "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_leds/ip/design_leds_zynq_ultra_ps_e_0_0/sim/design_leds_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/design_leds/ip/design_leds_clk_wiz_0_0/design_leds_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_leds/ip/design_leds_clk_wiz_0_0/design_leds_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_leds/ip/design_leds_proc_sys_reset_0_0/sim/design_leds_proc_sys_reset_0_0.vhd" \
"../../../bd/design_leds/ip/design_leds_proc_sys_reset_1_0/sim/design_leds_proc_sys_reset_1_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_leds/ip/design_leds_xbar_0/sim/design_leds_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_17 -93  \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/802b/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_leds/ip/design_leds_axi_intc_0_1/sim/design_leds_axi_intc_0_1.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_leds/ip/design_leds_xlslice_0_0/sim/design_leds_xlslice_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_leds/ipshared/be8f/hdl/Fab_Led_IP_v1_0_S00_AXI.vhd" \
"../../../bd/design_leds/ipshared/be8f/src/Led_4count.vhd" \
"../../../bd/design_leds/ipshared/be8f/src/Led_Bouncing.vhd" \
"../../../bd/design_leds/ipshared/be8f/src/Led_Full.vhd" \
"../../../bd/design_leds/ipshared/be8f/src/Led_Logic.vhd" \
"../../../bd/design_leds/ipshared/be8f/hdl/Fab_Led_IP_v1_0.vhd" \
"../../../bd/design_leds/ip/design_leds_Fab_Led_IP_0_6/sim/design_leds_Fab_Led_IP_0_6.vhd" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl" "+incdir+../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_leds/ip/design_leds_auto_pc_0/sim/design_leds_auto_pc_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_leds/sim/design_leds.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

