--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
--Date        : Thu Dec 21 21:33:01 2023
--Host        : fabian-VirtualBox running 64-bit Ubuntu 22.04.3 LTS
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
    LED : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PUL_IN : in STD_LOGIC
  );
end design_leds_wrapper;

architecture STRUCTURE of design_leds_wrapper is
  component design_leds is
  port (
    PUL_IN : in STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_leds;
begin
design_leds_i: component design_leds
     port map (
      LED(3 downto 0) => LED(3 downto 0),
      PUL_IN => PUL_IN
    );
end STRUCTURE;
