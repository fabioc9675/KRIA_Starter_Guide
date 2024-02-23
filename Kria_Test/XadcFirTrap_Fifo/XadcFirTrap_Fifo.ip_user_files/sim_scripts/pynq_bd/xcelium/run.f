-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_13 -sv \
  "../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_15 -sv \
  "../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_processing_system7_0_0/sim/pynq_bd_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_rgb_0_0/sim/pynq_bd_rgb_0_0.vhd" \
  "../../../bd/pynq_bd/ip/pynq_bd_leds_0_0/sim/pynq_bd_leds_0_0.vhd" \
  "../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_2/pynq_bd_xadc_wiz_0_2.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_fir_fab_0_0/sim/pynq_bd_fir_fab_0_0.vhd" \
  "../../../bd/pynq_bd/ip/pynq_bd_trapz_klm_0_0/sim/pynq_bd_trapz_klm_0_0.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_proc_sys_reset_0_0/sim/pynq_bd_proc_sys_reset_0_0.vhd" \
  "../../../bd/pynq_bd/ip/pynq_bd_clock_div_0_0/sim/pynq_bd_clock_div_0_0.vhd" \
  "../../../bd/pynq_bd/sim/pynq_bd.vhd" \
  "../../../bd/pynq_bd/ipshared/7b64/hdl/axil.vhdl" \
  "../../../bd/pynq_bd/ipshared/7b64/hdl/axif.vhdl" \
  "../../../bd/pynq_bd/ipshared/7b64/hdl/tdpram.vhdl" \
  "../../../bd/pynq_bd/ipshared/7b64/hdl/graysync.vhdl" \
  "../../../bd/pynq_bd/ipshared/7b64/hdl/fifo.vhdl" \
  "../../../bd/pynq_bd/ipshared/7b64/hdl/comblock.vhdl" \
  "../../../bd/pynq_bd/ipshared/7b64/hdl/axi_comblock.vhdl" \
  "../../../bd/pynq_bd/ip/pynq_bd_comblock_0_0/sim/pynq_bd_comblock_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/sim/bd_48aa.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_0/sim/bd_48aa_one_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_1/sim/bd_48aa_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_2/sim/bd_48aa_arinsw_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_3/sim/bd_48aa_rinsw_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_4/sim/bd_48aa_awinsw_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_5/sim/bd_48aa_winsw_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_6/sim/bd_48aa_binsw_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_7/sim/bd_48aa_aroutsw_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_8/sim/bd_48aa_routsw_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_9/sim/bd_48aa_awoutsw_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_10/sim/bd_48aa_woutsw_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_11/sim/bd_48aa_boutsw_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_12/sim/bd_48aa_arni_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_13/sim/bd_48aa_rni_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_14/sim/bd_48aa_awni_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_15/sim/bd_48aa_wni_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_16/sim/bd_48aa_bni_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/be1f/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_17/sim/bd_48aa_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_18/sim/bd_48aa_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/637d/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_19/sim/bd_48aa_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_20/sim/bd_48aa_s00a2s_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_21/sim/bd_48aa_sarn_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_22/sim/bd_48aa_srn_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_23/sim/bd_48aa_sawn_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_24/sim/bd_48aa_swn_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_25/sim/bd_48aa_sbn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_26/sim/bd_48aa_m01s2a_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_27/sim/bd_48aa_m01arn_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_28/sim/bd_48aa_m01rn_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_29/sim/bd_48aa_m01awn_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_30/sim/bd_48aa_m01wn_0.sv" \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_31/sim/bd_48aa_m01bn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_32/sim/bd_48aa_m01e_0.sv" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/sim/pynq_bd_axi_smc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_rst_ps7_0_100M_1/sim/pynq_bd_rst_ps7_0_100M_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

