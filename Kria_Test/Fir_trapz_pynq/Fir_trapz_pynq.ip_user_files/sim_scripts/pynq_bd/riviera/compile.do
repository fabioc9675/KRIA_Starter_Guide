vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_13
vlib riviera/processing_system7_vip_v1_0_15

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 riviera/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 riviera/processing_system7_vip_v1_0_15

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

vlog -work xpm  -sv2k12 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_1/pynq_bd_xadc_wiz_0_1.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_leds_0_0/sim/pynq_bd_leds_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -sv2k12 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Fir_trapz_pynq.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_processing_system7_0_0/sim/pynq_bd_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_rgb_0_0/sim/pynq_bd_rgb_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_ila_0_0/sim/pynq_bd_ila_0_0.vhd" \
"../../../bd/pynq_bd/sim/pynq_bd.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

