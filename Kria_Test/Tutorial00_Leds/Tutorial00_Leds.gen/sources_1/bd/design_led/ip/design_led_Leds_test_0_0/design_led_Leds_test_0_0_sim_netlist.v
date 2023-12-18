// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Dec  8 11:07:30 2023
// Host        : fabian-VirtualBox running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fabian/GitHub/KRIA_Starter_Guide/Kria_Test/Tutorial00_Leds/Tutorial00_Leds.gen/sources_1/bd/design_led/ip/design_led_Leds_test_0_0/design_led_Leds_test_0_0_sim_netlist.v
// Design      : design_led_Leds_test_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_led_Leds_test_0_0,Leds_test,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Leds_test,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_led_Leds_test_0_0
   (leds,
    puls);
  output [3:0]leds;
  input [3:0]puls;

  wire [3:0]leds;
  wire [3:0]puls;

  design_led_Leds_test_0_0_Leds_test inst
       (.leds(leds),
        .puls(puls));
endmodule

(* ORIG_REF_NAME = "Leds_test" *) 
module design_led_Leds_test_0_0_Leds_test
   (leds,
    puls);
  output [3:0]leds;
  input [3:0]puls;

  wire [3:0]leds;
  wire [3:0]puls;

  LUT1 #(
    .INIT(2'h1)) 
    \leds[0]_INST_0 
       (.I0(puls[0]),
        .O(leds[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \leds[1]_INST_0 
       (.I0(puls[1]),
        .O(leds[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \leds[2]_INST_0 
       (.I0(puls[2]),
        .O(leds[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \leds[3]_INST_0 
       (.I0(puls[3]),
        .O(leds[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
