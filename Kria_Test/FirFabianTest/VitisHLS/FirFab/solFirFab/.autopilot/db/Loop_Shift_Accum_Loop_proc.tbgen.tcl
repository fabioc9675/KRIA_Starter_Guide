set moduleName Loop_Shift_Accum_Loop_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {Loop_Shift_Accum_Loop_proc}
set C_modelType { int 32 }
set C_modelArgList {
	{ p_read int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 9
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 32 signal 0 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "Loop_Shift_Accum_Loop_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "103", "EstimateLatencyMax" : "103",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "fir_int_int_shift_reg", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fir_int_int_shift_reg_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_72", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_73", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_74", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_75", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_76", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_77", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_78", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_79", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_80", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_81", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_82", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_83", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_84", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_85", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_86", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_87", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_88", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_89", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_90", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_91", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_92", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_93", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_94", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_95", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_96", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_97", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_98", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ3firPiS_E9shift_reg_99", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "Shift_Accum_Loop", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1017_32_1_1_U2", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1017_32_1_1_U3", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U4", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Loop_Shift_Accum_Loop_proc {
		p_read {Type I LastRead 0 FirstWrite -1}
		fir_int_int_shift_reg {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_1 {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_2 {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_3 {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_4 {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_5 {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_6 {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_7 {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_8 {Type IO LastRead -1 FirstWrite -1}
		fir_int_int_shift_reg_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_29 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_32 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_33 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_35 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_36 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_37 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_38 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_39 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_40 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_41 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_42 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_43 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_44 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_45 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_46 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_47 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_48 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_49 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_50 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_51 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_52 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_53 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_54 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_55 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_56 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_57 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_58 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_59 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_60 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_61 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_62 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_63 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_64 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_65 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_66 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_67 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_68 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_69 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_70 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_71 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_72 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_73 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_74 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_75 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_76 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_77 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_78 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_79 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_80 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_81 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_82 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_83 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_84 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_85 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_86 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_87 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_88 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_89 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_90 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_91 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_92 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_93 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_94 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_95 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_96 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_97 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_98 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ3firPiS_E9shift_reg_99 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "103", "Max" : "103"}
	, {"Name" : "Interval", "Min" : "103", "Max" : "103"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 32 } } }
}
