vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_13
vlib riviera/zynq_ultra_ps_e_vip_v1_0_13
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/axi_intc_v4_1_17
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_27
vlib riviera/fifo_generator_v13_2_7
vlib riviera/axi_data_fifo_v2_1_26
vlib riviera/axi_crossbar_v2_1_28
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_29
vlib riviera/xlslice_v1_0_2
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_uartlite_v2_0_31
vlib riviera/xlconcat_v2_1_4
vlib riviera/util_reduced_logic_v2_0_4
vlib riviera/axi_protocol_converter_v2_1_27

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 riviera/axi_vip_v1_1_13
vmap zynq_ultra_ps_e_vip_v1_0_13 riviera/zynq_ultra_ps_e_vip_v1_0_13
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_17 riviera/axi_intc_v4_1_17
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_27 riviera/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 riviera/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 riviera/axi_crossbar_v2_1_28
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_29 riviera/axi_gpio_v2_0_29
vmap xlslice_v1_0_2 riviera/xlslice_v1_0_2
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_31 riviera/axi_uartlite_v2_0_31
vmap xlconcat_v2_1_4 riviera/xlconcat_v2_1_4
vmap util_reduced_logic_v2_0_4 riviera/util_reduced_logic_v2_0_4
vmap axi_protocol_converter_v2_1_27 riviera/axi_protocol_converter_v2_1_27

vlog -work xilinx_vip  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_13  -sv2k12 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_zynq_ultra_ps_e_0_0/sim/kria_bd_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/kria_bd/ip/kria_bd_clk_wiz_0_0/kria_bd_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/kria_bd/ip/kria_bd_clk_wiz_0_0/kria_bd_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/kria_bd/ip/kria_bd_proc_sys_reset_0_0/sim/kria_bd_proc_sys_reset_0_0.vhd" \
"../../../bd/kria_bd/ip/kria_bd_proc_sys_reset_1_0/sim/kria_bd_proc_sys_reset_1_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_17 -93  \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/802b/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/kria_bd/ip/kria_bd_axi_intc_0_0/sim/kria_bd_axi_intc_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_xbar_0/sim/kria_bd_xbar_0.v" \

vcom -work interrupt_control_v3_1_4 -93  \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_29 -93  \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/6219/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/kria_bd/ip/kria_bd_axi_gpio_0_1/sim/kria_bd_axi_gpio_0_1.vhd" \
"../../../bd/kria_bd/ip/kria_bd_axi_gpio_0_2/sim/kria_bd_axi_gpio_0_2.vhd" \
"../../../bd/kria_bd/ip/kria_bd_axi_gpio_0_3/sim/kria_bd_axi_gpio_0_3.vhd" \
"../../../bd/kria_bd/ip/kria_bd_axi_gpio_0_4/sim/kria_bd_axi_gpio_0_4.vhd" \
"../../../bd/kria_bd/ip/kria_bd_axi_gpio_0_5/sim/kria_bd_axi_gpio_0_5.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_xlslice_0_1/sim/kria_bd_xlslice_0_1.v" \

vcom -work lib_pkg_v1_0_2 -93  \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93  \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_31 -93  \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/67a1/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/kria_bd/ip/kria_bd_axi_uartlite_0_0/sim/kria_bd_axi_uartlite_0_0.vhd" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_xlconcat_0_0/sim/kria_bd_xlconcat_0_0.v" \

vlog -work util_reduced_logic_v2_0_4  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/4c94/hdl/util_reduced_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_util_reduced_logic_0_0/sim/kria_bd_util_reduced_logic_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/kria_bd/sim/kria_bd.vhd" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_Comm.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_auto_pc_0/sim/kria_bd_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"
