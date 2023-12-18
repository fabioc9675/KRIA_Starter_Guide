-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Dec  8 11:07:30 2023
-- Host        : fabian-VirtualBox running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/fabian/GitHub/KRIA_Starter_Guide/Kria_Test/Tutorial00_Leds/Tutorial00_Leds.gen/sources_1/bd/design_led/ip/design_led_Leds_test_0_0/design_led_Leds_test_0_0_stub.vhdl
-- Design      : design_led_Leds_test_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_led_Leds_test_0_0 is
  Port ( 
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    puls : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_led_Leds_test_0_0;

architecture stub of design_led_Leds_test_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "leds[3:0],puls[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Leds_test,Vivado 2022.2";
begin
end;
