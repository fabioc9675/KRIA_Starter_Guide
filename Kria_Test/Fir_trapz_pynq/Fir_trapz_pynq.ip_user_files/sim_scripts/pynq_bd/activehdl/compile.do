vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_13
vlib activehdl/processing_system7_vip_v1_0_15
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/axis_register_slice_v1_1_27
vlib activehdl/axis_subset_converter_v1_1_27
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_27
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/axi_data_fifo_v2_1_26
vlib activehdl/axi_crossbar_v2_1_28
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_fifo_v1_0_16
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_datamover_v5_1_29
vlib activehdl/axi_sg_v4_1_15
vlib activehdl/axi_dma_v7_1_28
vlib activehdl/axi_protocol_converter_v2_1_27
vlib activehdl/axi_clock_converter_v2_1_26
vlib activehdl/blk_mem_gen_v8_4_5
vlib activehdl/axi_dwidth_converter_v2_1_27

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 activehdl/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 activehdl/processing_system7_vip_v1_0_15
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_27 activehdl/axis_register_slice_v1_1_27
vmap axis_subset_converter_v1_1_27 activehdl/axis_subset_converter_v1_1_27
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_27 activehdl/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 activehdl/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 activehdl/axi_crossbar_v2_1_28
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_16 activehdl/lib_fifo_v1_0_16
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_29 activehdl/axi_datamover_v5_1_29
vmap axi_sg_v4_1_15 activehdl/axi_sg_v4_1_15
vmap axi_dma_v7_1_28 activehdl/axi_dma_v7_1_28
vmap axi_protocol_converter_v2_1_27 activehdl/axi_protocol_converter_v2_1_27
vmap axi_clock_converter_v2_1_26 activehdl/axi_clock_converter_v2_1_26
vmap blk_mem_gen_v8_4_5 activehdl/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_27 activehdl/axi_dwidth_converter_v2_1_27

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

vlog -work xpm  -sv2k12 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/sim/pynq_bd.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -sv2k12 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_processing_system7_0_1/sim/pynq_bd_processing_system7_0_1.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/pynq_bd_xadc_wiz_0_1_conv_funs_pkg.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/pynq_bd_xadc_wiz_0_1_proc_common_pkg.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/pynq_bd_xadc_wiz_0_1_ipif_pkg.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/pynq_bd_xadc_wiz_0_1_family_support.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/pynq_bd_xadc_wiz_0_1_family.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/pynq_bd_xadc_wiz_0_1_soft_reset.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/pynq_bd_xadc_wiz_0_1_pselect_f.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/axi_lite_ipif_v1_01_a/hdl/src/vhdl/pynq_bd_xadc_wiz_0_1_address_decoder.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/axi_lite_ipif_v1_01_a/hdl/src/vhdl/pynq_bd_xadc_wiz_0_1_slave_attachment.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/interrupt_control_v2_01_a/hdl/src/vhdl/pynq_bd_xadc_wiz_0_1_interrupt_control.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/axi_lite_ipif_v1_01_a/hdl/src/vhdl/pynq_bd_xadc_wiz_0_1_axi_lite_ipif.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/pynq_bd_xadc_wiz_0_1_drp_arbiter.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/pynq_bd_xadc_wiz_0_1_drp_to_axi_stream.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/pynq_bd_xadc_wiz_0_1_xadc_core_drp.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/pynq_bd_xadc_wiz_0_1_axi_xadc.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/pynq_bd_xadc_wiz_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_27  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/6ba3/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/hdl/tdata_pynq_bd_axis_subset_converter_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/hdl/tuser_pynq_bd_axis_subset_converter_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/hdl/tstrb_pynq_bd_axis_subset_converter_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/hdl/tkeep_pynq_bd_axis_subset_converter_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/hdl/tid_pynq_bd_axis_subset_converter_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/hdl/tdest_pynq_bd_axis_subset_converter_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/hdl/tlast_pynq_bd_axis_subset_converter_0_0.v" \

vlog -work axis_subset_converter_v1_1_27  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/40cb/hdl/axis_subset_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/hdl/top_pynq_bd_axis_subset_converter_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/sim/pynq_bd_axis_subset_converter_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xbar_1/sim/pynq_bd_xbar_1.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_rst_ps7_0_100M_0/sim/pynq_bd_rst_ps7_0_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93  \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_16 -93  \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93  \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_29 -93  \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/2237/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_15 -93  \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_28 -93  \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/70c4/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_axi_dma_0/sim/pynq_bd_axi_dma_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xbar_0/sim/pynq_bd_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_pc_1/sim/pynq_bd_auto_pc_1.v" \

vlog -work axi_clock_converter_v2_1_26  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/b8be/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_27  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/4675/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_us_0/sim/pynq_bd_auto_us_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_pc_2/sim/pynq_bd_auto_pc_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

