--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
--Date        : Wed Feb 22 22:55:07 2023
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
end kria_bd_wrapper;

architecture STRUCTURE of kria_bd_wrapper is
  component kria_bd is
  end component kria_bd;
begin
kria_bd_i: component kria_bd
 ;
end STRUCTURE;
