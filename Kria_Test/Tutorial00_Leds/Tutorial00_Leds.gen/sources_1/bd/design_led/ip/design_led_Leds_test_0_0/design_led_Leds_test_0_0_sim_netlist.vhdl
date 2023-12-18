-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Dec  8 11:07:30 2023
-- Host        : fabian-VirtualBox running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/fabian/GitHub/KRIA_Starter_Guide/Kria_Test/Tutorial00_Leds/Tutorial00_Leds.gen/sources_1/bd/design_led/ip/design_led_Leds_test_0_0/design_led_Leds_test_0_0_sim_netlist.vhdl
-- Design      : design_led_Leds_test_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_led_Leds_test_0_0_Leds_test is
  port (
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    puls : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_led_Leds_test_0_0_Leds_test : entity is "Leds_test";
end design_led_Leds_test_0_0_Leds_test;

architecture STRUCTURE of design_led_Leds_test_0_0_Leds_test is
begin
\leds[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => puls(0),
      O => leds(0)
    );
\leds[1]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => puls(1),
      O => leds(1)
    );
\leds[2]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => puls(2),
      O => leds(2)
    );
\leds[3]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => puls(3),
      O => leds(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_led_Leds_test_0_0 is
  port (
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    puls : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_led_Leds_test_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_led_Leds_test_0_0 : entity is "design_led_Leds_test_0_0,Leds_test,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_led_Leds_test_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_led_Leds_test_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_led_Leds_test_0_0 : entity is "Leds_test,Vivado 2022.2";
end design_led_Leds_test_0_0;

architecture STRUCTURE of design_led_Leds_test_0_0 is
begin
inst: entity work.design_led_Leds_test_0_0_Leds_test
     port map (
      leds(3 downto 0) => leds(3 downto 0),
      puls(3 downto 0) => puls(3 downto 0)
    );
end STRUCTURE;
