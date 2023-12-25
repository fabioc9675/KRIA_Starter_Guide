--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Mon Dec 25 11:05:00 2023
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
    LED_OUT : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PUL_IN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    fan_en_b : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_leds_wrapper;

architecture STRUCTURE of design_leds_wrapper is
  component design_leds is
  port (
    fan_en_b : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_OUT : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PUL_IN : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_leds;
begin
design_leds_i: component design_leds
     port map (
      LED_OUT(3 downto 0) => LED_OUT(3 downto 0),
      PUL_IN(3 downto 0) => PUL_IN(3 downto 0),
      fan_en_b(0) => fan_en_b(0)
    );
end STRUCTURE;
