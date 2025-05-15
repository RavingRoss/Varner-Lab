; ModuleID = 'C:/Users/student/Documents/jromeo/FinalProject/hls4ml_prj/myproject_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<18, 14, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<18, 14, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<18, true>" }
%"struct.ssdm_int<18, true>" = type { i18 }
%"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<24, 12, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<24, 12, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<24, true>" }
%"struct.ssdm_int<24, true>" = type { i24 }

; Function Attrs: noinline
define void @apatb_myproject_ir(%"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="100" %input_1, %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="2" "partition" %layer5_out) local_unnamed_addr #0 {
entry:
  %input_1_copy3 = alloca i1800, align 512
  %layer5_out_copy_0 = alloca i24, align 512
  %layer5_out_copy_1 = alloca i24, align 512
  %0 = bitcast %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"* %input_1 to [100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]*
  %1 = bitcast %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"* %layer5_out to [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]*
  call void @copy_in([100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* nonnull %0, i1800* nonnull align 512 %input_1_copy3, [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* nonnull %1, i24* nonnull align 512 %layer5_out_copy_0, i24* nonnull align 512 %layer5_out_copy_1)
  call void @apatb_myproject_hw(i1800* %input_1_copy3, i24* %layer5_out_copy_0, i24* %layer5_out_copy_1)
  call void @copy_back([100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* %0, i1800* %input_1_copy3, [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %1, i24* %layer5_out_copy_0, i24* %layer5_out_copy_1)
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #1

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"(i24* nocapture "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i24* nocapture "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %1 = trunc i64 %for.loop.idx2 to i1
  %src.addr.0.0.05 = getelementptr [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"], [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %2 = load i24, i24* %src.addr.0.0.05, align 4
  %cond = icmp eq i1 %1, false
  br i1 %cond, label %dst.addr.0.0.06.case.0, label %dst.addr.0.0.06.case.1

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i24 %2, i24* %dst_0, align 4
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  call void @llvm.assume(i1 %1)
  store i24 %2, i24* %dst_1, align 4
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.0.0.06.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a2struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"(i24* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i24* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1" %src) #3 {
entry:
  %0 = icmp eq [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"(i24* %dst_0, i24* %dst_1, [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>.30"([2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i24* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i24* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, i64 "orig.arg.no"="2" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %1 = trunc i64 %for.loop.idx2 to i1
  %dst.addr.0.0.06 = getelementptr [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"], [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %cond = icmp eq i1 %1, false
  br i1 %cond, label %src.addr.0.0.05.case.0, label %src.addr.0.0.05.case.1

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %_0 = load i24, i24* %src_0, align 4
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  call void @llvm.assume(i1 %1)
  %_1 = load i24, i24* %src_1, align 4
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0
  %2 = phi i24 [ %_0, %src.addr.0.0.05.case.0 ], [ %_1, %src.addr.0.0.05.case.1 ]
  store i24 %2, i24* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.0.0.05.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a2struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>.27"([2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i24* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i24* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %src_1) #3 {
entry:
  %0 = icmp eq [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>.30"([2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, i24* %src_0, i24* %src_1, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a100struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>.40"(i1800* nocapture "orig.arg.no"="0" "unpacked"="0.0" %dst, i64 %dst_shift, [100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"], [100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = mul i64 18, %for.loop.idx2
  %2 = add i64 %dst_shift, %1
  %3 = bitcast i18* %src.addr.0.0.05 to i24*
  %4 = load i24, i24* %3
  %5 = trunc i24 %4 to i18
  %6 = load i1800, i1800* %dst, align 256
  %7 = zext i64 %2 to i1800
  %8 = shl i1800 262143, %7
  %9 = zext i18 %5 to i1800
  %10 = shl i1800 %9, %7
  %thr.xor1 = xor i1800 %8, -1
  %thr.and2 = and i1800 %6, %thr.xor1
  %thr.or3 = or i1800 %thr.and2, %10
  store i1800 %thr.or3, i1800* %dst, align 256
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a100struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>.37"(i1800* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst, [100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1" %src) #3 {
entry:
  %0 = icmp eq [100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a100struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>.40"(i1800* %dst, i64 0, [100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="0" "unpacked"="0", i1800* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0", [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="2" "unpacked"="2", i24* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i24* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1) #4 {
entry:
  call void @"onebyonecpy_hls.p0a100struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>.37"(i1800* align 512 %1, [100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* %0)
  call void @"onebyonecpy_hls.p0a2struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"(i24* align 512 %_0, i24* align 512 %_1, [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a100struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"([100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i1800* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0" %src, i64 %src_shift, i64 "orig.arg.no"="2" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %1 = mul i64 18, %for.loop.idx2
  %2 = add i64 %src_shift, %1
  %dst.addr.0.0.06 = getelementptr [100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"], [100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %3 = load i1800, i1800* %src, align 256
  %4 = zext i64 %2 to i1800
  %5 = lshr i1800 %3, %4
  %6 = trunc i1800 %5 to i18
  store i18 %6, i18* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a100struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"([100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i1800* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src) #3 {
entry:
  %0 = icmp eq [100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a100struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"([100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, i1800* %src, i64 0, i64 100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i1800* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0", [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i24* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i24* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1) #5 {
entry:
  call void @"onebyonecpy_hls.p0a100struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"([100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* %0, i1800* align 512 %1)
  call void @"onebyonecpy_hls.p0a2struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>.27"([2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %2, i24* align 512 %_0, i24* align 512 %_1)
  ret void
}

declare void @apatb_myproject_hw(i1800*, i24*, i24*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i1800* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0", [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i24* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i24* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1) #5 {
entry:
  call void @"onebyonecpy_hls.p0a2struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>.27"([2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %2, i24* align 512 %_0, i24* align 512 %_1)
  ret void
}

define void @myproject_hw_stub_wrapper(i1800*, i24*, i24*) #6 {
entry:
  %3 = alloca [100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]
  %4 = alloca [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]
  call void @copy_out([100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* %3, i1800* %0, [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %4, i24* %1, i24* %2)
  %5 = bitcast [100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* %3 to %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"*
  %6 = bitcast [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %4 to %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"*
  call void @myproject_hw_stub(%"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"* %5, %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"* %6)
  call void @copy_in([100 x %"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"]* %3, i1800* %0, [2 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %4, i24* %1, i24* %2)
  ret void
}

declare void @myproject_hw_stub(%"struct.ap_fixed<18, 14, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { nounwind willreturn }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

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
!7 = !{!"1.0", [2 x i24]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12}
!11 = !{!"1.0.0", i24* null}
!12 = !{!"1.0.1", i24* null}
