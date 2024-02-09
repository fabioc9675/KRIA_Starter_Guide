--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Fri Feb  9 13:38:10 2024
--Host        : DESKTOP-3FHD9AF running 64-bit major release  (build 9200)
--Command     : generate_target kria_fir.bd
--Design      : kria_fir
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kria_fir is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    x_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y_0 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of kria_fir : entity is "kria_fir,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=kria_fir,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of kria_fir : entity is "kria_fir.hwdef";
end kria_fir;

architecture STRUCTURE of kria_fir is
  component kria_fir_trapz_fab_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kria_fir_trapz_fab_0_0;
  signal ap_clk_1 : STD_LOGIC;
  signal ap_rst_1 : STD_LOGIC;
  signal ap_start_1 : STD_LOGIC;
  signal trapz_fab_0_y : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal x_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN kria_fir_ap_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 RST.AP_RST RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  ap_clk_1 <= ap_clk;
  ap_rst_1 <= ap_rst;
  ap_start_1 <= ap_start;
  x_0_1(31 downto 0) <= x_0(31 downto 0);
  y_0(31 downto 0) <= trapz_fab_0_y(31 downto 0);
trapz_fab_0: component kria_fir_trapz_fab_0_0
     port map (
      ap_clk => ap_clk_1,
      ap_rst => ap_rst_1,
      ap_start => ap_start_1,
      x(31 downto 0) => x_0_1(31 downto 0),
      y(31 downto 0) => trapz_fab_0_y(31 downto 0)
    );
end STRUCTURE;
