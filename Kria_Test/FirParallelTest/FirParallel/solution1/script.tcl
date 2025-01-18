############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FirParallel
set_top fir
add_files firTop.h
add_files firTop.cpp
add_files firCoeff.h
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default
config_export -description {Fir Filter Parallel} -display_name fir_parallel -format ip_catalog -library FirFab -output C:/GitHub/KRIA_Starter_Guide/Kria_Test/FirParallelTest/Fir_Parallel_Vivado -rtl verilog -taxonomy fir_parallel -vendor FabianCastano -version 1.0
source "./FirParallel/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -output C:/GitHub/KRIA_Starter_Guide/Kria_Test/FirParallelTest/Fir_Parallel_Vivado
