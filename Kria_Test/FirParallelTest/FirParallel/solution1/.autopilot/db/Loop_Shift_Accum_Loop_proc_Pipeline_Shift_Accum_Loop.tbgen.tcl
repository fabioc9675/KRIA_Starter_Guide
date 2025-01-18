set moduleName Loop_Shift_Accum_Loop_proc_Pipeline_Shift_Accum_Loop
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {Loop_Shift_Accum_Loop_proc_Pipeline_Shift_Accum_Loop}
set C_modelType { int 2 }
set C_modelArgList {
	{ fir_int_int_shift_reg_load int 32 regular  }
	{ acc_out int 32 regular {pointer 1}  }
	{ acc_2_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fir_int_int_shift_reg_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 2} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fir_int_int_shift_reg_load sc_in sc_lv 32 signal 0 } 
	{ acc_out sc_out sc_lv 32 signal 1 } 
	{ acc_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ acc_2_out sc_out sc_lv 32 signal 2 } 
	{ acc_2_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ ap_return sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fir_int_int_shift_reg_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fir_int_int_shift_reg_load", "role": "default" }} , 
 	{ "name": "acc_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_out", "role": "default" }} , 
 	{ "name": "acc_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_out", "role": "ap_vld" }} , 
 	{ "name": "acc_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_2_out", "role": "default" }} , 
 	{ "name": "acc_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_2_out", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "Loop_Shift_Accum_Loop_proc_Pipeline_Shift_Accum_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "fir_int_int_shift_reg_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "acc_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fir_int_int_shift_reg_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_75", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_79", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_83", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_87", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_91", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_95", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_99", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_72", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_76", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_74", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_73", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_80", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_78", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_77", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_84", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_82", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_81", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_88", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_86", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_85", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_92", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_90", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_89", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_96", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_94", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_93", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_98", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_97", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "Shift_Accum_Loop", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state4", "ap_ST_fsm_state5", "ap_ST_fsm_state6"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1017_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1017_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_6ns_32_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_6ns_32_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_7ns_32_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_7s_32_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_7ns_32_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_9s_32_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_8s_32_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_9s_32_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_10ns_32_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_10ns_32_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_10ns_32_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_10s_32_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_10ns_32_1_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_11s_32_1_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_13s_32_1_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_15ns_32_1_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_15ns_32_1_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_12s_32_1_1_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_13s_32_1_1_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_11ns_32_1_1_U23", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_11s_32_1_1_U24", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_11ns_32_1_1_U25", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_10ns_32_1_1_U26", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_10ns_32_1_1_U27", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_10s_32_1_1_U28", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_9s_32_1_1_U29", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_9s_32_1_1_U30", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_8ns_32_1_1_U31", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_8s_32_1_1_U32", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_8ns_32_1_1_U33", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_7ns_32_1_1_U34", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_7ns_32_1_1_U35", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1017_32_1_1_U36", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U37", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Loop_Shift_Accum_Loop_proc_Pipeline_Shift_Accum_Loop {
		fir_int_int_shift_reg_load {Type I LastRead 0 FirstWrite -1}
		acc_out {Type O LastRead -1 FirstWrite 2}
		acc_2_out {Type O LastRead -1 FirstWrite 3}
		fir_int_int_shift_reg_4 {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_2 {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_3 {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_1 {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_35 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_39 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_43 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_47 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_51 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_55 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_59 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_63 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_67 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_71 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_75 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_79 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_83 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_87 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_91 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_95 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_99 {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_8 {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_6 {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_10 {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_32 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_29 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_36 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_33 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_40 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_38 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_37 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_44 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_42 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_41 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_48 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_46 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_45 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_52 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_50 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_49 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_56 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_54 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_53 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_60 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_58 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_57 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_64 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_62 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_61 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_68 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_66 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_65 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_72 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_70 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_69 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_76 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_74 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_73 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_80 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_78 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_77 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_84 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_82 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_81 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_88 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_86 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_85 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_92 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_90 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_89 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_96 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_94 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_93 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_98 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_97 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "29"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "29"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fir_int_int_shift_reg_load { ap_none {  { fir_int_int_shift_reg_load in_data 0 32 } } }
	acc_out { ap_vld {  { acc_out out_data 1 32 }  { acc_out_ap_vld out_vld 1 1 } } }
	acc_2_out { ap_vld {  { acc_2_out out_data 1 32 }  { acc_2_out_ap_vld out_vld 1 1 } } }
}
