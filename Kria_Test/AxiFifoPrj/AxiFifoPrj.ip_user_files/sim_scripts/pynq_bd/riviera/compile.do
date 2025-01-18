vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_13
vlib riviera/processing_system7_vip_v1_0_15
vlib riviera/xil_defaultlib
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_2_7
vlib riviera/lib_fifo_v1_0_16
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/lib_cdc_v1_0_2
vlib riviera/axi_datamover_v5_1_29
vlib riviera/axi_sg_v4_1_15
vlib riviera/axi_dma_v7_1_28
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
vlib riviera/xlconstant_v1_1_7
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_27
vlib riviera/axi_data_fifo_v2_1_26
vlib riviera/axi_crossbar_v2_1_28
vlib riviera/axi_protocol_converter_v2_1_27
vlib riviera/axi_clock_converter_v2_1_26
vlib riviera/blk_mem_gen_v8_4_5
vlib riviera/axi_dwidth_converter_v2_1_27

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 riviera/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 riviera/processing_system7_vip_v1_0_15
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap lib_fifo_v1_0_16 riviera/lib_fifo_v1_0_16
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_29 riviera/axi_datamover_v5_1_29
vmap axi_sg_v4_1_15 riviera/axi_sg_v4_1_15
vmap axi_dma_v7_1_28 riviera/axi_dma_v7_1_28
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
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_27 riviera/axi_register_slice_v2_1_27
vmap axi_data_fifo_v2_1_26 riviera/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 riviera/axi_crossbar_v2_1_28
vmap axi_protocol_converter_v2_1_27 riviera/axi_protocol_converter_v2_1_27
vmap axi_clock_converter_v2_1_26 riviera/axi_clock_converter_v2_1_26
vmap blk_mem_gen_v8_4_5 riviera/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_27 riviera/axi_dwidth_converter_v2_1_27

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

vlog -work xpm  -sv2k12 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -sv2k12 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_processing_system7_0_0/sim/pynq_bd_processing_system7_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_16 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_29 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/2237/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_15 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_28 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/70c4/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_axi_dma_0_0/sim/pynq_bd_axi_dma_0_0.vhd" \

vcom -work xbip_utils_v3_0_10 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_6 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/7161/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_6 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/9ac8/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_15 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/e1e1/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_c_counter_binary_0_0/sim/pynq_bd_c_counter_binary_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_fifo_generator_0_0/sim/pynq_bd_fifo_generator_0_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xlconstant_0_0/sim/pynq_bd_xlconstant_0_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_rst_ps7_0_100M_0/sim/pynq_bd_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xbar_0/sim/pynq_bd_xbar_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/sim/pynq_bd.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xbar_1/sim/pynq_bd_xbar_1.v" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_pc_0/sim/pynq_bd_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_26  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/b8be/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_27  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/4675/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../AxiFifoPrj.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_us_0/sim/pynq_bd_auto_us_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_us_1/sim/pynq_bd_auto_us_1.v" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_pc_1/sim/pynq_bd_auto_pc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

