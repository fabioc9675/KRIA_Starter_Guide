############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project myproject_prj
set_top GN_inference
add_files firmware/myproject.cpp -cflags "-std=c++0x"
add_files -tb myproject_test.cpp -cflags "-std=c++0x -DRTL_SIM -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb tb_data -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb firmware/weights -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_schedule -enable_dsp_full_reg=0
config_export -display_name GN_inference
set_clock_uncertainty 12.5%
#source "./myproject_prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -setup -trace_level all
export_design -rtl verilog -format ip_catalog
