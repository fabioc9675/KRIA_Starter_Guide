--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
--Date        : Thu Feb 23 17:00:33 2023
--Host        : fabiancastano-VirtualBox running 64-bit Ubuntu 20.04.5 LTS
--Command     : generate_target kria_bd_wrapper.bd
--Design      : kria_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kria_bd_wrapper is
  port (
    fan_en_b : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end kria_bd_wrapper;

architecture STRUCTURE of kria_bd_wrapper is
  component kria_bd is
  port (
    fan_en_b : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component kria_bd;
begin
kria_bd_i: component kria_bd
     port map (
      fan_en_b(0) => fan_en_b(0)
    );
end STRUCTURE;
