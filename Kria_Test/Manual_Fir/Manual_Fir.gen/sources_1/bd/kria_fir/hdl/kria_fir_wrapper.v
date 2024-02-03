//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sat Feb  3 18:27:01 2024
//Host        : fabiancastano running 64-bit major release  (build 9200)
//Command     : generate_target kria_fir_wrapper.bd
//Design      : kria_fir_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module kria_fir_wrapper
   (ap_clk,
    ap_rst,
    ap_start,
    x_0,
    y_0);
  input ap_clk;
  input ap_rst;
  input ap_start;
  input [31:0]x_0;
  output [31:0]y_0;

  wire ap_clk;
  wire ap_rst;
  wire ap_start;
  wire [31:0]x_0;
  wire [31:0]y_0;

  kria_fir kria_fir_i
       (.ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .x_0(x_0),
        .y_0(y_0));
endmodule
