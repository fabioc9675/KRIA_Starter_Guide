vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_13
vlib questa_lib/msim/processing_system7_vip_v1_0_15
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axis_infrastructure_v1_1_0
vlib questa_lib/msim/axis_register_slice_v1_1_27
vlib questa_lib/msim/axis_subset_converter_v1_1_27
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/fifo_generator_v13_2_7
vlib questa_lib/msim/lib_fifo_v1_0_16
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_29
vlib questa_lib/msim/axi_sg_v4_1_15
vlib questa_lib/msim/axi_dma_v7_1_28
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_27
vlib questa_lib/msim/axi_data_fifo_v2_1_26
vlib questa_lib/msim/axi_crossbar_v2_1_28
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/axi_intc_v4_1_17
vlib questa_lib/msim/axi_protocol_converter_v2_1_27
vlib questa_lib/msim/axi_clock_converter_v2_1_26
vlib questa_lib/msim/blk_mem_gen_v8_4_5
vlib questa_lib/msim/axi_dwidth_converter_v2_1_27

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 questa_lib/msim/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 questa_lib/msim/processing_system7_vip_v1_0_15
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axis_infrastructure_v1_1_0 questa_lib/msim/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_27 questa_lib/msim/axis_register_slice_v1_1_27
vmap axis_subset_converter_v1_1_27 questa_lib/msim/axis_subset_converter_v1_1_27
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_7 questa_lib/msim/fifo_generator_v13_2_7
vmap lib_fifo_v1_0_16 questa_lib/msim/lib_fifo_v1_0_16
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_29 questa_lib/msim/axi_datamover_v5_1_29
vmap axi_sg_v4_1_15 questa_lib/msim/axi_sg_v4_1_15
vmap axi_dma_v7_1_28 questa_lib/msim/axi_dma_v7_1_28
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_27 questa_lib/msim/axi_register_slice_v2_1_27
vmap axi_data_fifo_v2_1_26 questa_lib/msim/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 questa_lib/msim/axi_crossbar_v2_1_28
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_17 questa_lib/msim/axi_intc_v4_1_17
vmap axi_protocol_converter_v2_1_27 questa_lib/msim/axi_protocol_converter_v2_1_27
vmap axi_clock_converter_v2_1_26 questa_lib/msim/axi_clock_converter_v2_1_26
vmap blk_mem_gen_v8_4_5 questa_lib/msim/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_27 questa_lib/msim/axi_dwidth_converter_v2_1_27

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_processing_system7_0_0/sim/pynq_bd_processing_system7_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_0/pynq_bd_xadc_wiz_0_0_drp_arbiter.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_0/pynq_bd_xadc_wiz_0_0_drp_to_axi_stream.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_0/pynq_bd_xadc_wiz_0_0_xadc_core_drp.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_0/pynq_bd_xadc_wiz_0_0_axi_xadc.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_0/pynq_bd_xadc_wiz_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0.v" \

vlog -work axis_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_27  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/6ba3/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/hdl/tdata_pynq_bd_axis_subset_converter_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/hdl/tuser_pynq_bd_axis_subset_converter_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/hdl/tstrb_pynq_bd_axis_subset_converter_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/hdl/tkeep_pynq_bd_axis_subset_converter_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/hdl/tid_pynq_bd_axis_subset_converter_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/hdl/tdest_pynq_bd_axis_subset_converter_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/hdl/tlast_pynq_bd_axis_subset_converter_0_0.v" \

vlog -work axis_subset_converter_v1_1_27  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/40cb/hdl/axis_subset_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/hdl/top_pynq_bd_axis_subset_converter_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_axis_subset_converter_0_0/sim/pynq_bd_axis_subset_converter_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_rst_clk_wiz_0_104M_0/sim/pynq_bd_rst_clk_wiz_0_104M_0.vhd" \

vcom -work lib_pkg_v1_0_2  -93  \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93  \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_16  -93  \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93  \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_29  -93  \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/2237/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_15  -93  \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_28  -93  \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/70c4/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_axi_dma_1/sim/pynq_bd_axi_dma_1.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_rst_ps7_0_100M_1/sim/pynq_bd_rst_ps7_0_100M_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_leds_0_0/sim/pynq_bd_leds_0_0.v" \
"../../../bd/pynq_bd/sim/pynq_bd.v" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xbar_0/sim/pynq_bd_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_17  -93  \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/802b/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_axi_intc_0_0/sim/pynq_bd_axi_intc_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_27  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_pc_0/sim/pynq_bd_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_26  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/b8be/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_27  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/4675/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XADC_DMA_PYNQ.gen/sources_1/bd/pynq_bd/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_us_0/sim/pynq_bd_auto_us_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_pc_1/sim/pynq_bd_auto_pc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"
