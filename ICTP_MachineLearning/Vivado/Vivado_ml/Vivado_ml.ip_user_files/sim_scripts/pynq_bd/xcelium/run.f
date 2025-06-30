-makelib xcelium_lib/xilinx_vip -sv \
  "D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_13 -sv \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_15 -sv \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_processing_system7_0_0/sim/pynq_bd_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ipshared/7b64/hdl/axil.vhdl" \
  "../../../bd/pynq_bd/ipshared/7b64/hdl/axif.vhdl" \
  "../../../bd/pynq_bd/ipshared/7b64/hdl/tdpram.vhdl" \
  "../../../bd/pynq_bd/ipshared/7b64/hdl/graysync.vhdl" \
  "../../../bd/pynq_bd/ipshared/7b64/hdl/fifo.vhdl" \
  "../../../bd/pynq_bd/ipshared/7b64/hdl/comblock.vhdl" \
  "../../../bd/pynq_bd/ipshared/7b64/hdl/axi_comblock.vhdl" \
  "../../../bd/pynq_bd/ip/pynq_bd_comblock_0_0/sim/pynq_bd_comblock_0_0.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_rst_ps7_0_100M_0/sim/pynq_bd_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_xlconstant_0_0/sim/pynq_bd_xlconstant_0_0.v" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_6 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_multadd_v3_0_6 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_6 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_18 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_1_15 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/22f8/hdl/floating_point_v7_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_1_15 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/22f8/hdl/floating_point_v7_1_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/5218/hdl/ip/GN_inference_dcmp_64ns_64ns_1_2_no_dsp_1_ip.v" \
  "../../../bd/pynq_bd/ip/pynq_bd_GN_inference_0_0/sim/pynq_bd_GN_inference_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_26 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_27 \
  "../../../../Vivado_ml.gen/sources_1/bd/pynq_bd/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_auto_pc_0/sim/pynq_bd_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/sim/pynq_bd.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

