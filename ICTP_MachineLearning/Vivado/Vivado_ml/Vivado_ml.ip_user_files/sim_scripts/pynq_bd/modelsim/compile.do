vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_13
vlib modelsim_lib/msim/processing_system7_vip_v1_0_15
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/axi_utils_v2_0_6
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib modelsim_lib/msim/xbip_bram18k_v3_0_6
vlib modelsim_lib/msim/mult_gen_v12_0_18
vlib modelsim_lib/msim/floating_point_v7_1_15
vlib modelsim_lib/msim/xlslice_v1_0_2
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
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 modelsim_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 modelsim_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 modelsim_lib/msim/mult_gen_v12_0_18
vmap floating_point_v7_1_15 modelsim_lib/msim/floating_point_v7_1_15
vmap xlslice_v1_0_2 modelsim_lib/msim/xlslice_v1_0_2
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

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_processing_system7_0_0/sim/pynq_bd_processing_system7_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ipshared/7b64/hdl/axil.vhdl" \
"../../../bd/pynq_bd/ipshared/7b64/hdl/axif.vhdl" \
"../../../bd/pynq_bd/ipshared/7b64/hdl/tdpram.vhdl" \
"../../../bd/pynq_bd/ipshared/7b64/hdl/graysync.vhdl" \
"../../../bd/pynq_bd/ipshared/7b64/hdl/fifo.vhdl" \
"../../../bd/pynq_bd/ipshared/7b64/hdl/comblock.vhdl" \
"../../../bd/pynq_bd/ipshared/7b64/hdl/axi_comblock.vhdl" \
"../../../bd/pynq_bd/ip/pynq_bd_comblock_0_0/sim/pynq_bd_comblock_0_0.vhd" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_rst_ps7_0_100M_0/sim/pynq_bd_rst_ps7_0_100M_0.vhd" \

vcom -work xbip_utils_v3_0_10  -93  \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6  -93  \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6  -93  \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4  -93  \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6  -93  \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6  -93  \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6  -93  \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18  -93  \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15  -93  \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/22f8/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15  -incr -mfcu  "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/22f8/hdl/floating_point_v7_1_rfs.v" \

vcom -work xil_defaultlib  -93  \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_dcmp_64ns_64ns_1_2_no_dsp_1.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_dense_latency_ap_fixed_8_4_5_3_0_ap_fixed_8_4_5_3_0_config5_s.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_dense_latency_ap_fixed_8_4_5_3_0_ap_fixed_8_4_5_3_0_config8_s.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_dense_latency_ap_fixed_8_4_5_3_0_ap_fixed_8_4_5_3_0_config11_s.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_dense_latency_ap_fixed_8_4_5_3_0_ap_fixed_8_4_5_3_0_config14_s.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_dense_latency_ap_fixed_8_4_5_3_0_ap_fixed_8_4_5_3_0_config17_s.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_8_4_5_3_0_config2_s.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_mul_8s_6s_10_1_1.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_mul_8s_7ns_11_1_0.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_mul_8s_7s_11_1_1.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_mul_8s_10ns_17_1_1.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_mul_16s_5ns_17_1_0.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_mul_16s_5s_17_1_0.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_mul_16s_6ns_17_1_0.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_mul_16s_6s_17_1_0.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_mul_16s_7ns_17_1_0.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_mul_16s_7s_17_1_0.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_regslice_both.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_sigmoid_ap_fixed_8_4_5_3_0_ap_fixed_8_4_5_3_0_sigmoid_config19_s.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference_sigmoid_ap_fixed_8_4_5_3_0_ap_fixed_8_4_5_3_0_sigmoid_config19_s_sigmoid_tablbkb.vhd" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/vhdl/GN_inference.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/ip/GN_inference_dcmp_64ns_64ns_1_2_no_dsp_1_ip.v" \
"../../../bd/pynq_bd/ip/pynq_bd_GN_inference_0_0/sim/pynq_bd_GN_inference_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/sim/pynq_bd.vhd" \

vlog -work xlslice_v1_0_2  -incr -mfcu  "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xlslice_0_0/sim/pynq_bd_xlslice_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_leds_reg_0_0/sim/pynq_bd_leds_reg_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93  \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -incr -mfcu  "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -incr -mfcu  "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_27  -incr -mfcu  "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_pc_0/sim/pynq_bd_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

