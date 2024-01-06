############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FirFab
set_top fir
add_files src/firCoeff.h
add_files src/firTop.cpp
add_files src/firTop.h
open_solution "solFirFab" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default
config_export -description FirFilter -display_name FirFab -format ip_catalog -output D:/Users/FirFabianTest/VitisHLS -rtl verilog -vendor Fabian -version 1.0
source "./FirFab/solFirFab/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -output D:/Users/FirFabianTest/VitisHLS
