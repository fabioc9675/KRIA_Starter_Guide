//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Fri Dec  8 11:06:38 2023
//Host        : fabian-VirtualBox running 64-bit Ubuntu 22.04.2 LTS
//Command     : generate_target design_led.bd
//Design      : design_led
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_led,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_led,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_led.hwdef" *) 
module design_led
   (leds,
    puls);
  output [3:0]leds;
  input [3:0]puls;

  wire [3:0]Leds_test_0_leds;
  wire [3:0]puls_0_1;

  assign leds[3:0] = Leds_test_0_leds;
  assign puls_0_1 = puls[3:0];
  design_led_Leds_test_0_0 Leds_test_0
       (.leds(Leds_test_0_leds),
        .puls(puls_0_1));
endmodule
