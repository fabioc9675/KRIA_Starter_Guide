vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_13
vlib questa_lib/msim/processing_system7_vip_v1_0_15
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_27

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 questa_lib/msim/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 questa_lib/msim/processing_system7_vip_v1_0_15
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_27 questa_lib/msim/axi_register_slice_v2_1_27

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_processing_system7_0_0/sim/pynq_bd_processing_system7_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_rgb_0_0/sim/pynq_bd_rgb_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_leds_0_0/sim/pynq_bd_leds_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_2/pynq_bd_xadc_wiz_0_2.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_fir_fab_0_0/sim/pynq_bd_fir_fab_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_trapz_klm_0_0/sim/pynq_bd_trapz_klm_0_0.vhd" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
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

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/sim/bd_48aa.v" \

vlog -work xlconstant_v1_1_7  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_0/sim/bd_48aa_one_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_1/sim/bd_48aa_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
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

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_12/sim/bd_48aa_arni_0.sv" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_13/sim/bd_48aa_rni_0.sv" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_14/sim/bd_48aa_awni_0.sv" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_15/sim/bd_48aa_wni_0.sv" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_16/sim/bd_48aa_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/be1f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_17/sim/bd_48aa_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_18/sim/bd_48aa_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/637d/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_19/sim/bd_48aa_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_20/sim/bd_48aa_s00a2s_0.sv" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_21/sim/bd_48aa_sarn_0.sv" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_22/sim/bd_48aa_srn_0.sv" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_23/sim/bd_48aa_sawn_0.sv" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_24/sim/bd_48aa_swn_0.sv" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_25/sim/bd_48aa_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_26/sim/bd_48aa_m01s2a_0.sv" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_27/sim/bd_48aa_m01arn_0.sv" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_28/sim/bd_48aa_m01rn_0.sv" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_29/sim/bd_48aa_m01awn_0.sv" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_30/sim/bd_48aa_m01wn_0.sv" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_31/sim/bd_48aa_m01bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/bd_0/ip/ip_32/sim/bd_48aa_m01e_0.sv" \

vlog -work axi_register_slice_v2_1_27  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../XadcFirTrap_Fifo.gen/sources_1/bd/pynq_bd/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_smc_0/sim/pynq_bd_axi_smc_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_rst_ps7_0_100M_1/sim/pynq_bd_rst_ps7_0_100M_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

