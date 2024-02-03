//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sat Feb  3 18:27:01 2024
//Host        : fabiancastano running 64-bit major release  (build 9200)
//Command     : generate_target kria_fir.bd
//Design      : kria_fir
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "kria_fir,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=kria_fir,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "kria_fir.hwdef" *) 
module kria_fir
   (ap_clk,
    ap_rst,
    ap_start,
    x_0,
    y_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN kria_fir_ap_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst;
  input ap_start;
  input [31:0]x_0;
  output [31:0]y_0;

  wire ap_clk_0_1;
  wire ap_rst_0_1;
  wire ap_start_0_1;
  wire [31:0]fir_fab_0_y;
  wire [31:0]x_0_0_1;

  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_0_1 = ap_rst;
  assign ap_start_0_1 = ap_start;
  assign x_0_0_1 = x_0[31:0];
  assign y_0[31:0] = fir_fab_0_y;
  kria_fir_fir_fab_0_0 fir_fab_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst(ap_rst_0_1),
        .ap_start(ap_start_0_1),
        .x(x_0_0_1),
        .y(fir_fab_0_y));
endmodule
