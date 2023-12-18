//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Fri Dec  8 11:06:38 2023
//Host        : fabian-VirtualBox running 64-bit Ubuntu 22.04.2 LTS
//Command     : generate_target design_led_wrapper.bd
//Design      : design_led_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_led_wrapper
   (leds,
    puls);
  output [3:0]leds;
  input [3:0]puls;

  wire [3:0]leds;
  wire [3:0]puls;

  design_led design_led_i
       (.leds(leds),
        .puls(puls));
endmodule
