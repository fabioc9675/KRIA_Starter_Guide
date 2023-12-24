--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Fri Dec 22 17:37:48 2023
--Host        : fabiancastano running 64-bit major release  (build 9200)
--Command     : generate_target design_leds_wrapper.bd
--Design      : design_leds_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_leds_wrapper is
  port (
    LED_OUT_0 : out STD_LOGIC;
    LED_OUT_1 : out STD_LOGIC;
    PUL_IN_0 : in STD_LOGIC;
    PUL_IN_1 : in STD_LOGIC;
    fan_en_b : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_leds_wrapper;

architecture STRUCTURE of design_leds_wrapper is
  component design_leds is
  port (
    PUL_IN_0 : in STD_LOGIC;
    LED_OUT_0 : out STD_LOGIC;
    PUL_IN_1 : in STD_LOGIC;
    LED_OUT_1 : out STD_LOGIC;
    fan_en_b : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_leds;
begin
design_leds_i: component design_leds
     port map (
      LED_OUT_0 => LED_OUT_0,
      LED_OUT_1 => LED_OUT_1,
      PUL_IN_0 => PUL_IN_0,
      PUL_IN_1 => PUL_IN_1,
      fan_en_b(0) => fan_en_b(0)
    );
end STRUCTURE;
