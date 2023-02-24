-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Oct 14 13:18:27 2022
-- Host        : xcosswbld07 running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /tmp/tmp.rcD1Rez4M9/temp/hw_design/k26_starter_kits/kr260/project/kr260_starter_kit.gen/sources_1/bd/kr260_starter_kit/ip/kr260_starter_kit_zynq_ultra_ps_e_0_0/kr260_starter_kit_zynq_ultra_ps_e_0_0_stub.vhdl
-- Design      : kr260_starter_kit_zynq_ultra_ps_e_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity kr260_starter_kit_zynq_ultra_ps_e_0_0 is
  Port ( 
    emio_enet0_enet_tsu_timer_cnt : out STD_LOGIC_VECTOR ( 93 downto 0 );
    emio_ttc0_wave_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pl_ps_irq0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    pl_resetn0 : out STD_LOGIC;
    pl_resetn1 : out STD_LOGIC;
    pl_resetn2 : out STD_LOGIC;
    pl_resetn3 : out STD_LOGIC;
    pl_clk0 : out STD_LOGIC;
    pl_clk1 : out STD_LOGIC
  );

end kr260_starter_kit_zynq_ultra_ps_e_0_0;

architecture stub of kr260_starter_kit_zynq_ultra_ps_e_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "emio_enet0_enet_tsu_timer_cnt[93:0],emio_ttc0_wave_o[2:0],pl_ps_irq0[0:0],pl_resetn0,pl_resetn1,pl_resetn2,pl_resetn3,pl_clk0,pl_clk1";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "zynq_ultra_ps_e_v3_4_1_zynq_ultra_ps_e,Vivado 2022.2";
begin
end;
