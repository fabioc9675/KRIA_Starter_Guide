vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_13
vlib modelsim_lib/msim/processing_system7_vip_v1_0_15

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 modelsim_lib/msim/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 modelsim_lib/msim/processing_system7_vip_v1_0_15

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

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/pynq_bd_xadc_wiz_0_1.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_leds_0_0/sim/pynq_bd_leds_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_processing_system7_0_0/sim/pynq_bd_processing_system7_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_rgb_0_0/sim/pynq_bd_rgb_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_ila_0_0/sim/pynq_bd_ila_0_0.vhd" \
"../../../bd/pynq_bd/sim/pynq_bd.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

