vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/axi_intc_v4_1_17
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_27
vlib riviera/fifo_generator_v13_2_7
vlib riviera/axi_data_fifo_v2_1_26
vlib riviera/axi_crossbar_v2_1_28
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_29
vlib riviera/xlconcat_v2_1_4
vlib riviera/xlslice_v1_0_2
vlib riviera/axi_vip_v1_1_13
vlib riviera/zynq_ultra_ps_e_vip_v1_0_13
vlib riviera/xbip_utils_v3_0_10
vlib riviera/c_reg_fd_v12_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_addsub_v3_0_6
vlib riviera/c_addsub_v12_0_14
vlib riviera/c_gate_bit_v12_0_6
vlib riviera/xbip_counter_v3_0_6
vlib riviera/c_counter_binary_v12_0_15
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_fifo_v1_0_16
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_datamover_v5_1_29
vlib riviera/axi_sg_v4_1_15
vlib riviera/axi_dma_v7_1_28
vlib riviera/axi_protocol_converter_v2_1_27
vlib riviera/xlconstant_v1_1_7
vlib riviera/smartconnect_v1_0

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_17 riviera/axi_intc_v4_1_17
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_27 riviera/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 riviera/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 riviera/axi_crossbar_v2_1_28
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_29 riviera/axi_gpio_v2_0_29
vmap xlconcat_v2_1_4 riviera/xlconcat_v2_1_4
vmap xlslice_v1_0_2 riviera/xlslice_v1_0_2
vmap axi_vip_v1_1_13 riviera/axi_vip_v1_1_13
vmap zynq_ultra_ps_e_vip_v1_0_13 riviera/zynq_ultra_ps_e_vip_v1_0_13
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 riviera/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 riviera/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 riviera/c_addsub_v12_0_14
vmap c_gate_bit_v12_0_6 riviera/c_gate_bit_v12_0_6
vmap xbip_counter_v3_0_6 riviera/xbip_counter_v3_0_6
vmap c_counter_binary_v12_0_15 riviera/c_counter_binary_v12_0_15
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_16 riviera/lib_fifo_v1_0_16
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_29 riviera/axi_datamover_v5_1_29
vmap axi_sg_v4_1_15 riviera/axi_sg_v4_1_15
vmap axi_dma_v7_1_28 riviera/axi_dma_v7_1_28
vmap axi_protocol_converter_v2_1_27 riviera/axi_protocol_converter_v2_1_27
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap smartconnect_v1_0 riviera/smartconnect_v1_0

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

vlog -work xpm  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_17 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/802b/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/kria_bd/ip/kria_bd_axi_intc_0_0/sim/kria_bd_axi_intc_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_clk_wiz_0_0/kria_bd_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/kria_bd/ip/kria_bd_clk_wiz_0_0/kria_bd_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/kria_bd/ip/kria_bd_proc_sys_reset_1_0/sim/kria_bd_proc_sys_reset_1_0.vhd" \
"../../../bd/kria_bd/ip/kria_bd_proc_sys_reset_2_0/sim/kria_bd_proc_sys_reset_2_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_xbar_0/sim/kria_bd_xbar_0.v" \

vcom -work interrupt_control_v3_1_4 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_29 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/6219/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/kria_bd/ip/kria_bd_uf_leds_0/sim/kria_bd_uf_leds_0.vhd" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_xlconcat_0_0/sim/kria_bd_xlconcat_0_0.v" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_xlslice_0_0/sim/kria_bd_xlslice_0_0.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_13  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_zynq_ultra_ps_e_0_0/sim/kria_bd_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work xbip_utils_v3_0_10 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_6 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7161/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_6 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/9ac8/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_15 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/e1e1/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/kria_bd/ip/kria_bd_c_counter_binary_0_0/sim/kria_bd_c_counter_binary_0_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_16 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_29 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/2237/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_15 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_28 -93  \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/70c4/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/kria_bd/ip/kria_bd_axi_dma_0_0/sim/kria_bd_axi_dma_0_0.vhd" \
"../../../bd/kria_bd/ipshared/bf4f/hdl/IP_PersonalFifo_v1_0_M00_AXIS.vhd" \
"../../../bd/kria_bd/ipshared/bf4f/hdl/IP_PersonalFifo_v1_0.vhd" \
"../../../bd/kria_bd/ip/kria_bd_IP_PersonalFifo_0_0/sim/kria_bd_IP_PersonalFifo_0_0.vhd" \
"../../../bd/kria_bd/sim/kria_bd.vhd" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_auto_pc_0/sim/kria_bd_auto_pc_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_0/bd_0/ip/ip_0/sim/bd_5ac1_one_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_0/bd_0/ip/ip_1/sim/bd_5ac1_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/be1f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_0/bd_0/ip/ip_2/sim/bd_5ac1_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_0/bd_0/ip/ip_3/sim/bd_5ac1_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/637d/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_0/bd_0/ip/ip_4/sim/bd_5ac1_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_0/bd_0/ip/ip_5/sim/bd_5ac1_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_0/bd_0/ip/ip_6/sim/bd_5ac1_sawn_0.sv" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_0/bd_0/ip/ip_7/sim/bd_5ac1_swn_0.sv" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_0/bd_0/ip/ip_8/sim/bd_5ac1_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_0/bd_0/ip/ip_9/sim/bd_5ac1_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_0/bd_0/ip/ip_10/sim/bd_5ac1_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_0/bd_0/sim/bd_5ac1.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/7698" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/abef/hdl" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_AxiDMA.gen/sources_1/bd/kria_bd/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_0/sim/kria_bd_axi_smc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

