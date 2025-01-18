--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Fri Feb  2 18:16:44 2024
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
  attribute CORE_GENERATION_INFO of kria_fir : entity is "kria_fir,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=kria_fir,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of kria_fir : entity is "kria_fir.hwdef";
end kria_fir;

architecture STRUCTURE of kria_fir is
  component kria_fir_fir_0_1 is
  port (
    y_ap_vld : out STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_idle : out STD_LOGIC
  );
  end component kria_fir_fir_0_1;
  signal ap_clk_1 : STD_LOGIC;
  signal ap_rst_1 : STD_LOGIC;
  signal ap_start_1 : STD_LOGIC;
  signal fir_0_y : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal x_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fir_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_0_y_ap_vld_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN kria_fir_ap_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 RST.AP_RST RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of x_0 : signal is "xilinx.com:signal:data:1.0 DATA.X_0 DATA";
  attribute X_INTERFACE_PARAMETER of x_0 : signal is "XIL_INTERFACENAME DATA.X_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of y_0 : signal is "xilinx.com:signal:data:1.0 DATA.Y_0 DATA";
  attribute X_INTERFACE_PARAMETER of y_0 : signal is "XIL_INTERFACENAME DATA.Y_0, LAYERED_METADATA undef";
begin
  ap_clk_1 <= ap_clk;
  ap_rst_1 <= ap_rst;
  ap_start_1 <= ap_start;
  x_0_1(31 downto 0) <= x_0(31 downto 0);
  y_0(31 downto 0) <= fir_0_y(31 downto 0);
fir_0: component kria_fir_fir_0_1
     port map (
      ap_clk => ap_clk_1,
      ap_done => NLW_fir_0_ap_done_UNCONNECTED,
      ap_idle => NLW_fir_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_fir_0_ap_ready_UNCONNECTED,
      ap_rst => ap_rst_1,
      ap_start => ap_start_1,
      x(31 downto 0) => x_0_1(31 downto 0),
      y(31 downto 0) => fir_0_y(31 downto 0),
      y_ap_vld => NLW_fir_0_y_ap_vld_UNCONNECTED
    );
end STRUCTURE;
