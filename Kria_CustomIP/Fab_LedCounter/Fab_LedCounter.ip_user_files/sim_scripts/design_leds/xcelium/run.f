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
  "../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_13 -sv \
  "../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/zynq_ultra_ps_e_vip_v1_0_13 -sv \
  "../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/abef/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_leds/ip/design_leds_zynq_ultra_ps_e_0_0/sim/design_leds_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
  "../../../bd/design_leds/ip/design_leds_clk_wiz_0_0/design_leds_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/design_leds/ip/design_leds_clk_wiz_0_0/design_leds_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_leds/ip/design_leds_proc_sys_reset_0_0/sim/design_leds_proc_sys_reset_0_0.vhd" \
  "../../../bd/design_leds/ip/design_leds_proc_sys_reset_1_0/sim/design_leds_proc_sys_reset_1_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_26 \
  "../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_28 \
  "../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_leds/ip/design_leds_xbar_0/sim/design_leds_xbar_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_intc_v4_1_17 \
  "../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/802b/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_leds/ip/design_leds_axi_intc_0_1/sim/design_leds_axi_intc_0_1.vhd" \
-endlib
-makelib xcelium_lib/xlslice_v1_0_2 \
  "../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_leds/ip/design_leds_xlslice_0_0/sim/design_leds_xlslice_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_leds/ipshared/6eb3/hdl/Fab_Led_IP_v1_0_S00_AXI.vhd" \
  "../../../bd/design_leds/ipshared/6eb3/src/Led_4count.vhd" \
  "../../../bd/design_leds/ipshared/6eb3/src/Led_Bouncing.vhd" \
  "../../../bd/design_leds/ipshared/6eb3/src/Led_Full.vhd" \
  "../../../bd/design_leds/ipshared/6eb3/src/Led_Logic.vhd" \
  "../../../bd/design_leds/ipshared/6eb3/hdl/Fab_Led_IP_v1_0.vhd" \
  "../../../bd/design_leds/ip/design_leds_Fab_Led_IP_0_6/sim/design_leds_Fab_Led_IP_0_6.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_27 \
  "../../../../Fab_LedCounter.gen/sources_1/bd/design_leds/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_leds/ip/design_leds_auto_pc_0/sim/design_leds_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_leds/sim/design_leds.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

