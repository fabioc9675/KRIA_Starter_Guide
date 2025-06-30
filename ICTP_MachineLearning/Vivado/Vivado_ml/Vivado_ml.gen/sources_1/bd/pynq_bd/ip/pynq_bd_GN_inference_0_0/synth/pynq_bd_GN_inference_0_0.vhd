-- (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:GN_inference:1.0
-- IP Revision: 2114142620

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY pynq_bd_GN_inference_0_0 IS
  PORT (
    result_ap_vld : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_r_TVALID : IN STD_LOGIC;
    input_r_TREADY : OUT STD_LOGIC;
    input_r_TDEST : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    input_r_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_r_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    input_r_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    input_r_TUSER : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    input_r_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    input_r_TID : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END pynq_bd_GN_inference_0_0;

ARCHITECTURE pynq_bd_GN_inference_0_0_arch OF pynq_bd_GN_inference_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF pynq_bd_GN_inference_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT GN_inference IS
    PORT (
      result_ap_vld : OUT STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      input_r_TVALID : IN STD_LOGIC;
      input_r_TREADY : OUT STD_LOGIC;
      input_r_TDEST : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      input_r_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_r_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      input_r_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      input_r_TUSER : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      input_r_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      input_r_TID : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT GN_inference;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF pynq_bd_GN_inference_0_0_arch: ARCHITECTURE IS "GN_inference,Vivado 2022.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF pynq_bd_GN_inference_0_0_arch : ARCHITECTURE IS "pynq_bd_GN_inference_0_0,GN_inference,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF pynq_bd_GN_inference_0_0_arch: ARCHITECTURE IS "pynq_bd_GN_inference_0_0,GN_inference,{x_ipProduct=Vivado 2022.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=GN_inference,x_ipVersion=1.0,x_ipCoreRevision=2114142620,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE SDX_KERNEL : STRING;
  ATTRIBUTE SDX_KERNEL OF GN_inference: COMPONENT IS "true";
  ATTRIBUTE SDX_KERNEL_TYPE : STRING;
  ATTRIBUTE SDX_KERNEL_TYPE OF GN_inference: COMPONENT IS "hls";
  ATTRIBUTE SDX_KERNEL_SYNTH_INST : STRING;
  ATTRIBUTE SDX_KERNEL_SYNTH_INST OF GN_inference: COMPONENT IS "U0";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF pynq_bd_GN_inference_0_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF input_r, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN pynq_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_INFO OF input_r_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 input_r TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_r_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 input_r TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF input_r_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 input_r TID";
  ATTRIBUTE X_INTERFACE_INFO OF input_r_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 input_r TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF input_r_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 input_r TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF input_r_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 input_r TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF input_r_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 input_r TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF input_r_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 input_r TUSER";
  ATTRIBUTE X_INTERFACE_PARAMETER OF input_r_TVALID: SIGNAL IS "XIL_INTERFACENAME input_r, TDATA_NUM_BYTES 4, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN pynq_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF input_r_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 input_r TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF result: SIGNAL IS "XIL_INTERFACENAME result, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF result: SIGNAL IS "xilinx.com:signal:data:1.0 result DATA";
BEGIN
  U0 : GN_inference
    PORT MAP (
      result_ap_vld => result_ap_vld,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      input_r_TVALID => input_r_TVALID,
      input_r_TREADY => input_r_TREADY,
      input_r_TDEST => input_r_TDEST,
      input_r_TDATA => input_r_TDATA,
      input_r_TKEEP => input_r_TKEEP,
      input_r_TSTRB => input_r_TSTRB,
      input_r_TUSER => input_r_TUSER,
      input_r_TLAST => input_r_TLAST,
      input_r_TID => input_r_TID,
      result => result
    );
END pynq_bd_GN_inference_0_0_arch;
