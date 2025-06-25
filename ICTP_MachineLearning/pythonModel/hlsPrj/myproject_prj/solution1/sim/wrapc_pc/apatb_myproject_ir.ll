; ModuleID = 'C:/GitHub/KRIA_Starter_Guide/ICTP_MachineLearning/pythonModel/hlsPrj/myproject_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 7, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 7, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }
%"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<8, 5, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<8, 5, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<8, true>" }
%"struct.ssdm_int<8, true>" = type { i8 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_myproject_ir(%"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="161" %inputLayer, %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="2" %layer19_out) local_unnamed_addr #0 {
entry:
  %inputLayer_copy13 = alloca i2576, align 512
  %layer19_out_copy_0 = alloca i8, align 512
  %layer19_out_copy_1 = alloca i8, align 512
  %0 = bitcast %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"* %inputLayer to [161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]*
  %1 = bitcast %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"* %layer19_out to [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]*
  call void @copy_in([161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]* nonnull %0, i2576* nonnull align 512 %inputLayer_copy13, [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* nonnull %1, i8* nonnull align 512 %layer19_out_copy_0, i8* nonnull align 512 %layer19_out_copy_1)
  call void @apatb_myproject_hw(i2576* %inputLayer_copy13, i8* %layer19_out_copy_0, i8* %layer19_out_copy_1)
  call void @copy_back([161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]* %0, i2576* %inputLayer_copy13, [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* %1, i8* %layer19_out_copy_0, i8* %layer19_out_copy_1)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #1

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a2struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"(i8* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.0.0.0" %_0, i8* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.0.0.1" %_1, [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1") #2 {
entry:
  %1 = icmp eq [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %src.addr.0.0.05 = getelementptr [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"], [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %2 = load i8, i8* %src.addr.0.0.05, align 1
  %3 = trunc i64 %for.loop.idx1 to i1
  %cond = icmp eq i1 %3, false
  br i1 %cond, label %dst.addr.0.0.06.case.0, label %dst.addr.0.0.06.case.1

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i8 %2, i8* %_0, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  call void @llvm.assume(i1 %3)
  store i8 %2, i8* %_1, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.0.0.06.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a2struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>.153"([2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i8* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.0.0.0" %_0, i8* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.0.0.1" %_1) #2 {
entry:
  %1 = icmp eq [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %dst.addr.0.0.06 = getelementptr [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"], [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %2 = trunc i64 %for.loop.idx1 to i1
  %cond = icmp eq i1 %2, false
  br i1 %cond, label %src.addr.0.0.05.case.0, label %src.addr.0.0.05.case.1

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %_01 = load i8, i8* %_0, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  call void @llvm.assume(i1 %2)
  %_12 = load i8, i8* %_1, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0
  %3 = phi i8 [ %_01, %src.addr.0.0.05.case.0 ], [ %_12, %src.addr.0.0.05.case.1 ]
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.0.0.05.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a161struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>.179"(i2576* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.0.0", [161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1") #2 {
entry:
  %2 = icmp eq [161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.promoted = load i2576, i2576* %0, align 512
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %3 = phi i2576 [ %.promoted, %copy ], [ %12, %for.loop ]
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"], [161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %4 = mul nuw nsw i64 16, %for.loop.idx1
  %5 = load i16, i16* %src.addr.0.0.05, align 2
  %6 = zext i64 %4 to i2576
  %7 = shl i2576 65535, %6
  %8 = zext i16 %5 to i2576
  %9 = shl i2576 %8, %6
  %10 = xor i2576 %7, -1
  %11 = and i2576 %3, %10
  %12 = or i2576 %11, %9
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 161
  br i1 %exitcond, label %for.loop, label %ret.loopexit

ret.loopexit:                                     ; preds = %for.loop
  store i2576 %12, i2576* %0, align 512
  br label %ret

ret:                                              ; preds = %ret.loopexit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="0" "unpacked"="0", i2576* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.0.0", [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="2" "unpacked"="2", i8* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.0.0.0" %_0, i8* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.0.0.1" %_1) #3 {
entry:
  call void @"onebyonecpy_hls.p0a161struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>.179"(i2576* align 512 %1, [161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]* %0)
  call void @"onebyonecpy_hls.p0a2struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"(i8* align 512 %_0, i8* align 512 %_1, [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a161struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"([161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i2576* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.0.0") #2 {
entry:
  %2 = icmp eq [161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i2576, i2576* %1, align 512
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %4 = mul nuw nsw i64 16, %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"], [161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %5 = zext i64 %4 to i2576
  %6 = lshr i2576 %3, %5
  %7 = trunc i2576 %6 to i16
  store i16 %7, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 161
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i2576* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.0.0", [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i8* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.0.0.0" %_0, i8* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.0.0.1" %_1) #4 {
entry:
  call void @"onebyonecpy_hls.p0a161struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"([161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]* %0, i2576* align 512 %1)
  call void @"onebyonecpy_hls.p0a2struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>.153"([2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* %2, i8* align 512 %_0, i8* align 512 %_1)
  ret void
}

declare void @apatb_myproject_hw(i2576*, i8*, i8*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i2576* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.0.0", [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i8* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.0.0.0" %_0, i8* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.0.0.1" %_1) #4 {
entry:
  call void @"onebyonecpy_hls.p0a2struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>.153"([2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* %2, i8* align 512 %_0, i8* align 512 %_1)
  ret void
}

define void @myproject_hw_stub_wrapper(i2576*, i8*, i8*) #5 {
entry:
  %3 = alloca [161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]
  %4 = alloca [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]
  call void @copy_out([161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]* %3, i2576* %0, [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* %4, i8* %1, i8* %2)
  %5 = bitcast [161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]* %3 to %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"*
  %6 = bitcast [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* %4 to %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"*
  call void @myproject_hw_stub(%"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"* %5, %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"* %6)
  call void @copy_in([161 x %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"]* %3, i2576* %0, [2 x %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"]* %4, i8* %1, i8* %2)
  ret void
}

declare void @myproject_hw_stub(%"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<8, 5, AP_TRN, AP_WRAP, 0>"*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"1.0.0.0", [2 x i8]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12}
!11 = !{!"1.0.0.0.0", i8* null}
!12 = !{!"1.0.0.0.1", i8* null}
