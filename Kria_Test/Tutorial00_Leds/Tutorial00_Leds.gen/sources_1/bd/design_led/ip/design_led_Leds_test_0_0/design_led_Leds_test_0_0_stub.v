// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Dec  8 11:07:30 2023
// Host        : fabian-VirtualBox running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fabian/GitHub/KRIA_Starter_Guide/Kria_Test/Tutorial00_Leds/Tutorial00_Leds.gen/sources_1/bd/design_led/ip/design_led_Leds_test_0_0/design_led_Leds_test_0_0_stub.v
// Design      : design_led_Leds_test_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Leds_test,Vivado 2022.2" *)
module design_led_Leds_test_0_0(leds, puls)
/* synthesis syn_black_box black_box_pad_pin="leds[3:0],puls[3:0]" */;
  output [3:0]leds;
  input [3:0]puls;
endmodule
