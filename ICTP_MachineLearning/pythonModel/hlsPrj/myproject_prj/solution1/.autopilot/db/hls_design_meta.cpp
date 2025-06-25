#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("input_r_TVALID", 1, hls_in, 6, "axis", "in_vld", 1),
	Port_Property("input_r_TDATA", 32, hls_in, 0, "axis", "in_data", 1),
	Port_Property("input_r_TREADY", 1, hls_out, 6, "axis", "in_acc", 1),
	Port_Property("input_r_TKEEP", 4, hls_in, 1, "axis", "in_data", 1),
	Port_Property("input_r_TSTRB", 4, hls_in, 2, "axis", "in_data", 1),
	Port_Property("input_r_TUSER", 2, hls_in, 3, "axis", "in_data", 1),
	Port_Property("input_r_TLAST", 1, hls_in, 4, "axis", "in_data", 1),
	Port_Property("input_r_TID", 5, hls_in, 5, "axis", "in_data", 1),
	Port_Property("input_r_TDEST", 6, hls_in, 6, "axis", "in_data", 1),
	Port_Property("result", 32, hls_out, 7, "ap_vld", "out_data", 1),
	Port_Property("result_ap_vld", 1, hls_out, 7, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "GN_inference";
