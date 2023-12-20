//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Fri Oct 14 13:16:36 2022
//Host        : xcosswbld07 running 64-bit Ubuntu 18.04.5 LTS
//Command     : generate_target kr260_starter_kit.bd
//Design      : kr260_starter_kit
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "kr260_starter_kit,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=kr260_starter_kit,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_zynq_ultra_ps_e_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "kr260_starter_kit.hwdef" *) 
module kr260_starter_kit
   (fan_en_b);
  output [0:0]fan_en_b;

  wire [0:0]xlslice_0_Dout;
  wire [2:0]zynq_ultra_ps_e_0_emio_ttc0_wave_o;

  assign fan_en_b[0] = xlslice_0_Dout;
  kr260_starter_kit_xlslice_0_0 xlslice_0
       (.Din(zynq_ultra_ps_e_0_emio_ttc0_wave_o),
        .Dout(xlslice_0_Dout));
  kr260_starter_kit_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.emio_ttc0_wave_o(zynq_ultra_ps_e_0_emio_ttc0_wave_o),
        .pl_ps_irq0(1'b0));
endmodule
