//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Fri Oct 14 13:16:31 2022
//Host        : xcosswbld07 running 64-bit Ubuntu 18.04.5 LTS
//Command     : generate_target kr260_starter_kit_wrapper.bd
//Design      : kr260_starter_kit_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module kr260_starter_kit_wrapper
   (fan_en_b);
  output [0:0]fan_en_b;

  wire [0:0]fan_en_b;

  kr260_starter_kit kr260_starter_kit_i
       (.fan_en_b(fan_en_b));
endmodule
