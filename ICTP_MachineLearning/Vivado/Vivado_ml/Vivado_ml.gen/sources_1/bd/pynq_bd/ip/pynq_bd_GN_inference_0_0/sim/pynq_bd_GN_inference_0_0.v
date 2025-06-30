// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:GN_inference:1.0
// IP Revision: 2114142620

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module pynq_bd_GN_inference_0_0 (
  result_ap_vld,
  ap_clk,
  ap_rst_n,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  input_r_TVALID,
  input_r_TREADY,
  input_r_TDEST,
  input_r_TDATA,
  input_r_TKEEP,
  input_r_TSTRB,
  input_r_TUSER,
  input_r_TLAST,
  input_r_TID,
  result
);

output wire result_ap_vld;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF input_r, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN pynq_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TVALID" *)
input wire input_r_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TREADY" *)
output wire input_r_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TDEST" *)
input wire [5 : 0] input_r_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TDATA" *)
input wire [31 : 0] input_r_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TKEEP" *)
input wire [3 : 0] input_r_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TSTRB" *)
input wire [3 : 0] input_r_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TUSER" *)
input wire [1 : 0] input_r_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TLAST" *)
input wire [0 : 0] input_r_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME input_r, TDATA_NUM_BYTES 4, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN pynq_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TID" *)
input wire [4 : 0] input_r_TID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME result, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 result DATA" *)
output wire [31 : 0] result;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "" *)
  GN_inference inst (
    .result_ap_vld(result_ap_vld),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .input_r_TVALID(input_r_TVALID),
    .input_r_TREADY(input_r_TREADY),
    .input_r_TDEST(input_r_TDEST),
    .input_r_TDATA(input_r_TDATA),
    .input_r_TKEEP(input_r_TKEEP),
    .input_r_TSTRB(input_r_TSTRB),
    .input_r_TUSER(input_r_TUSER),
    .input_r_TLAST(input_r_TLAST),
    .input_r_TID(input_r_TID),
    .result(result)
  );
endmodule
