!rec__IO_codecvt = !cir.record<struct "_IO_codecvt" incomplete>
!rec__IO_marker = !cir.record<struct "_IO_marker" incomplete>
!rec__IO_wide_data = !cir.record<struct "_IO_wide_data" incomplete>
!rec_complex = !cir.record<struct "complex" {!cir.double, !cir.double}>
!rec_vector = !cir.record<struct "vector" {!cir.double, !cir.double, !cir.double}>
!s16i = !cir.int<s, 16>
!s32i = !cir.int<s, 32>
!s64i = !cir.int<s, 64>
!s8i = !cir.int<s, 8>
!u16i = !cir.int<u, 16>
!u32i = !cir.int<u, 32>
!u64i = !cir.int<u, 64>
!u8i = !cir.int<u, 8>
!void = !cir.void
#false = #cir.bool<false> : !cir.bool
#fn_attr = #cir<extra({inline = #cir.inline<no>, nothrow = #cir.nothrow, optnone = #cir.optnone, uwtable = #cir.uwtable<async>})>
#fn_attr1 = #cir<extra({nothrow = #cir.nothrow})>
#true = #cir.bool<true> : !cir.bool
!rec__IO_FILE = !cir.record<struct "_IO_FILE" {!s32i, !cir.ptr<!s8i>, !cir.ptr<!s8i>, !cir.ptr<!s8i>, !cir.ptr<!s8i>, !cir.ptr<!s8i>, !cir.ptr<!s8i>, !cir.ptr<!s8i>, !cir.ptr<!s8i>, !cir.ptr<!s8i>, !cir.ptr<!s8i>, !cir.ptr<!s8i>, !cir.ptr<!rec__IO_marker>, !cir.ptr<!cir.record<struct "_IO_FILE">>, !s32i, !s32i, !s64i, !u16i, !s8i, !cir.array<!s8i x 1>, !cir.ptr<!void>, !s64i, !cir.ptr<!rec__IO_codecvt>, !cir.ptr<!rec__IO_wide_data>, !cir.ptr<!cir.record<struct "_IO_FILE">>, !cir.ptr<!void>, !u64i, !s32i, !cir.array<!s8i x 20>} #cir.record.decl.ast>
module @"/root/workspace/ide_python/tool/chiplet-mlir/tests/c_program/c_cpp_code/src/c/deal_m.c" attributes {cir.lang = #cir.lang<c>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  cir.func no_proto dso_local @vector_create_zero() -> !rec_vector extra(#fn_attr) {
    %0 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["__retval"] {alignment = 8 : i64}
    %1 = cir.const #cir.fp<0.000000e+00> : !cir.double
    %2 = cir.get_member %0[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    cir.store align(8) %1, %2 : !cir.double, !cir.ptr<!cir.double>
    %3 = cir.const #cir.fp<0.000000e+00> : !cir.double
    %4 = cir.get_member %0[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    cir.store align(8) %3, %4 : !cir.double, !cir.ptr<!cir.double>
    %5 = cir.const #cir.fp<0.000000e+00> : !cir.double
    %6 = cir.get_member %0[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    cir.store align(8) %5, %6 : !cir.double, !cir.ptr<!cir.double>
    %7 = cir.load %0 : !cir.ptr<!rec_vector>, !rec_vector
    cir.return %7 : !rec_vector
  }
  cir.func dso_local @vector_create(%arg0: !cir.double, %arg1: !cir.double, %arg2: !cir.double) -> !rec_vector extra(#fn_attr) {
    %0 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["y", init] {alignment = 8 : i64}
    %2 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["z", init] {alignment = 8 : i64}
    %3 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.double, !cir.ptr<!cir.double>
    cir.store %arg1, %1 : !cir.double, !cir.ptr<!cir.double>
    cir.store %arg2, %2 : !cir.double, !cir.ptr<!cir.double>
    %4 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %5 = cir.get_member %3[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    cir.store align(8) %4, %5 : !cir.double, !cir.ptr<!cir.double>
    %6 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %7 = cir.get_member %3[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    cir.store align(8) %6, %7 : !cir.double, !cir.ptr<!cir.double>
    %8 = cir.load align(8) %2 : !cir.ptr<!cir.double>, !cir.double
    %9 = cir.get_member %3[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    cir.store align(8) %8, %9 : !cir.double, !cir.ptr<!cir.double>
    %10 = cir.load %3 : !cir.ptr<!rec_vector>, !rec_vector
    cir.return %10 : !rec_vector
  }
  cir.func dso_local @vector_getX(%arg0: !rec_vector) -> !cir.double extra(#fn_attr) {
    %0 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["v", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_vector, !cir.ptr<!rec_vector>
    %2 = cir.get_member %0[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %3 = cir.load align(8) %2 : !cir.ptr<!cir.double>, !cir.double
    cir.store %3, %1 : !cir.double, !cir.ptr<!cir.double>
    %4 = cir.load %1 : !cir.ptr<!cir.double>, !cir.double
    cir.return %4 : !cir.double
  }
  cir.func dso_local @vector_getY(%arg0: !rec_vector) -> !cir.double extra(#fn_attr) {
    %0 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["v", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_vector, !cir.ptr<!rec_vector>
    %2 = cir.get_member %0[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %3 = cir.load align(8) %2 : !cir.ptr<!cir.double>, !cir.double
    cir.store %3, %1 : !cir.double, !cir.ptr<!cir.double>
    %4 = cir.load %1 : !cir.ptr<!cir.double>, !cir.double
    cir.return %4 : !cir.double
  }
  cir.func dso_local @vector_getZ(%arg0: !rec_vector) -> !cir.double extra(#fn_attr) {
    %0 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["v", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_vector, !cir.ptr<!rec_vector>
    %2 = cir.get_member %0[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %3 = cir.load align(8) %2 : !cir.ptr<!cir.double>, !cir.double
    cir.store %3, %1 : !cir.double, !cir.ptr<!cir.double>
    %4 = cir.load %1 : !cir.ptr<!cir.double>, !cir.double
    cir.return %4 : !cir.double
  }
  cir.func private @sqrt(!cir.double) -> !cir.double extra(#fn_attr1)
  cir.func dso_local @vector_mod(%arg0: !rec_vector) -> !cir.double extra(#fn_attr) {
    %0 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["v", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_vector, !cir.ptr<!rec_vector>
    %2 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %3 = cir.get_member %0[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %4 = cir.load align(8) %3 : !cir.ptr<!cir.double>, !cir.double
    %5 = cir.get_member %0[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %6 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
    %7 = cir.binop(mul, %4, %6) : !cir.double
    %8 = cir.get_member %0[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %9 = cir.load align(8) %8 : !cir.ptr<!cir.double>, !cir.double
    %10 = cir.get_member %0[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %11 = cir.load align(8) %10 : !cir.ptr<!cir.double>, !cir.double
    %12 = cir.binop(mul, %9, %11) : !cir.double
    %13 = cir.binop(add, %7, %12) : !cir.double
    %14 = cir.get_member %0[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %15 = cir.load align(8) %14 : !cir.ptr<!cir.double>, !cir.double
    %16 = cir.get_member %0[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %17 = cir.load align(8) %16 : !cir.ptr<!cir.double>, !cir.double
    %18 = cir.binop(mul, %15, %17) : !cir.double
    %19 = cir.binop(add, %13, %18) : !cir.double
    %20 = cir.call @sqrt(%19) : (!cir.double) -> !cir.double extra(#fn_attr1)
    cir.store %20, %1 : !cir.double, !cir.ptr<!cir.double>
    %21 = cir.load %1 : !cir.ptr<!cir.double>, !cir.double
    cir.return %21 : !cir.double
  }
  cir.func dso_local @vector_add(%arg0: !rec_vector, %arg1: !rec_vector) -> !rec_vector extra(#fn_attr) {
    %0 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["a", init] {alignment = 8 : i64}
    %1 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["b", init] {alignment = 8 : i64}
    %2 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_vector, !cir.ptr<!rec_vector>
    cir.store %arg1, %1 : !rec_vector, !cir.ptr<!rec_vector>
    %3 = cir.get_member %0[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %4 = cir.load align(8) %3 : !cir.ptr<!cir.double>, !cir.double
    %5 = cir.get_member %1[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %6 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
    %7 = cir.binop(add, %4, %6) : !cir.double
    %8 = cir.get_member %0[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %9 = cir.load align(8) %8 : !cir.ptr<!cir.double>, !cir.double
    %10 = cir.get_member %1[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %11 = cir.load align(8) %10 : !cir.ptr<!cir.double>, !cir.double
    %12 = cir.binop(add, %9, %11) : !cir.double
    %13 = cir.get_member %0[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %14 = cir.load align(8) %13 : !cir.ptr<!cir.double>, !cir.double
    %15 = cir.get_member %1[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %16 = cir.load align(8) %15 : !cir.ptr<!cir.double>, !cir.double
    %17 = cir.binop(add, %14, %16) : !cir.double
    %18 = cir.call @vector_create(%7, %12, %17) : (!cir.double, !cir.double, !cir.double) -> !rec_vector
    cir.store align(8) %18, %2 : !rec_vector, !cir.ptr<!rec_vector>
    %19 = cir.load %2 : !cir.ptr<!rec_vector>, !rec_vector
    cir.return %19 : !rec_vector
  }
  cir.func dso_local @vector_sub(%arg0: !rec_vector, %arg1: !rec_vector) -> !rec_vector extra(#fn_attr) {
    %0 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["a", init] {alignment = 8 : i64}
    %1 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["b", init] {alignment = 8 : i64}
    %2 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_vector, !cir.ptr<!rec_vector>
    cir.store %arg1, %1 : !rec_vector, !cir.ptr<!rec_vector>
    %3 = cir.get_member %0[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %4 = cir.load align(8) %3 : !cir.ptr<!cir.double>, !cir.double
    %5 = cir.get_member %1[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %6 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
    %7 = cir.binop(sub, %4, %6) : !cir.double
    %8 = cir.get_member %0[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %9 = cir.load align(8) %8 : !cir.ptr<!cir.double>, !cir.double
    %10 = cir.get_member %1[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %11 = cir.load align(8) %10 : !cir.ptr<!cir.double>, !cir.double
    %12 = cir.binop(sub, %9, %11) : !cir.double
    %13 = cir.get_member %0[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %14 = cir.load align(8) %13 : !cir.ptr<!cir.double>, !cir.double
    %15 = cir.get_member %1[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %16 = cir.load align(8) %15 : !cir.ptr<!cir.double>, !cir.double
    %17 = cir.binop(sub, %14, %16) : !cir.double
    %18 = cir.call @vector_create(%7, %12, %17) : (!cir.double, !cir.double, !cir.double) -> !rec_vector
    cir.store align(8) %18, %2 : !rec_vector, !cir.ptr<!rec_vector>
    %19 = cir.load %2 : !cir.ptr<!rec_vector>, !rec_vector
    cir.return %19 : !rec_vector
  }
  cir.func dso_local @vector_dot(%arg0: !rec_vector, %arg1: !rec_vector) -> !cir.double extra(#fn_attr) {
    %0 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["a", init] {alignment = 8 : i64}
    %1 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["b", init] {alignment = 8 : i64}
    %2 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_vector, !cir.ptr<!rec_vector>
    cir.store %arg1, %1 : !rec_vector, !cir.ptr<!rec_vector>
    %3 = cir.get_member %0[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %4 = cir.load align(8) %3 : !cir.ptr<!cir.double>, !cir.double
    %5 = cir.get_member %1[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %6 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
    %7 = cir.binop(mul, %4, %6) : !cir.double
    %8 = cir.get_member %0[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %9 = cir.load align(8) %8 : !cir.ptr<!cir.double>, !cir.double
    %10 = cir.get_member %1[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %11 = cir.load align(8) %10 : !cir.ptr<!cir.double>, !cir.double
    %12 = cir.binop(mul, %9, %11) : !cir.double
    %13 = cir.binop(add, %7, %12) : !cir.double
    %14 = cir.get_member %0[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %15 = cir.load align(8) %14 : !cir.ptr<!cir.double>, !cir.double
    %16 = cir.get_member %1[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %17 = cir.load align(8) %16 : !cir.ptr<!cir.double>, !cir.double
    %18 = cir.binop(mul, %15, %17) : !cir.double
    %19 = cir.binop(add, %13, %18) : !cir.double
    cir.store %19, %2 : !cir.double, !cir.ptr<!cir.double>
    %20 = cir.load %2 : !cir.ptr<!cir.double>, !cir.double
    cir.return %20 : !cir.double
  }
  cir.func dso_local @build_vec(%arg0: !cir.double, %arg1: !cir.double, %arg2: !cir.double) -> !rec_vector extra(#fn_attr) {
    %0 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["y", init] {alignment = 8 : i64}
    %2 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["z", init] {alignment = 8 : i64}
    %3 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.double, !cir.ptr<!cir.double>
    cir.store %arg1, %1 : !cir.double, !cir.ptr<!cir.double>
    cir.store %arg2, %2 : !cir.double, !cir.ptr<!cir.double>
    %4 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %5 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %6 = cir.load align(8) %2 : !cir.ptr<!cir.double>, !cir.double
    %7 = cir.call @vector_create(%4, %5, %6) : (!cir.double, !cir.double, !cir.double) -> !rec_vector
    cir.store align(8) %7, %3 : !rec_vector, !cir.ptr<!rec_vector>
    %8 = cir.load %3 : !cir.ptr<!rec_vector>, !rec_vector
    cir.return %8 : !rec_vector
  }
  cir.func private @printf(!cir.ptr<!s8i>, ...) -> !s32i
  cir.global "private" constant cir_private dso_local @".str" = #cir.const_array<"(%.6f, %.6f, %.6f)\00" : !cir.array<!s8i x 19>> : !cir.array<!s8i x 19> {alignment = 1 : i64}
  cir.func dso_local @vector_display(%arg0: !rec_vector) extra(#fn_attr) {
    %0 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["v", init] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_vector, !cir.ptr<!rec_vector>
    %1 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
    %2 = cir.get_global @".str" : !cir.ptr<!cir.array<!s8i x 19>>
    %3 = cir.cast array_to_ptrdecay %2 : !cir.ptr<!cir.array<!s8i x 19>> -> !cir.ptr<!s8i>
    %4 = cir.get_member %0[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %5 = cir.load align(8) %4 : !cir.ptr<!cir.double>, !cir.double
    %6 = cir.get_member %0[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %7 = cir.load align(8) %6 : !cir.ptr<!cir.double>, !cir.double
    %8 = cir.get_member %0[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %9 = cir.load align(8) %8 : !cir.ptr<!cir.double>, !cir.double
    %10 = cir.call @printf(%3, %5, %7, %9) : (!cir.ptr<!s8i>, !cir.double, !cir.double, !cir.double) -> !s32i
    cir.return
  }
  cir.func dso_local @vector_cross(%arg0: !rec_vector, %arg1: !rec_vector) -> !rec_vector extra(#fn_attr) {
    %0 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["a", init] {alignment = 8 : i64}
    %1 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["b", init] {alignment = 8 : i64}
    %2 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_vector, !cir.ptr<!rec_vector>
    cir.store %arg1, %1 : !rec_vector, !cir.ptr<!rec_vector>
    %3 = cir.get_member %0[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %4 = cir.load align(8) %3 : !cir.ptr<!cir.double>, !cir.double
    %5 = cir.get_member %1[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %6 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
    %7 = cir.binop(mul, %4, %6) : !cir.double
    %8 = cir.get_member %0[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %9 = cir.load align(8) %8 : !cir.ptr<!cir.double>, !cir.double
    %10 = cir.get_member %1[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %11 = cir.load align(8) %10 : !cir.ptr<!cir.double>, !cir.double
    %12 = cir.binop(mul, %9, %11) : !cir.double
    %13 = cir.binop(sub, %7, %12) : !cir.double
    %14 = cir.get_member %0[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %15 = cir.load align(8) %14 : !cir.ptr<!cir.double>, !cir.double
    %16 = cir.get_member %1[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %17 = cir.load align(8) %16 : !cir.ptr<!cir.double>, !cir.double
    %18 = cir.binop(mul, %15, %17) : !cir.double
    %19 = cir.get_member %0[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %20 = cir.load align(8) %19 : !cir.ptr<!cir.double>, !cir.double
    %21 = cir.get_member %1[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %22 = cir.load align(8) %21 : !cir.ptr<!cir.double>, !cir.double
    %23 = cir.binop(mul, %20, %22) : !cir.double
    %24 = cir.binop(sub, %18, %23) : !cir.double
    %25 = cir.get_member %0[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %26 = cir.load align(8) %25 : !cir.ptr<!cir.double>, !cir.double
    %27 = cir.get_member %1[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %28 = cir.load align(8) %27 : !cir.ptr<!cir.double>, !cir.double
    %29 = cir.binop(mul, %26, %28) : !cir.double
    %30 = cir.get_member %0[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %31 = cir.load align(8) %30 : !cir.ptr<!cir.double>, !cir.double
    %32 = cir.get_member %1[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %33 = cir.load align(8) %32 : !cir.ptr<!cir.double>, !cir.double
    %34 = cir.binop(mul, %31, %33) : !cir.double
    %35 = cir.binop(sub, %29, %34) : !cir.double
    %36 = cir.call @vector_create(%13, %24, %35) : (!cir.double, !cir.double, !cir.double) -> !rec_vector
    cir.store align(8) %36, %2 : !rec_vector, !cir.ptr<!rec_vector>
    %37 = cir.load %2 : !cir.ptr<!rec_vector>, !rec_vector
    cir.return %37 : !rec_vector
  }
  cir.func dso_local @vector_scale(%arg0: !rec_vector, %arg1: !cir.double) -> !rec_vector extra(#fn_attr) {
    %0 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["v", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["scalar", init] {alignment = 8 : i64}
    %2 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_vector, !cir.ptr<!rec_vector>
    cir.store %arg1, %1 : !cir.double, !cir.ptr<!cir.double>
    %3 = cir.get_member %0[0] {name = "X"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %4 = cir.load align(8) %3 : !cir.ptr<!cir.double>, !cir.double
    %5 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %6 = cir.binop(mul, %4, %5) : !cir.double
    %7 = cir.get_member %0[1] {name = "Y"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %8 = cir.load align(8) %7 : !cir.ptr<!cir.double>, !cir.double
    %9 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %10 = cir.binop(mul, %8, %9) : !cir.double
    %11 = cir.get_member %0[2] {name = "Z"} : !cir.ptr<!rec_vector> -> !cir.ptr<!cir.double>
    %12 = cir.load align(8) %11 : !cir.ptr<!cir.double>, !cir.double
    %13 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %14 = cir.binop(mul, %12, %13) : !cir.double
    %15 = cir.call @vector_create(%6, %10, %14) : (!cir.double, !cir.double, !cir.double) -> !rec_vector
    cir.store align(8) %15, %2 : !rec_vector, !cir.ptr<!rec_vector>
    %16 = cir.load %2 : !cir.ptr<!rec_vector>, !rec_vector
    cir.return %16 : !rec_vector
  }
  cir.func dso_local @vector_normalize(%arg0: !rec_vector) -> !rec_vector extra(#fn_attr) {
    %0 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["v", init] {alignment = 8 : i64}
    %1 = cir.alloca !rec_vector, !cir.ptr<!rec_vector>, ["__retval"] {alignment = 8 : i64}
    %2 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["mod", init] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_vector, !cir.ptr<!rec_vector>
    %3 = cir.load align(8) %0 : !cir.ptr<!rec_vector>, !rec_vector
    %4 = cir.call @vector_mod(%3) : (!rec_vector) -> !cir.double
    cir.store align(8) %4, %2 : !cir.double, !cir.ptr<!cir.double>
    cir.scope {
      %11 = cir.load align(8) %2 : !cir.ptr<!cir.double>, !cir.double
      %12 = cir.const #cir.fp<0.000000e+00> : !cir.double
      %13 = cir.cmp(eq, %11, %12) : !cir.double, !cir.bool
      cir.if %13 {
        %14 = cir.get_global @vector_create_zero : !cir.ptr<!cir.func<() -> !rec_vector>>
        %15 = cir.call @vector_create_zero() : () -> !rec_vector
        cir.store align(8) %15, %1 : !rec_vector, !cir.ptr<!rec_vector>
        %16 = cir.load %1 : !cir.ptr<!rec_vector>, !rec_vector
        cir.return %16 : !rec_vector
      }
    }
    %5 = cir.const #cir.fp<1.000000e+00> : !cir.double
    %6 = cir.load align(8) %2 : !cir.ptr<!cir.double>, !cir.double
    %7 = cir.binop(div, %5, %6) : !cir.double
    %8 = cir.load align(8) %0 : !cir.ptr<!rec_vector>, !rec_vector
    %9 = cir.call @vector_scale(%8, %7) : (!rec_vector, !cir.double) -> !rec_vector
    cir.store align(8) %9, %1 : !rec_vector, !cir.ptr<!rec_vector>
    %10 = cir.load %1 : !cir.ptr<!rec_vector>, !rec_vector
    cir.return %10 : !rec_vector
  }
  cir.func private @malloc(!u64i) -> !cir.ptr<!void> extra(#fn_attr1)
  cir.func dso_local @create_double_2d_array(%arg0: !s32i, %arg1: !s32i) -> !cir.ptr<!cir.ptr<!cir.double>> extra(#fn_attr) {
    %0 = cir.alloca !s32i, !cir.ptr<!s32i>, ["rows", init] {alignment = 4 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["cols", init] {alignment = 4 : i64}
    %2 = cir.alloca !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, ["__retval"] {alignment = 8 : i64}
    %3 = cir.alloca !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, ["arr", init] {alignment = 8 : i64}
    cir.store %arg0, %0 : !s32i, !cir.ptr<!s32i>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    %4 = cir.get_global @malloc : !cir.ptr<!cir.func<(!u64i) -> !cir.ptr<!void>>>
    %5 = cir.load align(4) %0 : !cir.ptr<!s32i>, !s32i
    %6 = cir.cast integral %5 : !s32i -> !u64i
    %7 = cir.const #cir.int<8> : !u64i
    %8 = cir.binop(mul, %6, %7) : !u64i
    %9 = cir.call @malloc(%8) : (!u64i) -> !cir.ptr<!void> extra(#fn_attr1)
    %10 = cir.cast bitcast %9 : !cir.ptr<!void> -> !cir.ptr<!cir.ptr<!cir.double>>
    cir.store align(8) %10, %3 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>
    cir.scope {
      %13 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i", init] {alignment = 4 : i64}
      %14 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %14, %13 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %15 = cir.load align(4) %13 : !cir.ptr<!s32i>, !s32i
        %16 = cir.load align(4) %0 : !cir.ptr<!s32i>, !s32i
        %17 = cir.cmp(lt, %15, %16) : !s32i, !cir.bool
        cir.condition(%17)
      } body {
        cir.scope {
          %15 = cir.get_global @malloc : !cir.ptr<!cir.func<(!u64i) -> !cir.ptr<!void>>>
          %16 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
          %17 = cir.cast integral %16 : !s32i -> !u64i
          %18 = cir.const #cir.int<8> : !u64i
          %19 = cir.binop(mul, %17, %18) : !u64i
          %20 = cir.call @malloc(%19) : (!u64i) -> !cir.ptr<!void> extra(#fn_attr1)
          %21 = cir.cast bitcast %20 : !cir.ptr<!void> -> !cir.ptr<!cir.double>
          %22 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
          %23 = cir.load align(4) %13 : !cir.ptr<!s32i>, !s32i
          %24 = cir.ptr_stride %22, %23 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
          cir.store align(8) %21, %24 : !cir.ptr<!cir.double>, !cir.ptr<!cir.ptr<!cir.double>>
        }
        cir.yield
      } step {
        %15 = cir.load align(4) %13 : !cir.ptr<!s32i>, !s32i
        %16 = cir.unary(inc, %15) nsw : !s32i, !s32i
        cir.store align(4) %16, %13 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %11 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
    cir.store %11, %2 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>
    %12 = cir.load %2 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
    cir.return %12 : !cir.ptr<!cir.ptr<!cir.double>>
  }
  cir.func dso_local @create_uchar_2d_array(%arg0: !s32i, %arg1: !s32i) -> !cir.ptr<!cir.ptr<!u8i>> extra(#fn_attr) {
    %0 = cir.alloca !s32i, !cir.ptr<!s32i>, ["rows", init] {alignment = 4 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["cols", init] {alignment = 4 : i64}
    %2 = cir.alloca !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, ["__retval"] {alignment = 8 : i64}
    %3 = cir.alloca !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, ["arr", init] {alignment = 8 : i64}
    cir.store %arg0, %0 : !s32i, !cir.ptr<!s32i>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    %4 = cir.get_global @malloc : !cir.ptr<!cir.func<(!u64i) -> !cir.ptr<!void>>>
    %5 = cir.load align(4) %0 : !cir.ptr<!s32i>, !s32i
    %6 = cir.cast integral %5 : !s32i -> !u64i
    %7 = cir.const #cir.int<8> : !u64i
    %8 = cir.binop(mul, %6, %7) : !u64i
    %9 = cir.call @malloc(%8) : (!u64i) -> !cir.ptr<!void> extra(#fn_attr1)
    %10 = cir.cast bitcast %9 : !cir.ptr<!void> -> !cir.ptr<!cir.ptr<!u8i>>
    cir.store align(8) %10, %3 : !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>
    cir.scope {
      %13 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i", init] {alignment = 4 : i64}
      %14 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %14, %13 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %15 = cir.load align(4) %13 : !cir.ptr<!s32i>, !s32i
        %16 = cir.load align(4) %0 : !cir.ptr<!s32i>, !s32i
        %17 = cir.cmp(lt, %15, %16) : !s32i, !cir.bool
        cir.condition(%17)
      } body {
        cir.scope {
          %15 = cir.get_global @malloc : !cir.ptr<!cir.func<(!u64i) -> !cir.ptr<!void>>>
          %16 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
          %17 = cir.cast integral %16 : !s32i -> !u64i
          %18 = cir.const #cir.int<1> : !u64i
          %19 = cir.binop(mul, %17, %18) : !u64i
          %20 = cir.call @malloc(%19) : (!u64i) -> !cir.ptr<!void> extra(#fn_attr1)
          %21 = cir.cast bitcast %20 : !cir.ptr<!void> -> !cir.ptr<!u8i>
          %22 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, !cir.ptr<!cir.ptr<!u8i>>
          %23 = cir.load align(4) %13 : !cir.ptr<!s32i>, !s32i
          %24 = cir.ptr_stride %22, %23 : (!cir.ptr<!cir.ptr<!u8i>>, !s32i) -> !cir.ptr<!cir.ptr<!u8i>>
          cir.store align(8) %21, %24 : !cir.ptr<!u8i>, !cir.ptr<!cir.ptr<!u8i>>
        }
        cir.yield
      } step {
        %15 = cir.load align(4) %13 : !cir.ptr<!s32i>, !s32i
        %16 = cir.unary(inc, %15) nsw : !s32i, !s32i
        cir.store align(4) %16, %13 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %11 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, !cir.ptr<!cir.ptr<!u8i>>
    cir.store %11, %2 : !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>
    %12 = cir.load %2 : !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, !cir.ptr<!cir.ptr<!u8i>>
    cir.return %12 : !cir.ptr<!cir.ptr<!u8i>>
  }
  cir.func private @free(!cir.ptr<!void>) extra(#fn_attr1)
  cir.func dso_local @free_double_2d_array(%arg0: !cir.ptr<!cir.ptr<!cir.double>>, %arg1: !s32i) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, ["arr", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["rows", init] {alignment = 4 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.scope {
      %5 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i", init] {alignment = 4 : i64}
      %6 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %6, %5 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %7 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
        %8 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %9 = cir.cmp(lt, %7, %8) : !s32i, !cir.bool
        cir.condition(%9)
      } body {
        cir.scope {
          %7 = cir.get_global @free : !cir.ptr<!cir.func<(!cir.ptr<!void>)>>
          %8 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
          %9 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
          %10 = cir.ptr_stride %8, %9 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
          %11 = cir.load align(8) %10 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
          %12 = cir.cast bitcast %11 : !cir.ptr<!cir.double> -> !cir.ptr<!void>
          cir.call @free(%12) : (!cir.ptr<!void>) -> () extra(#fn_attr1)
        }
        cir.yield
      } step {
        %7 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
        %8 = cir.unary(inc, %7) nsw : !s32i, !s32i
        cir.store align(4) %8, %5 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %2 = cir.get_global @free : !cir.ptr<!cir.func<(!cir.ptr<!void>)>>
    %3 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
    %4 = cir.cast bitcast %3 : !cir.ptr<!cir.ptr<!cir.double>> -> !cir.ptr<!void>
    cir.call @free(%4) : (!cir.ptr<!void>) -> () extra(#fn_attr1)
    cir.return
  }
  cir.func dso_local @free_uchar_2d_array(%arg0: !cir.ptr<!cir.ptr<!u8i>>, %arg1: !s32i) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, ["arr", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["rows", init] {alignment = 4 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.scope {
      %5 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i", init] {alignment = 4 : i64}
      %6 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %6, %5 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %7 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
        %8 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %9 = cir.cmp(lt, %7, %8) : !s32i, !cir.bool
        cir.condition(%9)
      } body {
        cir.scope {
          %7 = cir.get_global @free : !cir.ptr<!cir.func<(!cir.ptr<!void>)>>
          %8 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, !cir.ptr<!cir.ptr<!u8i>>
          %9 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
          %10 = cir.ptr_stride %8, %9 : (!cir.ptr<!cir.ptr<!u8i>>, !s32i) -> !cir.ptr<!cir.ptr<!u8i>>
          %11 = cir.load align(8) %10 : !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!u8i>
          %12 = cir.cast bitcast %11 : !cir.ptr<!u8i> -> !cir.ptr<!void>
          cir.call @free(%12) : (!cir.ptr<!void>) -> () extra(#fn_attr1)
        }
        cir.yield
      } step {
        %7 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
        %8 = cir.unary(inc, %7) nsw : !s32i, !s32i
        cir.store align(4) %8, %5 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %2 = cir.get_global @free : !cir.ptr<!cir.func<(!cir.ptr<!void>)>>
    %3 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, !cir.ptr<!cir.ptr<!u8i>>
    %4 = cir.cast bitcast %3 : !cir.ptr<!cir.ptr<!u8i>> -> !cir.ptr<!void>
    cir.call @free(%4) : (!cir.ptr<!void>) -> () extra(#fn_attr1)
    cir.return
  }
  cir.func private @log(!cir.double) -> !cir.double extra(#fn_attr1)
  cir.func private @fopen(!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>
  cir.global "private" constant cir_private dso_local @".str.1" = #cir.const_array<"wb\00" : !cir.array<!s8i x 3>> : !cir.array<!s8i x 3> {alignment = 1 : i64}
  cir.global "private" constant cir_private dso_local @".str.2" = #cir.const_array<"Error: Cannot open file %s\0A\00" : !cir.array<!s8i x 28>> : !cir.array<!s8i x 28> {alignment = 1 : i64}
  cir.func private @fwrite(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
  cir.global "private" constant cir_private dso_local @".str.3" = #cir.const_array<"BM\00" : !cir.array<!s8i x 3>> : !cir.array<!s8i x 3> {alignment = 1 : i64}
  cir.func private @fclose(!cir.ptr<!rec__IO_FILE>) -> !s32i
  cir.func dso_local @showdata(%arg0: !cir.ptr<!cir.ptr<!cir.double>>, %arg1: !s32i, %arg2: !s32i, %arg3: !cir.ptr<!s8i>, %arg4: !u32i) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, ["data", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["a", init] {alignment = 4 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["r", init] {alignment = 4 : i64}
    %3 = cir.alloca !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>, ["name", init] {alignment = 8 : i64}
    %4 = cir.alloca !u32i, !cir.ptr<!u32i>, ["numway", init] {alignment = 4 : i64}
    %5 = cir.alloca !s32i, !cir.ptr<!s32i>, ["bfSize"] {alignment = 4 : i64}
    %6 = cir.alloca !s16i, !cir.ptr<!s16i>, ["bfReserved1"] {alignment = 2 : i64}
    %7 = cir.alloca !s16i, !cir.ptr<!s16i>, ["bfReserved2"] {alignment = 2 : i64}
    %8 = cir.alloca !s32i, !cir.ptr<!s32i>, ["bfOffBytes"] {alignment = 4 : i64}
    %9 = cir.alloca !s32i, !cir.ptr<!s32i>, ["biSize"] {alignment = 4 : i64}
    %10 = cir.alloca !s32i, !cir.ptr<!s32i>, ["biWidth"] {alignment = 4 : i64}
    %11 = cir.alloca !s32i, !cir.ptr<!s32i>, ["biHeight"] {alignment = 4 : i64}
    %12 = cir.alloca !s16i, !cir.ptr<!s16i>, ["biPlanes"] {alignment = 2 : i64}
    %13 = cir.alloca !s16i, !cir.ptr<!s16i>, ["biBitCount"] {alignment = 2 : i64}
    %14 = cir.alloca !s32i, !cir.ptr<!s32i>, ["bicompression"] {alignment = 4 : i64}
    %15 = cir.alloca !s32i, !cir.ptr<!s32i>, ["biSizeImage"] {alignment = 4 : i64}
    %16 = cir.alloca !s32i, !cir.ptr<!s32i>, ["biXPelsPerMeter"] {alignment = 4 : i64}
    %17 = cir.alloca !s32i, !cir.ptr<!s32i>, ["biYPelsPerMeter"] {alignment = 4 : i64}
    %18 = cir.alloca !s32i, !cir.ptr<!s32i>, ["biClrUsed"] {alignment = 4 : i64}
    %19 = cir.alloca !s32i, !cir.ptr<!s32i>, ["biClrColors"] {alignment = 4 : i64}
    %20 = cir.alloca !cir.array<!u8i x 256>, !cir.ptr<!cir.array<!u8i x 256>>, ["bmiRed"] {alignment = 16 : i64}
    %21 = cir.alloca !cir.array<!u8i x 256>, !cir.ptr<!cir.array<!u8i x 256>>, ["bmiGreen"] {alignment = 16 : i64}
    %22 = cir.alloca !cir.array<!u8i x 256>, !cir.ptr<!cir.array<!u8i x 256>>, ["bmiBlue"] {alignment = 16 : i64}
    %23 = cir.alloca !cir.array<!u8i x 256>, !cir.ptr<!cir.array<!u8i x 256>>, ["bmiReserved"] {alignment = 16 : i64}
    %24 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i"] {alignment = 4 : i64}
    %25 = cir.alloca !s32i, !cir.ptr<!s32i>, ["j"] {alignment = 4 : i64}
    %26 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["max"] {alignment = 8 : i64}
    %27 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["min"] {alignment = 8 : i64}
    %28 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["mean"] {alignment = 8 : i64}
    %29 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["d"] {alignment = 8 : i64}
    %30 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["temp"] {alignment = 8 : i64}
    %31 = cir.alloca !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, ["sad"] {alignment = 8 : i64}
    %32 = cir.alloca !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>, ["fp"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.store %arg2, %2 : !s32i, !cir.ptr<!s32i>
    cir.store %arg3, %3 : !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>
    cir.store %arg4, %4 : !u32i, !cir.ptr<!u32i>
    %33 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
    %34 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
    %35 = cir.call @create_uchar_2d_array(%33, %34) : (!s32i, !s32i) -> !cir.ptr<!cir.ptr<!u8i>>
    cir.store align(8) %35, %31 : !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>
    cir.scope {
      %204 = cir.load align(4) %4 : !cir.ptr<!u32i>, !u32i
      cir.switch (%204 : !u32i) {
        cir.case(equal, [#cir.int<0> : !u32i]) {
          cir.scope {
            %205 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %205, %24 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %206 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
              %207 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
              %208 = cir.cmp(lt, %206, %207) : !s32i, !cir.bool
              cir.condition(%208)
            } body {
              cir.scope {
                cir.scope {
                  %206 = cir.const #cir.int<0> : !s32i
                  cir.store align(4) %206, %25 : !s32i, !cir.ptr<!s32i>
                  cir.for : cond {
                    %207 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                    %208 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                    %209 = cir.cmp(lt, %207, %208) : !s32i, !cir.bool
                    cir.condition(%209)
                  } body {
                    cir.scope {
                      cir.scope {
                        %207 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
                        %208 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                        %209 = cir.ptr_stride %207, %208 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
                        %210 = cir.load align(8) %209 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
                        %211 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                        %212 = cir.ptr_stride %210, %211 : (!cir.ptr<!cir.double>, !s32i) -> !cir.ptr<!cir.double>
                        %213 = cir.load align(8) %212 : !cir.ptr<!cir.double>, !cir.double
                        %214 = cir.const #cir.int<0> : !s32i
                        %215 = cir.cast int_to_float %214 : !s32i -> !cir.double
                        %216 = cir.cmp(ge, %213, %215) : !cir.double, !cir.bool
                        cir.if %216 {
                          %217 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
                          %218 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                          %219 = cir.ptr_stride %217, %218 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
                          %220 = cir.load align(8) %219 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
                          %221 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                          %222 = cir.ptr_stride %220, %221 : (!cir.ptr<!cir.double>, !s32i) -> !cir.ptr<!cir.double>
                          %223 = cir.load align(8) %222 : !cir.ptr<!cir.double>, !cir.double
                          %224 = cir.const #cir.fp<2.550000e+02> : !cir.double
                          %225 = cir.binop(mul, %223, %224) : !cir.double
                          %226 = cir.const #cir.int<2> : !s32i
                          %227 = cir.cast int_to_float %226 : !s32i -> !cir.double
                          %228 = cir.const #cir.fp<3.1415926535000001> : !cir.double
                          %229 = cir.binop(mul, %227, %228) : !cir.double
                          %230 = cir.binop(div, %225, %229) : !cir.double
                          %231 = cir.cast float_to_int %230 : !cir.double -> !u8i
                          %232 = cir.load align(8) %31 : !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, !cir.ptr<!cir.ptr<!u8i>>
                          %233 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                          %234 = cir.ptr_stride %232, %233 : (!cir.ptr<!cir.ptr<!u8i>>, !s32i) -> !cir.ptr<!cir.ptr<!u8i>>
                          %235 = cir.load align(8) %234 : !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!u8i>
                          %236 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                          %237 = cir.ptr_stride %235, %236 : (!cir.ptr<!u8i>, !s32i) -> !cir.ptr<!u8i>
                          cir.store align(1) %231, %237 : !u8i, !cir.ptr<!u8i>
                        } else {
                          %217 = cir.const #cir.int<2> : !s32i
                          %218 = cir.cast int_to_float %217 : !s32i -> !cir.double
                          %219 = cir.const #cir.fp<3.1415926535000001> : !cir.double
                          %220 = cir.binop(mul, %218, %219) : !cir.double
                          %221 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
                          %222 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                          %223 = cir.ptr_stride %221, %222 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
                          %224 = cir.load align(8) %223 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
                          %225 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                          %226 = cir.ptr_stride %224, %225 : (!cir.ptr<!cir.double>, !s32i) -> !cir.ptr<!cir.double>
                          %227 = cir.load align(8) %226 : !cir.ptr<!cir.double>, !cir.double
                          %228 = cir.binop(add, %220, %227) : !cir.double
                          %229 = cir.const #cir.fp<2.550000e+02> : !cir.double
                          %230 = cir.binop(mul, %228, %229) : !cir.double
                          %231 = cir.const #cir.int<2> : !s32i
                          %232 = cir.cast int_to_float %231 : !s32i -> !cir.double
                          %233 = cir.const #cir.fp<3.1415926535000001> : !cir.double
                          %234 = cir.binop(mul, %232, %233) : !cir.double
                          %235 = cir.binop(div, %230, %234) : !cir.double
                          %236 = cir.cast float_to_int %235 : !cir.double -> !u8i
                          %237 = cir.load align(8) %31 : !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, !cir.ptr<!cir.ptr<!u8i>>
                          %238 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                          %239 = cir.ptr_stride %237, %238 : (!cir.ptr<!cir.ptr<!u8i>>, !s32i) -> !cir.ptr<!cir.ptr<!u8i>>
                          %240 = cir.load align(8) %239 : !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!u8i>
                          %241 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                          %242 = cir.ptr_stride %240, %241 : (!cir.ptr<!u8i>, !s32i) -> !cir.ptr<!u8i>
                          cir.store align(1) %236, %242 : !u8i, !cir.ptr<!u8i>
                        }
                      }
                    }
                    cir.yield
                  } step {
                    %207 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                    %208 = cir.unary(inc, %207) nsw : !s32i, !s32i
                    cir.store align(4) %208, %25 : !s32i, !cir.ptr<!s32i>
                    cir.yield
                  }
                }
              }
              cir.yield
            } step {
              %206 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
              %207 = cir.unary(inc, %206) nsw : !s32i, !s32i
              cir.store align(4) %207, %24 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
          cir.break
        }
        cir.case(equal, [#cir.int<1> : !u32i]) {
          %205 = cir.const #cir.int<0> : !s32i
          %206 = cir.cast int_to_float %205 : !s32i -> !cir.double
          cir.store align(8) %206, %28 : !cir.double, !cir.ptr<!cir.double>
          %207 = cir.const #cir.int<0> : !s32i
          %208 = cir.cast int_to_float %207 : !s32i -> !cir.double
          cir.store align(8) %208, %29 : !cir.double, !cir.ptr<!cir.double>
          cir.scope {
            %236 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %236, %24 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %237 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
              %238 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
              %239 = cir.cmp(lt, %237, %238) : !s32i, !cir.bool
              cir.condition(%239)
            } body {
              cir.scope {
                cir.scope {
                  %237 = cir.const #cir.int<0> : !s32i
                  cir.store align(4) %237, %25 : !s32i, !cir.ptr<!s32i>
                  cir.for : cond {
                    %238 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                    %239 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                    %240 = cir.cmp(lt, %238, %239) : !s32i, !cir.bool
                    cir.condition(%240)
                  } body {
                    cir.scope {
                      %238 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
                      %239 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                      %240 = cir.ptr_stride %238, %239 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
                      %241 = cir.load align(8) %240 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
                      %242 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                      %243 = cir.ptr_stride %241, %242 : (!cir.ptr<!cir.double>, !s32i) -> !cir.ptr<!cir.double>
                      %244 = cir.load align(8) %243 : !cir.ptr<!cir.double>, !cir.double
                      %245 = cir.load align(8) %28 : !cir.ptr<!cir.double>, !cir.double
                      %246 = cir.binop(add, %245, %244) : !cir.double
                      cir.store align(8) %246, %28 : !cir.double, !cir.ptr<!cir.double>
                    }
                    cir.yield
                  } step {
                    %238 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                    %239 = cir.unary(inc, %238) nsw : !s32i, !s32i
                    cir.store align(4) %239, %25 : !s32i, !cir.ptr<!s32i>
                    cir.yield
                  }
                }
              }
              cir.yield
            } step {
              %237 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
              %238 = cir.unary(inc, %237) nsw : !s32i, !s32i
              cir.store align(4) %238, %24 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
          %209 = cir.load align(8) %28 : !cir.ptr<!cir.double>, !cir.double
          %210 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
          %211 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
          %212 = cir.binop(mul, %210, %211) nsw : !s32i
          %213 = cir.cast int_to_float %212 : !s32i -> !cir.double
          %214 = cir.binop(div, %209, %213) : !cir.double
          cir.store align(8) %214, %28 : !cir.double, !cir.ptr<!cir.double>
          cir.scope {
            %236 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %236, %24 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %237 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
              %238 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
              %239 = cir.cmp(lt, %237, %238) : !s32i, !cir.bool
              cir.condition(%239)
            } body {
              cir.scope {
                cir.scope {
                  %237 = cir.const #cir.int<0> : !s32i
                  cir.store align(4) %237, %25 : !s32i, !cir.ptr<!s32i>
                  cir.for : cond {
                    %238 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                    %239 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                    %240 = cir.cmp(lt, %238, %239) : !s32i, !cir.bool
                    cir.condition(%240)
                  } body {
                    cir.scope {
                      %238 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
                      %239 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                      %240 = cir.ptr_stride %238, %239 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
                      %241 = cir.load align(8) %240 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
                      %242 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                      %243 = cir.ptr_stride %241, %242 : (!cir.ptr<!cir.double>, !s32i) -> !cir.ptr<!cir.double>
                      %244 = cir.load align(8) %243 : !cir.ptr<!cir.double>, !cir.double
                      %245 = cir.load align(8) %28 : !cir.ptr<!cir.double>, !cir.double
                      %246 = cir.binop(sub, %244, %245) : !cir.double
                      cir.store align(8) %246, %30 : !cir.double, !cir.ptr<!cir.double>
                      %247 = cir.load align(8) %30 : !cir.ptr<!cir.double>, !cir.double
                      %248 = cir.load align(8) %30 : !cir.ptr<!cir.double>, !cir.double
                      %249 = cir.binop(mul, %247, %248) : !cir.double
                      %250 = cir.load align(8) %29 : !cir.ptr<!cir.double>, !cir.double
                      %251 = cir.binop(add, %250, %249) : !cir.double
                      cir.store align(8) %251, %29 : !cir.double, !cir.ptr<!cir.double>
                    }
                    cir.yield
                  } step {
                    %238 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                    %239 = cir.unary(inc, %238) nsw : !s32i, !s32i
                    cir.store align(4) %239, %25 : !s32i, !cir.ptr<!s32i>
                    cir.yield
                  }
                }
              }
              cir.yield
            } step {
              %237 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
              %238 = cir.unary(inc, %237) nsw : !s32i, !s32i
              cir.store align(4) %238, %24 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
          %215 = cir.load align(8) %29 : !cir.ptr<!cir.double>, !cir.double
          %216 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
          %217 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
          %218 = cir.binop(mul, %216, %217) nsw : !s32i
          %219 = cir.cast int_to_float %218 : !s32i -> !cir.double
          %220 = cir.binop(div, %215, %219) : !cir.double
          cir.store align(8) %220, %29 : !cir.double, !cir.ptr<!cir.double>
          %221 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
          %222 = cir.load align(8) %29 : !cir.ptr<!cir.double>, !cir.double
          %223 = cir.call @sqrt(%222) : (!cir.double) -> !cir.double extra(#fn_attr1)
          cir.store align(8) %223, %29 : !cir.double, !cir.ptr<!cir.double>
          %224 = cir.load align(8) %28 : !cir.ptr<!cir.double>, !cir.double
          %225 = cir.const #cir.int<2> : !s32i
          %226 = cir.cast int_to_float %225 : !s32i -> !cir.double
          %227 = cir.load align(8) %29 : !cir.ptr<!cir.double>, !cir.double
          %228 = cir.binop(mul, %226, %227) : !cir.double
          %229 = cir.binop(sub, %224, %228) : !cir.double
          cir.store align(8) %229, %27 : !cir.double, !cir.ptr<!cir.double>
          %230 = cir.load align(8) %28 : !cir.ptr<!cir.double>, !cir.double
          %231 = cir.const #cir.int<2> : !s32i
          %232 = cir.cast int_to_float %231 : !s32i -> !cir.double
          %233 = cir.load align(8) %29 : !cir.ptr<!cir.double>, !cir.double
          %234 = cir.binop(mul, %232, %233) : !cir.double
          %235 = cir.binop(add, %230, %234) : !cir.double
          cir.store align(8) %235, %26 : !cir.double, !cir.ptr<!cir.double>
          cir.scope {
            %236 = cir.load align(8) %27 : !cir.ptr<!cir.double>, !cir.double
            %237 = cir.const #cir.int<0> : !s32i
            %238 = cir.cast int_to_float %237 : !s32i -> !cir.double
            %239 = cir.cmp(lt, %236, %238) : !cir.double, !cir.bool
            cir.if %239 {
              cir.scope {
                %240 = cir.const #cir.int<0> : !s32i
                cir.store align(4) %240, %24 : !s32i, !cir.ptr<!s32i>
                cir.for : cond {
                  %241 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                  %242 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                  %243 = cir.cmp(lt, %241, %242) : !s32i, !cir.bool
                  cir.condition(%243)
                } body {
                  cir.scope {
                    cir.scope {
                      %241 = cir.const #cir.int<0> : !s32i
                      cir.store align(4) %241, %25 : !s32i, !cir.ptr<!s32i>
                      cir.for : cond {
                        %242 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                        %243 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                        %244 = cir.cmp(lt, %242, %243) : !s32i, !cir.bool
                        cir.condition(%244)
                      } body {
                        cir.scope {
                          %242 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
                          %243 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                          %244 = cir.ptr_stride %242, %243 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
                          %245 = cir.load align(8) %244 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
                          %246 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                          %247 = cir.ptr_stride %245, %246 : (!cir.ptr<!cir.double>, !s32i) -> !cir.ptr<!cir.double>
                          %248 = cir.load align(8) %247 : !cir.ptr<!cir.double>, !cir.double
                          cir.store align(8) %248, %30 : !cir.double, !cir.ptr<!cir.double>
                          cir.scope {
                            %249 = cir.load align(8) %30 : !cir.ptr<!cir.double>, !cir.double
                            %250 = cir.load align(8) %26 : !cir.ptr<!cir.double>, !cir.double
                            %251 = cir.cmp(lt, %249, %250) : !cir.double, !cir.bool
                            cir.if %251 {
                              %252 = cir.load align(8) %30 : !cir.ptr<!cir.double>, !cir.double
                              %253 = cir.load align(8) %26 : !cir.ptr<!cir.double>, !cir.double
                              %254 = cir.binop(div, %252, %253) : !cir.double
                              %255 = cir.const #cir.fp<2.550000e+02> : !cir.double
                              %256 = cir.binop(mul, %254, %255) : !cir.double
                              %257 = cir.cast float_to_int %256 : !cir.double -> !u8i
                              %258 = cir.load align(8) %31 : !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, !cir.ptr<!cir.ptr<!u8i>>
                              %259 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                              %260 = cir.ptr_stride %258, %259 : (!cir.ptr<!cir.ptr<!u8i>>, !s32i) -> !cir.ptr<!cir.ptr<!u8i>>
                              %261 = cir.load align(8) %260 : !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!u8i>
                              %262 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                              %263 = cir.ptr_stride %261, %262 : (!cir.ptr<!u8i>, !s32i) -> !cir.ptr<!u8i>
                              cir.store align(1) %257, %263 : !u8i, !cir.ptr<!u8i>
                            } else {
                              %252 = cir.const #cir.int<255> : !s32i
                              %253 = cir.cast integral %252 : !s32i -> !u8i
                              %254 = cir.load align(8) %31 : !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, !cir.ptr<!cir.ptr<!u8i>>
                              %255 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                              %256 = cir.ptr_stride %254, %255 : (!cir.ptr<!cir.ptr<!u8i>>, !s32i) -> !cir.ptr<!cir.ptr<!u8i>>
                              %257 = cir.load align(8) %256 : !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!u8i>
                              %258 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                              %259 = cir.ptr_stride %257, %258 : (!cir.ptr<!u8i>, !s32i) -> !cir.ptr<!u8i>
                              cir.store align(1) %253, %259 : !u8i, !cir.ptr<!u8i>
                            }
                          }
                        }
                        cir.yield
                      } step {
                        %242 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                        %243 = cir.unary(inc, %242) nsw : !s32i, !s32i
                        cir.store align(4) %243, %25 : !s32i, !cir.ptr<!s32i>
                        cir.yield
                      }
                    }
                  }
                  cir.yield
                } step {
                  %241 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                  %242 = cir.unary(inc, %241) nsw : !s32i, !s32i
                  cir.store align(4) %242, %24 : !s32i, !cir.ptr<!s32i>
                  cir.yield
                }
              }
            } else {
              cir.scope {
                %240 = cir.const #cir.int<0> : !s32i
                cir.store align(4) %240, %24 : !s32i, !cir.ptr<!s32i>
                cir.for : cond {
                  %241 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                  %242 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                  %243 = cir.cmp(lt, %241, %242) : !s32i, !cir.bool
                  cir.condition(%243)
                } body {
                  cir.scope {
                    cir.scope {
                      %241 = cir.const #cir.int<0> : !s32i
                      cir.store align(4) %241, %25 : !s32i, !cir.ptr<!s32i>
                      cir.for : cond {
                        %242 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                        %243 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                        %244 = cir.cmp(lt, %242, %243) : !s32i, !cir.bool
                        cir.condition(%244)
                      } body {
                        cir.scope {
                          %242 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
                          %243 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                          %244 = cir.ptr_stride %242, %243 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
                          %245 = cir.load align(8) %244 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
                          %246 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                          %247 = cir.ptr_stride %245, %246 : (!cir.ptr<!cir.double>, !s32i) -> !cir.ptr<!cir.double>
                          %248 = cir.load align(8) %247 : !cir.ptr<!cir.double>, !cir.double
                          cir.store align(8) %248, %30 : !cir.double, !cir.ptr<!cir.double>
                          cir.scope {
                            %249 = cir.load align(8) %30 : !cir.ptr<!cir.double>, !cir.double
                            %250 = cir.load align(8) %27 : !cir.ptr<!cir.double>, !cir.double
                            %251 = cir.cmp(lt, %249, %250) : !cir.double, !cir.bool
                            cir.if %251 {
                              %252 = cir.const #cir.int<0> : !s32i
                              %253 = cir.cast integral %252 : !s32i -> !u8i
                              %254 = cir.load align(8) %31 : !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, !cir.ptr<!cir.ptr<!u8i>>
                              %255 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                              %256 = cir.ptr_stride %254, %255 : (!cir.ptr<!cir.ptr<!u8i>>, !s32i) -> !cir.ptr<!cir.ptr<!u8i>>
                              %257 = cir.load align(8) %256 : !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!u8i>
                              %258 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                              %259 = cir.ptr_stride %257, %258 : (!cir.ptr<!u8i>, !s32i) -> !cir.ptr<!u8i>
                              cir.store align(1) %253, %259 : !u8i, !cir.ptr<!u8i>
                            } else {
                              cir.scope {
                                %252 = cir.load align(8) %30 : !cir.ptr<!cir.double>, !cir.double
                                %253 = cir.load align(8) %26 : !cir.ptr<!cir.double>, !cir.double
                                %254 = cir.cmp(gt, %252, %253) : !cir.double, !cir.bool
                                cir.if %254 {
                                  %255 = cir.const #cir.int<255> : !s32i
                                  %256 = cir.cast integral %255 : !s32i -> !u8i
                                  %257 = cir.load align(8) %31 : !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, !cir.ptr<!cir.ptr<!u8i>>
                                  %258 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                                  %259 = cir.ptr_stride %257, %258 : (!cir.ptr<!cir.ptr<!u8i>>, !s32i) -> !cir.ptr<!cir.ptr<!u8i>>
                                  %260 = cir.load align(8) %259 : !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!u8i>
                                  %261 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                                  %262 = cir.ptr_stride %260, %261 : (!cir.ptr<!u8i>, !s32i) -> !cir.ptr<!u8i>
                                  cir.store align(1) %256, %262 : !u8i, !cir.ptr<!u8i>
                                } else {
                                  %255 = cir.load align(8) %30 : !cir.ptr<!cir.double>, !cir.double
                                  %256 = cir.load align(8) %27 : !cir.ptr<!cir.double>, !cir.double
                                  %257 = cir.binop(sub, %255, %256) : !cir.double
                                  %258 = cir.const #cir.int<4> : !s32i
                                  %259 = cir.cast int_to_float %258 : !s32i -> !cir.double
                                  %260 = cir.load align(8) %29 : !cir.ptr<!cir.double>, !cir.double
                                  %261 = cir.binop(mul, %259, %260) : !cir.double
                                  %262 = cir.binop(div, %257, %261) : !cir.double
                                  %263 = cir.const #cir.fp<2.550000e+02> : !cir.double
                                  %264 = cir.binop(mul, %262, %263) : !cir.double
                                  %265 = cir.cast float_to_int %264 : !cir.double -> !u8i
                                  %266 = cir.load align(8) %31 : !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, !cir.ptr<!cir.ptr<!u8i>>
                                  %267 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                                  %268 = cir.ptr_stride %266, %267 : (!cir.ptr<!cir.ptr<!u8i>>, !s32i) -> !cir.ptr<!cir.ptr<!u8i>>
                                  %269 = cir.load align(8) %268 : !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!u8i>
                                  %270 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                                  %271 = cir.ptr_stride %269, %270 : (!cir.ptr<!u8i>, !s32i) -> !cir.ptr<!u8i>
                                  cir.store align(1) %265, %271 : !u8i, !cir.ptr<!u8i>
                                }
                              }
                            }
                          }
                        }
                        cir.yield
                      } step {
                        %242 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                        %243 = cir.unary(inc, %242) nsw : !s32i, !s32i
                        cir.store align(4) %243, %25 : !s32i, !cir.ptr<!s32i>
                        cir.yield
                      }
                    }
                  }
                  cir.yield
                } step {
                  %241 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                  %242 = cir.unary(inc, %241) nsw : !s32i, !s32i
                  cir.store align(4) %242, %24 : !s32i, !cir.ptr<!s32i>
                  cir.yield
                }
              }
            }
          }
          cir.break
        }
        cir.case(equal, [#cir.int<2> : !u32i]) {
          cir.scope {
            %214 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %214, %24 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %215 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
              %216 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
              %217 = cir.cmp(lt, %215, %216) : !s32i, !cir.bool
              cir.condition(%217)
            } body {
              cir.scope {
                cir.scope {
                  %215 = cir.const #cir.int<0> : !s32i
                  cir.store align(4) %215, %25 : !s32i, !cir.ptr<!s32i>
                  cir.for : cond {
                    %216 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                    %217 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                    %218 = cir.cmp(lt, %216, %217) : !s32i, !cir.bool
                    cir.condition(%218)
                  } body {
                    cir.scope {
                      %216 = cir.get_global @log : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
                      %217 = cir.const #cir.int<1> : !s32i
                      %218 = cir.cast int_to_float %217 : !s32i -> !cir.double
                      %219 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
                      %220 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                      %221 = cir.ptr_stride %219, %220 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
                      %222 = cir.load align(8) %221 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
                      %223 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                      %224 = cir.ptr_stride %222, %223 : (!cir.ptr<!cir.double>, !s32i) -> !cir.ptr<!cir.double>
                      %225 = cir.load align(8) %224 : !cir.ptr<!cir.double>, !cir.double
                      %226 = cir.binop(add, %218, %225) : !cir.double
                      %227 = cir.call @log(%226) : (!cir.double) -> !cir.double extra(#fn_attr1)
                      %228 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
                      %229 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                      %230 = cir.ptr_stride %228, %229 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
                      %231 = cir.load align(8) %230 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
                      %232 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                      %233 = cir.ptr_stride %231, %232 : (!cir.ptr<!cir.double>, !s32i) -> !cir.ptr<!cir.double>
                      cir.store align(8) %227, %233 : !cir.double, !cir.ptr<!cir.double>
                    }
                    cir.yield
                  } step {
                    %216 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                    %217 = cir.unary(inc, %216) nsw : !s32i, !s32i
                    cir.store align(4) %217, %25 : !s32i, !cir.ptr<!s32i>
                    cir.yield
                  }
                }
              }
              cir.yield
            } step {
              %215 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
              %216 = cir.unary(inc, %215) nsw : !s32i, !s32i
              cir.store align(4) %216, %24 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
          %205 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
          %206 = cir.const #cir.int<0> : !s32i
          %207 = cir.ptr_stride %205, %206 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
          %208 = cir.load align(8) %207 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
          %209 = cir.const #cir.int<0> : !s32i
          %210 = cir.ptr_stride %208, %209 : (!cir.ptr<!cir.double>, !s32i) -> !cir.ptr<!cir.double>
          %211 = cir.load align(8) %210 : !cir.ptr<!cir.double>, !cir.double
          cir.store align(8) %211, %26 : !cir.double, !cir.ptr<!cir.double>
          %212 = cir.const #cir.int<0> : !s32i
          %213 = cir.cast int_to_float %212 : !s32i -> !cir.double
          cir.store align(8) %213, %27 : !cir.double, !cir.ptr<!cir.double>
          cir.scope {
            %214 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %214, %24 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %215 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
              %216 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
              %217 = cir.cmp(lt, %215, %216) : !s32i, !cir.bool
              cir.condition(%217)
            } body {
              cir.scope {
                cir.scope {
                  %215 = cir.const #cir.int<0> : !s32i
                  cir.store align(4) %215, %25 : !s32i, !cir.ptr<!s32i>
                  cir.for : cond {
                    %216 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                    %217 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                    %218 = cir.cmp(lt, %216, %217) : !s32i, !cir.bool
                    cir.condition(%218)
                  } body {
                    cir.scope {
                      cir.scope {
                        %216 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
                        %217 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                        %218 = cir.ptr_stride %216, %217 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
                        %219 = cir.load align(8) %218 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
                        %220 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                        %221 = cir.ptr_stride %219, %220 : (!cir.ptr<!cir.double>, !s32i) -> !cir.ptr<!cir.double>
                        %222 = cir.load align(8) %221 : !cir.ptr<!cir.double>, !cir.double
                        %223 = cir.load align(8) %26 : !cir.ptr<!cir.double>, !cir.double
                        %224 = cir.cmp(gt, %222, %223) : !cir.double, !cir.bool
                        cir.if %224 {
                          %225 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
                          %226 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                          %227 = cir.ptr_stride %225, %226 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
                          %228 = cir.load align(8) %227 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
                          %229 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                          %230 = cir.ptr_stride %228, %229 : (!cir.ptr<!cir.double>, !s32i) -> !cir.ptr<!cir.double>
                          %231 = cir.load align(8) %230 : !cir.ptr<!cir.double>, !cir.double
                          cir.store align(8) %231, %26 : !cir.double, !cir.ptr<!cir.double>
                        }
                      }
                    }
                    cir.yield
                  } step {
                    %216 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                    %217 = cir.unary(inc, %216) nsw : !s32i, !s32i
                    cir.store align(4) %217, %25 : !s32i, !cir.ptr<!s32i>
                    cir.yield
                  }
                }
              }
              cir.yield
            } step {
              %215 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
              %216 = cir.unary(inc, %215) nsw : !s32i, !s32i
              cir.store align(4) %216, %24 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
          cir.scope {
            %214 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %214, %24 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %215 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
              %216 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
              %217 = cir.cmp(lt, %215, %216) : !s32i, !cir.bool
              cir.condition(%217)
            } body {
              cir.scope {
                cir.scope {
                  %215 = cir.const #cir.int<0> : !s32i
                  cir.store align(4) %215, %25 : !s32i, !cir.ptr<!s32i>
                  cir.for : cond {
                    %216 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                    %217 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                    %218 = cir.cmp(lt, %216, %217) : !s32i, !cir.bool
                    cir.condition(%218)
                  } body {
                    cir.scope {
                      %216 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
                      %217 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                      %218 = cir.ptr_stride %216, %217 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
                      %219 = cir.load align(8) %218 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
                      %220 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                      %221 = cir.ptr_stride %219, %220 : (!cir.ptr<!cir.double>, !s32i) -> !cir.ptr<!cir.double>
                      %222 = cir.load align(8) %221 : !cir.ptr<!cir.double>, !cir.double
                      %223 = cir.load align(8) %26 : !cir.ptr<!cir.double>, !cir.double
                      %224 = cir.binop(div, %222, %223) : !cir.double
                      %225 = cir.const #cir.fp<2.550000e+02> : !cir.double
                      %226 = cir.binop(mul, %224, %225) : !cir.double
                      %227 = cir.cast float_to_int %226 : !cir.double -> !u8i
                      %228 = cir.load align(8) %31 : !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, !cir.ptr<!cir.ptr<!u8i>>
                      %229 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
                      %230 = cir.ptr_stride %228, %229 : (!cir.ptr<!cir.ptr<!u8i>>, !s32i) -> !cir.ptr<!cir.ptr<!u8i>>
                      %231 = cir.load align(8) %230 : !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!u8i>
                      %232 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                      %233 = cir.ptr_stride %231, %232 : (!cir.ptr<!u8i>, !s32i) -> !cir.ptr<!u8i>
                      cir.store align(1) %227, %233 : !u8i, !cir.ptr<!u8i>
                    }
                    cir.yield
                  } step {
                    %216 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                    %217 = cir.unary(inc, %216) nsw : !s32i, !s32i
                    cir.store align(4) %217, %25 : !s32i, !cir.ptr<!s32i>
                    cir.yield
                  }
                }
              }
              cir.yield
            } step {
              %215 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
              %216 = cir.unary(inc, %215) nsw : !s32i, !s32i
              cir.store align(4) %216, %24 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
          cir.break
        }
        cir.case(default, []) {
          cir.break
        }
        cir.yield
      }
    }
    %36 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
    %37 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
    %38 = cir.binop(mul, %36, %37) nsw : !s32i
    %39 = cir.const #cir.int<1024> : !s32i
    %40 = cir.binop(add, %38, %39) nsw : !s32i
    %41 = cir.const #cir.int<54> : !s32i
    %42 = cir.binop(add, %40, %41) nsw : !s32i
    cir.store align(4) %42, %5 : !s32i, !cir.ptr<!s32i>
    %43 = cir.const #cir.int<0> : !s32i
    %44 = cir.cast integral %43 : !s32i -> !s16i
    cir.store align(2) %44, %6 : !s16i, !cir.ptr<!s16i>
    %45 = cir.const #cir.int<0> : !s32i
    %46 = cir.cast integral %45 : !s32i -> !s16i
    cir.store align(2) %46, %7 : !s16i, !cir.ptr<!s16i>
    %47 = cir.const #cir.int<1024> : !s32i
    %48 = cir.const #cir.int<54> : !s32i
    %49 = cir.binop(add, %47, %48) nsw : !s32i
    cir.store align(4) %49, %8 : !s32i, !cir.ptr<!s32i>
    %50 = cir.const #cir.int<40> : !s32i
    cir.store align(4) %50, %9 : !s32i, !cir.ptr<!s32i>
    %51 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
    cir.store align(4) %51, %10 : !s32i, !cir.ptr<!s32i>
    %52 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
    cir.store align(4) %52, %11 : !s32i, !cir.ptr<!s32i>
    %53 = cir.const #cir.int<1> : !s32i
    %54 = cir.cast integral %53 : !s32i -> !s16i
    cir.store align(2) %54, %12 : !s16i, !cir.ptr<!s16i>
    %55 = cir.const #cir.int<8> : !s32i
    %56 = cir.cast integral %55 : !s32i -> !s16i
    cir.store align(2) %56, %13 : !s16i, !cir.ptr<!s16i>
    %57 = cir.const #cir.int<0> : !s32i
    cir.store align(4) %57, %14 : !s32i, !cir.ptr<!s32i>
    %58 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
    %59 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
    %60 = cir.binop(mul, %58, %59) nsw : !s32i
    cir.store align(4) %60, %15 : !s32i, !cir.ptr<!s32i>
    %61 = cir.const #cir.int<0> : !s32i
    cir.store align(4) %61, %16 : !s32i, !cir.ptr<!s32i>
    %62 = cir.const #cir.int<0> : !s32i
    cir.store align(4) %62, %17 : !s32i, !cir.ptr<!s32i>
    %63 = cir.const #cir.int<0> : !s32i
    cir.store align(4) %63, %18 : !s32i, !cir.ptr<!s32i>
    %64 = cir.const #cir.int<0> : !s32i
    cir.store align(4) %64, %19 : !s32i, !cir.ptr<!s32i>
    cir.scope {
      %204 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %204, %24 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %205 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
        %206 = cir.const #cir.int<256> : !s32i
        %207 = cir.cmp(lt, %205, %206) : !s32i, !cir.bool
        cir.condition(%207)
      } body {
        cir.scope {
          %205 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
          %206 = cir.cast integral %205 : !s32i -> !u8i
          %207 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
          %208 = cir.get_element %20[%207] : (!cir.ptr<!cir.array<!u8i x 256>>, !s32i) -> !cir.ptr<!u8i>
          cir.store align(1) %206, %208 : !u8i, !cir.ptr<!u8i>
          %209 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
          %210 = cir.cast integral %209 : !s32i -> !u8i
          %211 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
          %212 = cir.get_element %21[%211] : (!cir.ptr<!cir.array<!u8i x 256>>, !s32i) -> !cir.ptr<!u8i>
          cir.store align(1) %210, %212 : !u8i, !cir.ptr<!u8i>
          %213 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
          %214 = cir.cast integral %213 : !s32i -> !u8i
          %215 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
          %216 = cir.get_element %22[%215] : (!cir.ptr<!cir.array<!u8i x 256>>, !s32i) -> !cir.ptr<!u8i>
          cir.store align(1) %214, %216 : !u8i, !cir.ptr<!u8i>
          %217 = cir.const #cir.int<0> : !s32i
          %218 = cir.cast integral %217 : !s32i -> !u8i
          %219 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
          %220 = cir.get_element %23[%219] : (!cir.ptr<!cir.array<!u8i x 256>>, !s32i) -> !cir.ptr<!u8i>
          cir.store align(1) %218, %220 : !u8i, !cir.ptr<!u8i>
        }
        cir.yield
      } step {
        %205 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
        %206 = cir.unary(inc, %205) nsw : !s32i, !s32i
        cir.store align(4) %206, %24 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %65 = cir.get_global @fopen : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>>>
    %66 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
    %67 = cir.get_global @".str.1" : !cir.ptr<!cir.array<!s8i x 3>>
    %68 = cir.cast array_to_ptrdecay %67 : !cir.ptr<!cir.array<!s8i x 3>> -> !cir.ptr<!s8i>
    %69 = cir.call @fopen(%66, %68) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>
    cir.store align(8) %69, %32 : !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>
    cir.scope {
      %204 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
      %205 = cir.const #cir.ptr<null> : !cir.ptr<!void>
      %206 = cir.cast bitcast %205 : !cir.ptr<!void> -> !cir.ptr<!rec__IO_FILE>
      %207 = cir.cmp(eq, %204, %206) : !cir.ptr<!rec__IO_FILE>, !cir.bool
      cir.if %207 {
        %208 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
        %209 = cir.get_global @".str.2" : !cir.ptr<!cir.array<!s8i x 28>>
        %210 = cir.cast array_to_ptrdecay %209 : !cir.ptr<!cir.array<!s8i x 28>> -> !cir.ptr<!s8i>
        %211 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
        %212 = cir.call @printf(%210, %211) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !s32i
        %213 = cir.load align(8) %31 : !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, !cir.ptr<!cir.ptr<!u8i>>
        %214 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        cir.call @free_uchar_2d_array(%213, %214) : (!cir.ptr<!cir.ptr<!u8i>>, !s32i) -> ()
        cir.return
      }
    }
    %70 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
    %71 = cir.get_global @".str.3" : !cir.ptr<!cir.array<!s8i x 3>>
    %72 = cir.cast array_to_ptrdecay %71 : !cir.ptr<!cir.array<!s8i x 3>> -> !cir.ptr<!s8i>
    %73 = cir.cast bitcast %72 : !cir.ptr<!s8i> -> !cir.ptr<!void>
    %74 = cir.const #cir.int<1> : !s32i
    %75 = cir.cast integral %74 : !s32i -> !u64i
    %76 = cir.const #cir.int<2> : !s32i
    %77 = cir.cast integral %76 : !s32i -> !u64i
    %78 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %79 = cir.call @fwrite(%73, %75, %77, %78) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
    %80 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
    %81 = cir.cast bitcast %5 : !cir.ptr<!s32i> -> !cir.ptr<!void>
    %82 = cir.const #cir.int<4> : !s32i
    %83 = cir.cast integral %82 : !s32i -> !u64i
    %84 = cir.const #cir.int<1> : !s32i
    %85 = cir.cast integral %84 : !s32i -> !u64i
    %86 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %87 = cir.call @fwrite(%81, %83, %85, %86) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
    %88 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
    %89 = cir.cast bitcast %6 : !cir.ptr<!s16i> -> !cir.ptr<!void>
    %90 = cir.const #cir.int<2> : !s32i
    %91 = cir.cast integral %90 : !s32i -> !u64i
    %92 = cir.const #cir.int<1> : !s32i
    %93 = cir.cast integral %92 : !s32i -> !u64i
    %94 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %95 = cir.call @fwrite(%89, %91, %93, %94) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
    %96 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
    %97 = cir.cast bitcast %7 : !cir.ptr<!s16i> -> !cir.ptr<!void>
    %98 = cir.const #cir.int<2> : !s32i
    %99 = cir.cast integral %98 : !s32i -> !u64i
    %100 = cir.const #cir.int<1> : !s32i
    %101 = cir.cast integral %100 : !s32i -> !u64i
    %102 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %103 = cir.call @fwrite(%97, %99, %101, %102) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
    %104 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
    %105 = cir.cast bitcast %8 : !cir.ptr<!s32i> -> !cir.ptr<!void>
    %106 = cir.const #cir.int<4> : !s32i
    %107 = cir.cast integral %106 : !s32i -> !u64i
    %108 = cir.const #cir.int<1> : !s32i
    %109 = cir.cast integral %108 : !s32i -> !u64i
    %110 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %111 = cir.call @fwrite(%105, %107, %109, %110) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
    %112 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
    %113 = cir.cast bitcast %9 : !cir.ptr<!s32i> -> !cir.ptr<!void>
    %114 = cir.const #cir.int<4> : !s32i
    %115 = cir.cast integral %114 : !s32i -> !u64i
    %116 = cir.const #cir.int<1> : !s32i
    %117 = cir.cast integral %116 : !s32i -> !u64i
    %118 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %119 = cir.call @fwrite(%113, %115, %117, %118) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
    %120 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
    %121 = cir.cast bitcast %10 : !cir.ptr<!s32i> -> !cir.ptr<!void>
    %122 = cir.const #cir.int<4> : !s32i
    %123 = cir.cast integral %122 : !s32i -> !u64i
    %124 = cir.const #cir.int<1> : !s32i
    %125 = cir.cast integral %124 : !s32i -> !u64i
    %126 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %127 = cir.call @fwrite(%121, %123, %125, %126) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
    %128 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
    %129 = cir.cast bitcast %11 : !cir.ptr<!s32i> -> !cir.ptr<!void>
    %130 = cir.const #cir.int<4> : !s32i
    %131 = cir.cast integral %130 : !s32i -> !u64i
    %132 = cir.const #cir.int<1> : !s32i
    %133 = cir.cast integral %132 : !s32i -> !u64i
    %134 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %135 = cir.call @fwrite(%129, %131, %133, %134) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
    %136 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
    %137 = cir.cast bitcast %12 : !cir.ptr<!s16i> -> !cir.ptr<!void>
    %138 = cir.const #cir.int<2> : !s32i
    %139 = cir.cast integral %138 : !s32i -> !u64i
    %140 = cir.const #cir.int<1> : !s32i
    %141 = cir.cast integral %140 : !s32i -> !u64i
    %142 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %143 = cir.call @fwrite(%137, %139, %141, %142) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
    %144 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
    %145 = cir.cast bitcast %13 : !cir.ptr<!s16i> -> !cir.ptr<!void>
    %146 = cir.const #cir.int<2> : !s32i
    %147 = cir.cast integral %146 : !s32i -> !u64i
    %148 = cir.const #cir.int<1> : !s32i
    %149 = cir.cast integral %148 : !s32i -> !u64i
    %150 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %151 = cir.call @fwrite(%145, %147, %149, %150) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
    %152 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
    %153 = cir.cast bitcast %14 : !cir.ptr<!s32i> -> !cir.ptr<!void>
    %154 = cir.const #cir.int<4> : !s32i
    %155 = cir.cast integral %154 : !s32i -> !u64i
    %156 = cir.const #cir.int<1> : !s32i
    %157 = cir.cast integral %156 : !s32i -> !u64i
    %158 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %159 = cir.call @fwrite(%153, %155, %157, %158) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
    %160 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
    %161 = cir.cast bitcast %15 : !cir.ptr<!s32i> -> !cir.ptr<!void>
    %162 = cir.const #cir.int<4> : !s32i
    %163 = cir.cast integral %162 : !s32i -> !u64i
    %164 = cir.const #cir.int<1> : !s32i
    %165 = cir.cast integral %164 : !s32i -> !u64i
    %166 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %167 = cir.call @fwrite(%161, %163, %165, %166) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
    %168 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
    %169 = cir.cast bitcast %16 : !cir.ptr<!s32i> -> !cir.ptr<!void>
    %170 = cir.const #cir.int<4> : !s32i
    %171 = cir.cast integral %170 : !s32i -> !u64i
    %172 = cir.const #cir.int<1> : !s32i
    %173 = cir.cast integral %172 : !s32i -> !u64i
    %174 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %175 = cir.call @fwrite(%169, %171, %173, %174) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
    %176 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
    %177 = cir.cast bitcast %17 : !cir.ptr<!s32i> -> !cir.ptr<!void>
    %178 = cir.const #cir.int<4> : !s32i
    %179 = cir.cast integral %178 : !s32i -> !u64i
    %180 = cir.const #cir.int<1> : !s32i
    %181 = cir.cast integral %180 : !s32i -> !u64i
    %182 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %183 = cir.call @fwrite(%177, %179, %181, %182) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
    %184 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
    %185 = cir.cast bitcast %18 : !cir.ptr<!s32i> -> !cir.ptr<!void>
    %186 = cir.const #cir.int<4> : !s32i
    %187 = cir.cast integral %186 : !s32i -> !u64i
    %188 = cir.const #cir.int<1> : !s32i
    %189 = cir.cast integral %188 : !s32i -> !u64i
    %190 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %191 = cir.call @fwrite(%185, %187, %189, %190) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
    %192 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
    %193 = cir.cast bitcast %19 : !cir.ptr<!s32i> -> !cir.ptr<!void>
    %194 = cir.const #cir.int<4> : !s32i
    %195 = cir.cast integral %194 : !s32i -> !u64i
    %196 = cir.const #cir.int<1> : !s32i
    %197 = cir.cast integral %196 : !s32i -> !u64i
    %198 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %199 = cir.call @fwrite(%193, %195, %197, %198) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
    cir.scope {
      %204 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %204, %24 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %205 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
        %206 = cir.const #cir.int<256> : !s32i
        %207 = cir.cmp(lt, %205, %206) : !s32i, !cir.bool
        cir.condition(%207)
      } body {
        cir.scope {
          %205 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
          %206 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
          %207 = cir.get_element %20[%206] : (!cir.ptr<!cir.array<!u8i x 256>>, !s32i) -> !cir.ptr<!u8i>
          %208 = cir.cast bitcast %207 : !cir.ptr<!u8i> -> !cir.ptr<!void>
          %209 = cir.const #cir.int<1> : !s32i
          %210 = cir.cast integral %209 : !s32i -> !u64i
          %211 = cir.const #cir.int<1> : !s32i
          %212 = cir.cast integral %211 : !s32i -> !u64i
          %213 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
          %214 = cir.call @fwrite(%208, %210, %212, %213) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
          %215 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
          %216 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
          %217 = cir.get_element %21[%216] : (!cir.ptr<!cir.array<!u8i x 256>>, !s32i) -> !cir.ptr<!u8i>
          %218 = cir.cast bitcast %217 : !cir.ptr<!u8i> -> !cir.ptr<!void>
          %219 = cir.const #cir.int<1> : !s32i
          %220 = cir.cast integral %219 : !s32i -> !u64i
          %221 = cir.const #cir.int<1> : !s32i
          %222 = cir.cast integral %221 : !s32i -> !u64i
          %223 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
          %224 = cir.call @fwrite(%218, %220, %222, %223) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
          %225 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
          %226 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
          %227 = cir.get_element %22[%226] : (!cir.ptr<!cir.array<!u8i x 256>>, !s32i) -> !cir.ptr<!u8i>
          %228 = cir.cast bitcast %227 : !cir.ptr<!u8i> -> !cir.ptr<!void>
          %229 = cir.const #cir.int<1> : !s32i
          %230 = cir.cast integral %229 : !s32i -> !u64i
          %231 = cir.const #cir.int<1> : !s32i
          %232 = cir.cast integral %231 : !s32i -> !u64i
          %233 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
          %234 = cir.call @fwrite(%228, %230, %232, %233) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
          %235 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
          %236 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
          %237 = cir.get_element %23[%236] : (!cir.ptr<!cir.array<!u8i x 256>>, !s32i) -> !cir.ptr<!u8i>
          %238 = cir.cast bitcast %237 : !cir.ptr<!u8i> -> !cir.ptr<!void>
          %239 = cir.const #cir.int<1> : !s32i
          %240 = cir.cast integral %239 : !s32i -> !u64i
          %241 = cir.const #cir.int<1> : !s32i
          %242 = cir.cast integral %241 : !s32i -> !u64i
          %243 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
          %244 = cir.call @fwrite(%238, %240, %242, %243) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
        }
        cir.yield
      } step {
        %205 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
        %206 = cir.unary(inc, %205) nsw : !s32i, !s32i
        cir.store align(4) %206, %24 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    cir.scope {
      %204 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %204, %24 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %205 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
        %206 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %207 = cir.cmp(lt, %205, %206) : !s32i, !cir.bool
        cir.condition(%207)
      } body {
        cir.scope {
          %205 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
          %206 = cir.load align(8) %31 : !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, !cir.ptr<!cir.ptr<!u8i>>
          %207 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
          %208 = cir.ptr_stride %206, %207 : (!cir.ptr<!cir.ptr<!u8i>>, !s32i) -> !cir.ptr<!cir.ptr<!u8i>>
          %209 = cir.load align(8) %208 : !cir.ptr<!cir.ptr<!u8i>>, !cir.ptr<!u8i>
          %210 = cir.cast bitcast %209 : !cir.ptr<!u8i> -> !cir.ptr<!void>
          %211 = cir.const #cir.int<1> : !s32i
          %212 = cir.cast integral %211 : !s32i -> !u64i
          %213 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
          %214 = cir.cast integral %213 : !s32i -> !u64i
          %215 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
          %216 = cir.call @fwrite(%210, %212, %214, %215) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
        }
        cir.yield
      } step {
        %205 = cir.load align(4) %24 : !cir.ptr<!s32i>, !s32i
        %206 = cir.unary(inc, %205) nsw : !s32i, !s32i
        cir.store align(4) %206, %24 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %200 = cir.load align(8) %32 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %201 = cir.call @fclose(%200) : (!cir.ptr<!rec__IO_FILE>) -> !s32i
    %202 = cir.load align(8) %31 : !cir.ptr<!cir.ptr<!cir.ptr<!u8i>>>, !cir.ptr<!cir.ptr<!u8i>>
    %203 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
    cir.call @free_uchar_2d_array(%202, %203) : (!cir.ptr<!cir.ptr<!u8i>>, !s32i) -> ()
    cir.return
  }
  cir.func internal private dso_local @complex_amp(%arg0: !rec_complex) -> !cir.double extra(#fn_attr) {
    %0 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["z", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_complex, !cir.ptr<!rec_complex>
    %2 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %3 = cir.get_member %0[0] {name = "real"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %4 = cir.load align(8) %3 : !cir.ptr<!cir.double>, !cir.double
    %5 = cir.get_member %0[0] {name = "real"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %6 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
    %7 = cir.binop(mul, %4, %6) : !cir.double
    %8 = cir.get_member %0[1] {name = "imag"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %9 = cir.load align(8) %8 : !cir.ptr<!cir.double>, !cir.double
    %10 = cir.get_member %0[1] {name = "imag"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %11 = cir.load align(8) %10 : !cir.ptr<!cir.double>, !cir.double
    %12 = cir.binop(mul, %9, %11) : !cir.double
    %13 = cir.binop(add, %7, %12) : !cir.double
    %14 = cir.call @sqrt(%13) : (!cir.double) -> !cir.double extra(#fn_attr1)
    cir.store %14, %1 : !cir.double, !cir.ptr<!cir.double>
    %15 = cir.load %1 : !cir.ptr<!cir.double>, !cir.double
    cir.return %15 : !cir.double
  }
  cir.func dso_local @showamp(%arg0: !cir.ptr<!cir.ptr<!rec_complex>>, %arg1: !s32i, %arg2: !s32i, %arg3: !cir.ptr<!s8i>) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["a", init] {alignment = 4 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["r", init] {alignment = 4 : i64}
    %3 = cir.alloca !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>, ["name", init] {alignment = 8 : i64}
    %4 = cir.alloca !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, ["data"] {alignment = 8 : i64}
    %5 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i"] {alignment = 4 : i64}
    %6 = cir.alloca !s32i, !cir.ptr<!s32i>, ["j"] {alignment = 4 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.store %arg2, %2 : !s32i, !cir.ptr<!s32i>
    cir.store %arg3, %3 : !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>
    %7 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
    %8 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
    %9 = cir.call @create_double_2d_array(%7, %8) : (!s32i, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
    cir.store align(8) %9, %4 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>
    cir.scope {
      %18 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %18, %5 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %19 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
        %20 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %21 = cir.cmp(lt, %19, %20) : !s32i, !cir.bool
        cir.condition(%21)
      } body {
        cir.scope {
          cir.scope {
            %19 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %19, %6 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %20 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
              %21 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %22 = cir.cmp(lt, %20, %21) : !s32i, !cir.bool
              cir.condition(%22)
            } body {
              cir.scope {
                %20 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %21 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
                %22 = cir.ptr_stride %20, %21 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %23 = cir.load align(8) %22 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %24 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
                %25 = cir.ptr_stride %23, %24 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %26 = cir.load align(8) %25 : !cir.ptr<!rec_complex>, !rec_complex
                %27 = cir.call @complex_amp(%26) : (!rec_complex) -> !cir.double
                %28 = cir.load align(8) %4 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
                %29 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
                %30 = cir.ptr_stride %28, %29 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
                %31 = cir.load align(8) %30 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
                %32 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
                %33 = cir.ptr_stride %31, %32 : (!cir.ptr<!cir.double>, !s32i) -> !cir.ptr<!cir.double>
                cir.store align(8) %27, %33 : !cir.double, !cir.ptr<!cir.double>
              }
              cir.yield
            } step {
              %20 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
              %21 = cir.unary(inc, %20) nsw : !s32i, !s32i
              cir.store align(4) %21, %6 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
        }
        cir.yield
      } step {
        %19 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
        %20 = cir.unary(inc, %19) nsw : !s32i, !s32i
        cir.store align(4) %20, %5 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %10 = cir.load align(8) %4 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
    %11 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
    %12 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
    %13 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
    %14 = cir.const #cir.int<1> : !s32i
    %15 = cir.cast integral %14 : !s32i -> !u32i
    cir.call @showdata(%10, %11, %12, %13, %15) : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i, !s32i, !cir.ptr<!s8i>, !u32i) -> ()
    %16 = cir.load align(8) %4 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
    %17 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
    cir.call @free_double_2d_array(%16, %17) : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> ()
    cir.return
  }
  cir.func dso_local @showamp_db(%arg0: !cir.ptr<!cir.ptr<!rec_complex>>, %arg1: !s32i, %arg2: !s32i, %arg3: !cir.ptr<!s8i>) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["a", init] {alignment = 4 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["r", init] {alignment = 4 : i64}
    %3 = cir.alloca !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>, ["name", init] {alignment = 8 : i64}
    %4 = cir.alloca !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, ["data"] {alignment = 8 : i64}
    %5 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i"] {alignment = 4 : i64}
    %6 = cir.alloca !s32i, !cir.ptr<!s32i>, ["j"] {alignment = 4 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.store %arg2, %2 : !s32i, !cir.ptr<!s32i>
    cir.store %arg3, %3 : !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>
    %7 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
    %8 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
    %9 = cir.call @create_double_2d_array(%7, %8) : (!s32i, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
    cir.store align(8) %9, %4 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>
    cir.scope {
      %18 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %18, %5 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %19 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
        %20 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %21 = cir.cmp(lt, %19, %20) : !s32i, !cir.bool
        cir.condition(%21)
      } body {
        cir.scope {
          cir.scope {
            %19 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %19, %6 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %20 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
              %21 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %22 = cir.cmp(lt, %20, %21) : !s32i, !cir.bool
              cir.condition(%22)
            } body {
              cir.scope {
                %20 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %21 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
                %22 = cir.ptr_stride %20, %21 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %23 = cir.load align(8) %22 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %24 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
                %25 = cir.ptr_stride %23, %24 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %26 = cir.load align(8) %25 : !cir.ptr<!rec_complex>, !rec_complex
                %27 = cir.call @complex_amp(%26) : (!rec_complex) -> !cir.double
                %28 = cir.load align(8) %4 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
                %29 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
                %30 = cir.ptr_stride %28, %29 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
                %31 = cir.load align(8) %30 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
                %32 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
                %33 = cir.ptr_stride %31, %32 : (!cir.ptr<!cir.double>, !s32i) -> !cir.ptr<!cir.double>
                cir.store align(8) %27, %33 : !cir.double, !cir.ptr<!cir.double>
              }
              cir.yield
            } step {
              %20 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
              %21 = cir.unary(inc, %20) nsw : !s32i, !s32i
              cir.store align(4) %21, %6 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
        }
        cir.yield
      } step {
        %19 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
        %20 = cir.unary(inc, %19) nsw : !s32i, !s32i
        cir.store align(4) %20, %5 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %10 = cir.load align(8) %4 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
    %11 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
    %12 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
    %13 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
    %14 = cir.const #cir.int<2> : !s32i
    %15 = cir.cast integral %14 : !s32i -> !u32i
    cir.call @showdata(%10, %11, %12, %13, %15) : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i, !s32i, !cir.ptr<!s8i>, !u32i) -> ()
    %16 = cir.load align(8) %4 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
    %17 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
    cir.call @free_double_2d_array(%16, %17) : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> ()
    cir.return
  }
  cir.func private @atan2(!cir.double, !cir.double) -> !cir.double extra(#fn_attr1)
  cir.func internal private dso_local @complex_phs(%arg0: !rec_complex) -> !cir.double extra(#fn_attr) {
    %0 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["z", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_complex, !cir.ptr<!rec_complex>
    cir.scope {
      %3 = cir.get_member %0[0] {name = "real"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
      %4 = cir.load align(8) %3 : !cir.ptr<!cir.double>, !cir.double
      %5 = cir.const #cir.fp<0.000000e+00> : !cir.double
      %6 = cir.cmp(eq, %4, %5) : !cir.double, !cir.bool
      %7 = cir.ternary(%6, true {
        %8 = cir.get_member %0[1] {name = "imag"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
        %9 = cir.load align(8) %8 : !cir.ptr<!cir.double>, !cir.double
        %10 = cir.const #cir.fp<0.000000e+00> : !cir.double
        %11 = cir.cmp(eq, %9, %10) : !cir.double, !cir.bool
        %12 = cir.ternary(%11, true {
          %13 = cir.const #true
          cir.yield %13 : !cir.bool
        }, false {
          %13 = cir.const #false
          cir.yield %13 : !cir.bool
        }) : (!cir.bool) -> !cir.bool
        cir.yield %12 : !cir.bool
      }, false {
        %8 = cir.const #false
        cir.yield %8 : !cir.bool
      }) : (!cir.bool) -> !cir.bool
      cir.if %7 {
        %8 = cir.const #cir.fp<0.000000e+00> : !cir.double
        cir.store %8, %1 : !cir.double, !cir.ptr<!cir.double>
        %9 = cir.load %1 : !cir.ptr<!cir.double>, !cir.double
        cir.return %9 : !cir.double
      } else {
        %8 = cir.get_global @atan2 : !cir.ptr<!cir.func<(!cir.double, !cir.double) -> !cir.double>>
        %9 = cir.get_member %0[1] {name = "imag"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
        %10 = cir.load align(8) %9 : !cir.ptr<!cir.double>, !cir.double
        %11 = cir.get_member %0[0] {name = "real"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
        %12 = cir.load align(8) %11 : !cir.ptr<!cir.double>, !cir.double
        %13 = cir.call @atan2(%10, %12) : (!cir.double, !cir.double) -> !cir.double extra(#fn_attr1)
        cir.store %13, %1 : !cir.double, !cir.ptr<!cir.double>
        %14 = cir.load %1 : !cir.ptr<!cir.double>, !cir.double
        cir.return %14 : !cir.double
      }
    }
    %2 = cir.load %1 : !cir.ptr<!cir.double>, !cir.double
    cir.return %2 : !cir.double
  }
  cir.func dso_local @showphs(%arg0: !cir.ptr<!cir.ptr<!rec_complex>>, %arg1: !s32i, %arg2: !s32i, %arg3: !cir.ptr<!s8i>) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["a", init] {alignment = 4 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["r", init] {alignment = 4 : i64}
    %3 = cir.alloca !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>, ["name", init] {alignment = 8 : i64}
    %4 = cir.alloca !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, ["data"] {alignment = 8 : i64}
    %5 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i"] {alignment = 4 : i64}
    %6 = cir.alloca !s32i, !cir.ptr<!s32i>, ["j"] {alignment = 4 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.store %arg2, %2 : !s32i, !cir.ptr<!s32i>
    cir.store %arg3, %3 : !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>
    %7 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
    %8 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
    %9 = cir.call @create_double_2d_array(%7, %8) : (!s32i, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
    cir.store align(8) %9, %4 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>
    cir.scope {
      %18 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %18, %5 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %19 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
        %20 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %21 = cir.cmp(lt, %19, %20) : !s32i, !cir.bool
        cir.condition(%21)
      } body {
        cir.scope {
          cir.scope {
            %19 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %19, %6 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %20 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
              %21 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %22 = cir.cmp(lt, %20, %21) : !s32i, !cir.bool
              cir.condition(%22)
            } body {
              cir.scope {
                %20 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %21 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
                %22 = cir.ptr_stride %20, %21 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %23 = cir.load align(8) %22 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %24 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
                %25 = cir.ptr_stride %23, %24 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %26 = cir.load align(8) %25 : !cir.ptr<!rec_complex>, !rec_complex
                %27 = cir.call @complex_phs(%26) : (!rec_complex) -> !cir.double
                %28 = cir.load align(8) %4 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
                %29 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
                %30 = cir.ptr_stride %28, %29 : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> !cir.ptr<!cir.ptr<!cir.double>>
                %31 = cir.load align(8) %30 : !cir.ptr<!cir.ptr<!cir.double>>, !cir.ptr<!cir.double>
                %32 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
                %33 = cir.ptr_stride %31, %32 : (!cir.ptr<!cir.double>, !s32i) -> !cir.ptr<!cir.double>
                cir.store align(8) %27, %33 : !cir.double, !cir.ptr<!cir.double>
              }
              cir.yield
            } step {
              %20 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
              %21 = cir.unary(inc, %20) nsw : !s32i, !s32i
              cir.store align(4) %21, %6 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
        }
        cir.yield
      } step {
        %19 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
        %20 = cir.unary(inc, %19) nsw : !s32i, !s32i
        cir.store align(4) %20, %5 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %10 = cir.load align(8) %4 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
    %11 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
    %12 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
    %13 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
    %14 = cir.const #cir.int<0> : !s32i
    %15 = cir.cast integral %14 : !s32i -> !u32i
    cir.call @showdata(%10, %11, %12, %13, %15) : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i, !s32i, !cir.ptr<!s8i>, !u32i) -> ()
    %16 = cir.load align(8) %4 : !cir.ptr<!cir.ptr<!cir.ptr<!cir.double>>>, !cir.ptr<!cir.ptr<!cir.double>>
    %17 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
    cir.call @free_double_2d_array(%16, %17) : (!cir.ptr<!cir.ptr<!cir.double>>, !s32i) -> ()
    cir.return
  }
  cir.global "private" constant cir_private dso_local @".str.4" = #cir.const_array<"w\00" : !cir.array<!s8i x 2>> : !cir.array<!s8i x 2> {alignment = 1 : i64}
  cir.func private @fprintf(!cir.ptr<!rec__IO_FILE>, !cir.ptr<!s8i>, ...) -> !s32i extra(#fn_attr1)
  cir.global "private" constant cir_private dso_local @".str.5" = #cir.const_array<"%f\0A\00" : !cir.array<!s8i x 4>> : !cir.array<!s8i x 4> {alignment = 1 : i64}
  cir.func dso_local @rowoutamp(%arg0: !cir.ptr<!cir.ptr<!rec_complex>>, %arg1: !s32i, %arg2: !s32i, %arg3: !cir.ptr<!s8i>) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["p", init] {alignment = 4 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["l", init] {alignment = 4 : i64}
    %3 = cir.alloca !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>, ["name", init] {alignment = 8 : i64}
    %4 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i"] {alignment = 4 : i64}
    %5 = cir.alloca !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>, ["fp", init] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.store %arg2, %2 : !s32i, !cir.ptr<!s32i>
    cir.store %arg3, %3 : !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>
    %6 = cir.get_global @fopen : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>>>
    %7 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
    %8 = cir.get_global @".str.4" : !cir.ptr<!cir.array<!s8i x 2>>
    %9 = cir.cast array_to_ptrdecay %8 : !cir.ptr<!cir.array<!s8i x 2>> -> !cir.ptr<!s8i>
    %10 = cir.call @fopen(%7, %9) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>
    cir.store align(8) %10, %5 : !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>
    cir.scope {
      %13 = cir.load align(8) %5 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
      %14 = cir.const #cir.ptr<null> : !cir.ptr<!void>
      %15 = cir.cast bitcast %14 : !cir.ptr<!void> -> !cir.ptr<!rec__IO_FILE>
      %16 = cir.cmp(eq, %13, %15) : !cir.ptr<!rec__IO_FILE>, !cir.bool
      cir.if %16 {
        %17 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
        %18 = cir.get_global @".str.2" : !cir.ptr<!cir.array<!s8i x 28>>
        %19 = cir.cast array_to_ptrdecay %18 : !cir.ptr<!cir.array<!s8i x 28>> -> !cir.ptr<!s8i>
        %20 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
        %21 = cir.call @printf(%19, %20) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !s32i
        cir.return
      }
    }
    cir.scope {
      %13 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %13, %4 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %14 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %15 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
        %16 = cir.cmp(lt, %14, %15) : !s32i, !cir.bool
        cir.condition(%16)
      } body {
        cir.scope {
          %14 = cir.get_global @fprintf : !cir.ptr<!cir.func<(!cir.ptr<!rec__IO_FILE>, !cir.ptr<!s8i>, ...) -> !s32i>>
          %15 = cir.load align(8) %5 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
          %16 = cir.get_global @".str.5" : !cir.ptr<!cir.array<!s8i x 4>>
          %17 = cir.cast array_to_ptrdecay %16 : !cir.ptr<!cir.array<!s8i x 4>> -> !cir.ptr<!s8i>
          %18 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
          %19 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
          %20 = cir.ptr_stride %18, %19 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
          %21 = cir.load align(8) %20 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
          %22 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
          %23 = cir.ptr_stride %21, %22 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
          %24 = cir.load align(8) %23 : !cir.ptr<!rec_complex>, !rec_complex
          %25 = cir.call @complex_amp(%24) : (!rec_complex) -> !cir.double
          %26 = cir.call @fprintf(%15, %17, %25) : (!cir.ptr<!rec__IO_FILE>, !cir.ptr<!s8i>, !cir.double) -> !s32i extra(#fn_attr1)
        }
        cir.yield
      } step {
        %14 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %15 = cir.unary(inc, %14) nsw : !s32i, !s32i
        cir.store align(4) %15, %4 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %11 = cir.load align(8) %5 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %12 = cir.call @fclose(%11) : (!cir.ptr<!rec__IO_FILE>) -> !s32i
    cir.return
  }
  cir.func private @log10(!cir.double) -> !cir.double extra(#fn_attr1)
  cir.func dso_local @rowoutamp_db(%arg0: !cir.ptr<!cir.ptr<!rec_complex>>, %arg1: !s32i, %arg2: !s32i, %arg3: !cir.ptr<!s8i>) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["p", init] {alignment = 4 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["l", init] {alignment = 4 : i64}
    %3 = cir.alloca !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>, ["name", init] {alignment = 8 : i64}
    %4 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i"] {alignment = 4 : i64}
    %5 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["temp"] {alignment = 8 : i64}
    %6 = cir.alloca !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>, ["fp", init] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.store %arg2, %2 : !s32i, !cir.ptr<!s32i>
    cir.store %arg3, %3 : !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>
    %7 = cir.get_global @fopen : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>>>
    %8 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
    %9 = cir.get_global @".str.4" : !cir.ptr<!cir.array<!s8i x 2>>
    %10 = cir.cast array_to_ptrdecay %9 : !cir.ptr<!cir.array<!s8i x 2>> -> !cir.ptr<!s8i>
    %11 = cir.call @fopen(%8, %10) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>
    cir.store align(8) %11, %6 : !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>
    cir.scope {
      %14 = cir.load align(8) %6 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
      %15 = cir.const #cir.ptr<null> : !cir.ptr<!void>
      %16 = cir.cast bitcast %15 : !cir.ptr<!void> -> !cir.ptr<!rec__IO_FILE>
      %17 = cir.cmp(eq, %14, %16) : !cir.ptr<!rec__IO_FILE>, !cir.bool
      cir.if %17 {
        %18 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
        %19 = cir.get_global @".str.2" : !cir.ptr<!cir.array<!s8i x 28>>
        %20 = cir.cast array_to_ptrdecay %19 : !cir.ptr<!cir.array<!s8i x 28>> -> !cir.ptr<!s8i>
        %21 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
        %22 = cir.call @printf(%20, %21) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !s32i
        cir.return
      }
    }
    cir.scope {
      %14 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %14, %4 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %15 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %16 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
        %17 = cir.cmp(lt, %15, %16) : !s32i, !cir.bool
        cir.condition(%17)
      } body {
        cir.scope {
          %15 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
          %16 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
          %17 = cir.ptr_stride %15, %16 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
          %18 = cir.load align(8) %17 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
          %19 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
          %20 = cir.ptr_stride %18, %19 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
          %21 = cir.load align(8) %20 : !cir.ptr<!rec_complex>, !rec_complex
          %22 = cir.call @complex_amp(%21) : (!rec_complex) -> !cir.double
          cir.store align(8) %22, %5 : !cir.double, !cir.ptr<!cir.double>
          %23 = cir.const #cir.int<20> : !s32i
          %24 = cir.cast int_to_float %23 : !s32i -> !cir.double
          %25 = cir.get_global @log10 : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
          %26 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
          %27 = cir.call @log10(%26) : (!cir.double) -> !cir.double extra(#fn_attr1)
          %28 = cir.binop(mul, %24, %27) : !cir.double
          cir.store align(8) %28, %5 : !cir.double, !cir.ptr<!cir.double>
          %29 = cir.get_global @fprintf : !cir.ptr<!cir.func<(!cir.ptr<!rec__IO_FILE>, !cir.ptr<!s8i>, ...) -> !s32i>>
          %30 = cir.load align(8) %6 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
          %31 = cir.get_global @".str.5" : !cir.ptr<!cir.array<!s8i x 4>>
          %32 = cir.cast array_to_ptrdecay %31 : !cir.ptr<!cir.array<!s8i x 4>> -> !cir.ptr<!s8i>
          %33 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
          %34 = cir.call @fprintf(%30, %32, %33) : (!cir.ptr<!rec__IO_FILE>, !cir.ptr<!s8i>, !cir.double) -> !s32i extra(#fn_attr1)
        }
        cir.yield
      } step {
        %15 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %16 = cir.unary(inc, %15) nsw : !s32i, !s32i
        cir.store align(4) %16, %4 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %12 = cir.load align(8) %6 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %13 = cir.call @fclose(%12) : (!cir.ptr<!rec__IO_FILE>) -> !s32i
    cir.return
  }
  cir.func dso_local @rowoutphs(%arg0: !cir.ptr<!cir.ptr<!rec_complex>>, %arg1: !s32i, %arg2: !s32i, %arg3: !cir.ptr<!s8i>) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["p", init] {alignment = 4 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["l", init] {alignment = 4 : i64}
    %3 = cir.alloca !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>, ["name", init] {alignment = 8 : i64}
    %4 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i"] {alignment = 4 : i64}
    %5 = cir.alloca !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>, ["fp", init] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.store %arg2, %2 : !s32i, !cir.ptr<!s32i>
    cir.store %arg3, %3 : !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>
    %6 = cir.get_global @fopen : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>>>
    %7 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
    %8 = cir.get_global @".str.4" : !cir.ptr<!cir.array<!s8i x 2>>
    %9 = cir.cast array_to_ptrdecay %8 : !cir.ptr<!cir.array<!s8i x 2>> -> !cir.ptr<!s8i>
    %10 = cir.call @fopen(%7, %9) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>
    cir.store align(8) %10, %5 : !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>
    cir.scope {
      %13 = cir.load align(8) %5 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
      %14 = cir.const #cir.ptr<null> : !cir.ptr<!void>
      %15 = cir.cast bitcast %14 : !cir.ptr<!void> -> !cir.ptr<!rec__IO_FILE>
      %16 = cir.cmp(eq, %13, %15) : !cir.ptr<!rec__IO_FILE>, !cir.bool
      cir.if %16 {
        %17 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
        %18 = cir.get_global @".str.2" : !cir.ptr<!cir.array<!s8i x 28>>
        %19 = cir.cast array_to_ptrdecay %18 : !cir.ptr<!cir.array<!s8i x 28>> -> !cir.ptr<!s8i>
        %20 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
        %21 = cir.call @printf(%19, %20) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !s32i
        cir.return
      }
    }
    cir.scope {
      %13 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %13, %4 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %14 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %15 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
        %16 = cir.cmp(lt, %14, %15) : !s32i, !cir.bool
        cir.condition(%16)
      } body {
        cir.scope {
          %14 = cir.get_global @fprintf : !cir.ptr<!cir.func<(!cir.ptr<!rec__IO_FILE>, !cir.ptr<!s8i>, ...) -> !s32i>>
          %15 = cir.load align(8) %5 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
          %16 = cir.get_global @".str.5" : !cir.ptr<!cir.array<!s8i x 4>>
          %17 = cir.cast array_to_ptrdecay %16 : !cir.ptr<!cir.array<!s8i x 4>> -> !cir.ptr<!s8i>
          %18 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
          %19 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
          %20 = cir.ptr_stride %18, %19 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
          %21 = cir.load align(8) %20 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
          %22 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
          %23 = cir.ptr_stride %21, %22 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
          %24 = cir.load align(8) %23 : !cir.ptr<!rec_complex>, !rec_complex
          %25 = cir.call @complex_phs(%24) : (!rec_complex) -> !cir.double
          %26 = cir.call @fprintf(%15, %17, %25) : (!cir.ptr<!rec__IO_FILE>, !cir.ptr<!s8i>, !cir.double) -> !s32i extra(#fn_attr1)
        }
        cir.yield
      } step {
        %14 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %15 = cir.unary(inc, %14) nsw : !s32i, !s32i
        cir.store align(4) %15, %4 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %11 = cir.load align(8) %5 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %12 = cir.call @fclose(%11) : (!cir.ptr<!rec__IO_FILE>) -> !s32i
    cir.return
  }
  cir.func dso_local @lineoutamp(%arg0: !cir.ptr<!cir.ptr<!rec_complex>>, %arg1: !s32i, %arg2: !s32i, %arg3: !cir.ptr<!s8i>) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["p", init] {alignment = 4 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["l", init] {alignment = 4 : i64}
    %3 = cir.alloca !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>, ["name", init] {alignment = 8 : i64}
    %4 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i"] {alignment = 4 : i64}
    %5 = cir.alloca !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>, ["fp", init] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.store %arg2, %2 : !s32i, !cir.ptr<!s32i>
    cir.store %arg3, %3 : !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>
    %6 = cir.get_global @fopen : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>>>
    %7 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
    %8 = cir.get_global @".str.4" : !cir.ptr<!cir.array<!s8i x 2>>
    %9 = cir.cast array_to_ptrdecay %8 : !cir.ptr<!cir.array<!s8i x 2>> -> !cir.ptr<!s8i>
    %10 = cir.call @fopen(%7, %9) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>
    cir.store align(8) %10, %5 : !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>
    cir.scope {
      %13 = cir.load align(8) %5 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
      %14 = cir.const #cir.ptr<null> : !cir.ptr<!void>
      %15 = cir.cast bitcast %14 : !cir.ptr<!void> -> !cir.ptr<!rec__IO_FILE>
      %16 = cir.cmp(eq, %13, %15) : !cir.ptr<!rec__IO_FILE>, !cir.bool
      cir.if %16 {
        %17 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
        %18 = cir.get_global @".str.2" : !cir.ptr<!cir.array<!s8i x 28>>
        %19 = cir.cast array_to_ptrdecay %18 : !cir.ptr<!cir.array<!s8i x 28>> -> !cir.ptr<!s8i>
        %20 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
        %21 = cir.call @printf(%19, %20) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !s32i
        cir.return
      }
    }
    cir.scope {
      %13 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %13, %4 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %14 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %15 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
        %16 = cir.cmp(lt, %14, %15) : !s32i, !cir.bool
        cir.condition(%16)
      } body {
        cir.scope {
          %14 = cir.get_global @fprintf : !cir.ptr<!cir.func<(!cir.ptr<!rec__IO_FILE>, !cir.ptr<!s8i>, ...) -> !s32i>>
          %15 = cir.load align(8) %5 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
          %16 = cir.get_global @".str.5" : !cir.ptr<!cir.array<!s8i x 4>>
          %17 = cir.cast array_to_ptrdecay %16 : !cir.ptr<!cir.array<!s8i x 4>> -> !cir.ptr<!s8i>
          %18 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
          %19 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
          %20 = cir.ptr_stride %18, %19 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
          %21 = cir.load align(8) %20 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
          %22 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
          %23 = cir.ptr_stride %21, %22 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
          %24 = cir.load align(8) %23 : !cir.ptr<!rec_complex>, !rec_complex
          %25 = cir.call @complex_amp(%24) : (!rec_complex) -> !cir.double
          %26 = cir.call @fprintf(%15, %17, %25) : (!cir.ptr<!rec__IO_FILE>, !cir.ptr<!s8i>, !cir.double) -> !s32i extra(#fn_attr1)
        }
        cir.yield
      } step {
        %14 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %15 = cir.unary(inc, %14) nsw : !s32i, !s32i
        cir.store align(4) %15, %4 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %11 = cir.load align(8) %5 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %12 = cir.call @fclose(%11) : (!cir.ptr<!rec__IO_FILE>) -> !s32i
    cir.return
  }
  cir.func dso_local @lineoutamp_db(%arg0: !cir.ptr<!cir.ptr<!rec_complex>>, %arg1: !s32i, %arg2: !s32i, %arg3: !cir.ptr<!s8i>) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["p", init] {alignment = 4 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["l", init] {alignment = 4 : i64}
    %3 = cir.alloca !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>, ["name", init] {alignment = 8 : i64}
    %4 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i"] {alignment = 4 : i64}
    %5 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["temp"] {alignment = 8 : i64}
    %6 = cir.alloca !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>, ["fp", init] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.store %arg2, %2 : !s32i, !cir.ptr<!s32i>
    cir.store %arg3, %3 : !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>
    %7 = cir.get_global @fopen : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>>>
    %8 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
    %9 = cir.get_global @".str.4" : !cir.ptr<!cir.array<!s8i x 2>>
    %10 = cir.cast array_to_ptrdecay %9 : !cir.ptr<!cir.array<!s8i x 2>> -> !cir.ptr<!s8i>
    %11 = cir.call @fopen(%8, %10) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>
    cir.store align(8) %11, %6 : !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>
    cir.scope {
      %14 = cir.load align(8) %6 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
      %15 = cir.const #cir.ptr<null> : !cir.ptr<!void>
      %16 = cir.cast bitcast %15 : !cir.ptr<!void> -> !cir.ptr<!rec__IO_FILE>
      %17 = cir.cmp(eq, %14, %16) : !cir.ptr<!rec__IO_FILE>, !cir.bool
      cir.if %17 {
        %18 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
        %19 = cir.get_global @".str.2" : !cir.ptr<!cir.array<!s8i x 28>>
        %20 = cir.cast array_to_ptrdecay %19 : !cir.ptr<!cir.array<!s8i x 28>> -> !cir.ptr<!s8i>
        %21 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
        %22 = cir.call @printf(%20, %21) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !s32i
        cir.return
      }
    }
    cir.scope {
      %14 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %14, %4 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %15 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %16 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
        %17 = cir.cmp(lt, %15, %16) : !s32i, !cir.bool
        cir.condition(%17)
      } body {
        cir.scope {
          %15 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
          %16 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
          %17 = cir.ptr_stride %15, %16 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
          %18 = cir.load align(8) %17 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
          %19 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
          %20 = cir.ptr_stride %18, %19 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
          %21 = cir.load align(8) %20 : !cir.ptr<!rec_complex>, !rec_complex
          %22 = cir.call @complex_amp(%21) : (!rec_complex) -> !cir.double
          cir.store align(8) %22, %5 : !cir.double, !cir.ptr<!cir.double>
          %23 = cir.const #cir.int<20> : !s32i
          %24 = cir.cast int_to_float %23 : !s32i -> !cir.double
          %25 = cir.get_global @log10 : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
          %26 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
          %27 = cir.call @log10(%26) : (!cir.double) -> !cir.double extra(#fn_attr1)
          %28 = cir.binop(mul, %24, %27) : !cir.double
          cir.store align(8) %28, %5 : !cir.double, !cir.ptr<!cir.double>
          %29 = cir.get_global @fprintf : !cir.ptr<!cir.func<(!cir.ptr<!rec__IO_FILE>, !cir.ptr<!s8i>, ...) -> !s32i>>
          %30 = cir.load align(8) %6 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
          %31 = cir.get_global @".str.5" : !cir.ptr<!cir.array<!s8i x 4>>
          %32 = cir.cast array_to_ptrdecay %31 : !cir.ptr<!cir.array<!s8i x 4>> -> !cir.ptr<!s8i>
          %33 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
          %34 = cir.call @fprintf(%30, %32, %33) : (!cir.ptr<!rec__IO_FILE>, !cir.ptr<!s8i>, !cir.double) -> !s32i extra(#fn_attr1)
        }
        cir.yield
      } step {
        %15 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %16 = cir.unary(inc, %15) nsw : !s32i, !s32i
        cir.store align(4) %16, %4 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %12 = cir.load align(8) %6 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %13 = cir.call @fclose(%12) : (!cir.ptr<!rec__IO_FILE>) -> !s32i
    cir.return
  }
  cir.func dso_local @lineoutphs(%arg0: !cir.ptr<!cir.ptr<!rec_complex>>, %arg1: !s32i, %arg2: !s32i, %arg3: !cir.ptr<!s8i>) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["p", init] {alignment = 4 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["l", init] {alignment = 4 : i64}
    %3 = cir.alloca !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>, ["name", init] {alignment = 8 : i64}
    %4 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i"] {alignment = 4 : i64}
    %5 = cir.alloca !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>, ["fp", init] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.store %arg2, %2 : !s32i, !cir.ptr<!s32i>
    cir.store %arg3, %3 : !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>
    %6 = cir.get_global @fopen : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>>>
    %7 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
    %8 = cir.get_global @".str.4" : !cir.ptr<!cir.array<!s8i x 2>>
    %9 = cir.cast array_to_ptrdecay %8 : !cir.ptr<!cir.array<!s8i x 2>> -> !cir.ptr<!s8i>
    %10 = cir.call @fopen(%7, %9) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>
    cir.store align(8) %10, %5 : !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>
    cir.scope {
      %13 = cir.load align(8) %5 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
      %14 = cir.const #cir.ptr<null> : !cir.ptr<!void>
      %15 = cir.cast bitcast %14 : !cir.ptr<!void> -> !cir.ptr<!rec__IO_FILE>
      %16 = cir.cmp(eq, %13, %15) : !cir.ptr<!rec__IO_FILE>, !cir.bool
      cir.if %16 {
        %17 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
        %18 = cir.get_global @".str.2" : !cir.ptr<!cir.array<!s8i x 28>>
        %19 = cir.cast array_to_ptrdecay %18 : !cir.ptr<!cir.array<!s8i x 28>> -> !cir.ptr<!s8i>
        %20 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
        %21 = cir.call @printf(%19, %20) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !s32i
        cir.return
      }
    }
    cir.scope {
      %13 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %13, %4 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %14 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %15 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
        %16 = cir.cmp(lt, %14, %15) : !s32i, !cir.bool
        cir.condition(%16)
      } body {
        cir.scope {
          %14 = cir.get_global @fprintf : !cir.ptr<!cir.func<(!cir.ptr<!rec__IO_FILE>, !cir.ptr<!s8i>, ...) -> !s32i>>
          %15 = cir.load align(8) %5 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
          %16 = cir.get_global @".str.5" : !cir.ptr<!cir.array<!s8i x 4>>
          %17 = cir.cast array_to_ptrdecay %16 : !cir.ptr<!cir.array<!s8i x 4>> -> !cir.ptr<!s8i>
          %18 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
          %19 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
          %20 = cir.ptr_stride %18, %19 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
          %21 = cir.load align(8) %20 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
          %22 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
          %23 = cir.ptr_stride %21, %22 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
          %24 = cir.load align(8) %23 : !cir.ptr<!rec_complex>, !rec_complex
          %25 = cir.call @complex_phs(%24) : (!rec_complex) -> !cir.double
          %26 = cir.call @fprintf(%15, %17, %25) : (!cir.ptr<!rec__IO_FILE>, !cir.ptr<!s8i>, !cir.double) -> !s32i extra(#fn_attr1)
        }
        cir.yield
      } step {
        %14 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %15 = cir.unary(inc, %14) nsw : !s32i, !s32i
        cir.store align(4) %15, %4 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %11 = cir.load align(8) %5 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %12 = cir.call @fclose(%11) : (!cir.ptr<!rec__IO_FILE>) -> !s32i
    cir.return
  }
  cir.func internal private dso_local @complex_imag(%arg0: !rec_complex) -> !cir.double extra(#fn_attr) {
    %0 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["z", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_complex, !cir.ptr<!rec_complex>
    %2 = cir.get_member %0[1] {name = "imag"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %3 = cir.load align(8) %2 : !cir.ptr<!cir.double>, !cir.double
    cir.store %3, %1 : !cir.double, !cir.ptr<!cir.double>
    %4 = cir.load %1 : !cir.ptr<!cir.double>, !cir.double
    cir.return %4 : !cir.double
  }
  cir.func internal private dso_local @complex_real(%arg0: !rec_complex) -> !cir.double extra(#fn_attr) {
    %0 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["z", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_complex, !cir.ptr<!rec_complex>
    %2 = cir.get_member %0[0] {name = "real"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %3 = cir.load align(8) %2 : !cir.ptr<!cir.double>, !cir.double
    cir.store %3, %1 : !cir.double, !cir.ptr<!cir.double>
    %4 = cir.load %1 : !cir.ptr<!cir.double>, !cir.double
    cir.return %4 : !cir.double
  }
  cir.func dso_local @compout(%arg0: !cir.ptr<!cir.ptr<!rec_complex>>, %arg1: !s32i, %arg2: !s32i, %arg3: !cir.ptr<!s8i>) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["a", init] {alignment = 4 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["r", init] {alignment = 4 : i64}
    %3 = cir.alloca !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>, ["name", init] {alignment = 8 : i64}
    %4 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i"] {alignment = 4 : i64}
    %5 = cir.alloca !s32i, !cir.ptr<!s32i>, ["j"] {alignment = 4 : i64}
    %6 = cir.alloca !cir.ptr<!cir.float>, !cir.ptr<!cir.ptr<!cir.float>>, ["temp"] {alignment = 8 : i64}
    %7 = cir.alloca !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>, ["fp"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.store %arg2, %2 : !s32i, !cir.ptr<!s32i>
    cir.store %arg3, %3 : !cir.ptr<!s8i>, !cir.ptr<!cir.ptr<!s8i>>
    %8 = cir.get_global @malloc : !cir.ptr<!cir.func<(!u64i) -> !cir.ptr<!void>>>
    %9 = cir.const #cir.int<2> : !s32i
    %10 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
    %11 = cir.binop(mul, %9, %10) nsw : !s32i
    %12 = cir.cast integral %11 : !s32i -> !u64i
    %13 = cir.const #cir.int<4> : !u64i
    %14 = cir.binop(mul, %12, %13) : !u64i
    %15 = cir.call @malloc(%14) : (!u64i) -> !cir.ptr<!void> extra(#fn_attr1)
    %16 = cir.cast bitcast %15 : !cir.ptr<!void> -> !cir.ptr<!cir.float>
    cir.store align(8) %16, %6 : !cir.ptr<!cir.float>, !cir.ptr<!cir.ptr<!cir.float>>
    %17 = cir.get_global @fopen : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>>>
    %18 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
    %19 = cir.get_global @".str.1" : !cir.ptr<!cir.array<!s8i x 3>>
    %20 = cir.cast array_to_ptrdecay %19 : !cir.ptr<!cir.array<!s8i x 3>> -> !cir.ptr<!s8i>
    %21 = cir.call @fopen(%18, %20) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>
    cir.store align(8) %21, %7 : !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>
    cir.scope {
      %27 = cir.load align(8) %7 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
      %28 = cir.const #cir.ptr<null> : !cir.ptr<!void>
      %29 = cir.cast bitcast %28 : !cir.ptr<!void> -> !cir.ptr<!rec__IO_FILE>
      %30 = cir.cmp(eq, %27, %29) : !cir.ptr<!rec__IO_FILE>, !cir.bool
      cir.if %30 {
        %31 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
        %32 = cir.get_global @".str.2" : !cir.ptr<!cir.array<!s8i x 28>>
        %33 = cir.cast array_to_ptrdecay %32 : !cir.ptr<!cir.array<!s8i x 28>> -> !cir.ptr<!s8i>
        %34 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!s8i>>, !cir.ptr<!s8i>
        %35 = cir.call @printf(%33, %34) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !s32i
        %36 = cir.get_global @free : !cir.ptr<!cir.func<(!cir.ptr<!void>)>>
        %37 = cir.load align(8) %6 : !cir.ptr<!cir.ptr<!cir.float>>, !cir.ptr<!cir.float>
        %38 = cir.cast bitcast %37 : !cir.ptr<!cir.float> -> !cir.ptr<!void>
        cir.call @free(%38) : (!cir.ptr<!void>) -> () extra(#fn_attr1)
        cir.return
      }
    }
    cir.scope {
      %27 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %27, %4 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %28 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %29 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %30 = cir.cmp(lt, %28, %29) : !s32i, !cir.bool
        cir.condition(%30)
      } body {
        cir.scope {
          cir.scope {
            %38 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %38, %5 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %39 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
              %40 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %41 = cir.cmp(lt, %39, %40) : !s32i, !cir.bool
              cir.condition(%41)
            } body {
              cir.scope {
                %39 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %40 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
                %41 = cir.ptr_stride %39, %40 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %42 = cir.load align(8) %41 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %43 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
                %44 = cir.ptr_stride %42, %43 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %45 = cir.load align(8) %44 : !cir.ptr<!rec_complex>, !rec_complex
                %46 = cir.call @complex_imag(%45) : (!rec_complex) -> !cir.double
                %47 = cir.cast floating %46 : !cir.double -> !cir.float
                %48 = cir.load align(8) %6 : !cir.ptr<!cir.ptr<!cir.float>>, !cir.ptr<!cir.float>
                %49 = cir.const #cir.int<2> : !s32i
                %50 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
                %51 = cir.binop(mul, %49, %50) nsw : !s32i
                %52 = cir.ptr_stride %48, %51 : (!cir.ptr<!cir.float>, !s32i) -> !cir.ptr<!cir.float>
                cir.store align(4) %47, %52 : !cir.float, !cir.ptr<!cir.float>
                %53 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %54 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
                %55 = cir.ptr_stride %53, %54 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %56 = cir.load align(8) %55 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %57 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
                %58 = cir.ptr_stride %56, %57 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %59 = cir.load align(8) %58 : !cir.ptr<!rec_complex>, !rec_complex
                %60 = cir.call @complex_real(%59) : (!rec_complex) -> !cir.double
                %61 = cir.cast floating %60 : !cir.double -> !cir.float
                %62 = cir.load align(8) %6 : !cir.ptr<!cir.ptr<!cir.float>>, !cir.ptr<!cir.float>
                %63 = cir.const #cir.int<2> : !s32i
                %64 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
                %65 = cir.binop(mul, %63, %64) nsw : !s32i
                %66 = cir.const #cir.int<1> : !s32i
                %67 = cir.binop(add, %65, %66) nsw : !s32i
                %68 = cir.ptr_stride %62, %67 : (!cir.ptr<!cir.float>, !s32i) -> !cir.ptr<!cir.float>
                cir.store align(4) %61, %68 : !cir.float, !cir.ptr<!cir.float>
              }
              cir.yield
            } step {
              %39 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
              %40 = cir.unary(inc, %39) nsw : !s32i, !s32i
              cir.store align(4) %40, %5 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
          %28 = cir.get_global @fwrite : !cir.ptr<!cir.func<(!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i>>
          %29 = cir.load align(8) %6 : !cir.ptr<!cir.ptr<!cir.float>>, !cir.ptr<!cir.float>
          %30 = cir.cast bitcast %29 : !cir.ptr<!cir.float> -> !cir.ptr<!void>
          %31 = cir.const #cir.int<4> : !u64i
          %32 = cir.const #cir.int<2> : !s32i
          %33 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
          %34 = cir.binop(mul, %32, %33) nsw : !s32i
          %35 = cir.cast integral %34 : !s32i -> !u64i
          %36 = cir.load align(8) %7 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
          %37 = cir.call @fwrite(%30, %31, %35, %36) : (!cir.ptr<!void>, !u64i, !u64i, !cir.ptr<!rec__IO_FILE>) -> !u64i
        }
        cir.yield
      } step {
        %28 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %29 = cir.unary(inc, %28) nsw : !s32i, !s32i
        cir.store align(4) %29, %4 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %22 = cir.load align(8) %7 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %23 = cir.call @fclose(%22) : (!cir.ptr<!rec__IO_FILE>) -> !s32i
    %24 = cir.get_global @free : !cir.ptr<!cir.func<(!cir.ptr<!void>)>>
    %25 = cir.load align(8) %6 : !cir.ptr<!cir.ptr<!cir.float>>, !cir.ptr<!cir.float>
    %26 = cir.cast bitcast %25 : !cir.ptr<!cir.float> -> !cir.ptr<!void>
    cir.call @free(%26) : (!cir.ptr<!void>) -> () extra(#fn_attr1)
    cir.return
  }
  cir.func dso_local @D(%arg0: !cir.double) -> !cir.double extra(#fn_attr) {
    %0 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["fa", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["__retval"] {alignment = 8 : i64}
    %2 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["z"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.double, !cir.ptr<!cir.double>
    %3 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %4 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %5 = cir.binop(mul, %3, %4) : !cir.double
    %6 = cir.const #cir.fp<1.750000e-02> : !cir.double
    %7 = cir.binop(mul, %5, %6) : !cir.double
    %8 = cir.const #cir.fp<1.750000e-02> : !cir.double
    %9 = cir.binop(mul, %7, %8) : !cir.double
    %10 = cir.const #cir.int<4> : !s32i
    %11 = cir.cast int_to_float %10 : !s32i -> !cir.double
    %12 = cir.const #cir.fp<1.770000e+03> : !cir.double
    %13 = cir.binop(mul, %11, %12) : !cir.double
    %14 = cir.const #cir.fp<1.770000e+03> : !cir.double
    %15 = cir.binop(mul, %13, %14) : !cir.double
    %16 = cir.binop(div, %9, %15) : !cir.double
    cir.store align(8) %16, %2 : !cir.double, !cir.ptr<!cir.double>
    %17 = cir.const #cir.int<1> : !s32i
    %18 = cir.cast int_to_float %17 : !s32i -> !cir.double
    %19 = cir.load align(8) %2 : !cir.ptr<!cir.double>, !cir.double
    %20 = cir.binop(sub, %18, %19) : !cir.double
    cir.store align(8) %20, %2 : !cir.double, !cir.ptr<!cir.double>
    %21 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %22 = cir.load align(8) %2 : !cir.ptr<!cir.double>, !cir.double
    %23 = cir.call @sqrt(%22) : (!cir.double) -> !cir.double extra(#fn_attr1)
    cir.store align(8) %23, %2 : !cir.double, !cir.ptr<!cir.double>
    %24 = cir.load align(8) %2 : !cir.ptr<!cir.double>, !cir.double
    cir.store %24, %1 : !cir.double, !cir.ptr<!cir.double>
    %25 = cir.load %1 : !cir.ptr<!cir.double>, !cir.double
    cir.return %25 : !cir.double
  }
  cir.func dso_local @Km(%arg0: !cir.double, %arg1: !cir.double) -> !cir.double extra(#fn_attr) {
    %0 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["d", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["fa", init] {alignment = 8 : i64}
    %2 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["__retval"] {alignment = 8 : i64}
    %3 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["z"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.double, !cir.ptr<!cir.double>
    cir.store %arg1, %1 : !cir.double, !cir.ptr<!cir.double>
    %4 = cir.const #cir.fp<1.750000e-02> : !cir.double
    %5 = cir.const #cir.fp<1.750000e-02> : !cir.double
    %6 = cir.binop(mul, %4, %5) : !cir.double
    %7 = cir.const #cir.fp<1.750000e-02> : !cir.double
    %8 = cir.binop(mul, %6, %7) : !cir.double
    %9 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %10 = cir.binop(mul, %8, %9) : !cir.double
    %11 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %12 = cir.binop(mul, %10, %11) : !cir.double
    %13 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %14 = cir.binop(mul, %12, %13) : !cir.double
    cir.store align(8) %14, %3 : !cir.double, !cir.ptr<!cir.double>
    %15 = cir.load align(8) %3 : !cir.ptr<!cir.double>, !cir.double
    %16 = cir.const #cir.int<2> : !s32i
    %17 = cir.cast int_to_float %16 : !s32i -> !cir.double
    %18 = cir.const #cir.fp<1.770000e+03> : !cir.double
    %19 = cir.binop(mul, %17, %18) : !cir.double
    %20 = cir.const #cir.fp<1.770000e+03> : !cir.double
    %21 = cir.binop(mul, %19, %20) : !cir.double
    %22 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %23 = cir.call @D(%22) : (!cir.double) -> !cir.double
    %24 = cir.binop(mul, %21, %23) : !cir.double
    %25 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %26 = cir.call @D(%25) : (!cir.double) -> !cir.double
    %27 = cir.binop(mul, %24, %26) : !cir.double
    %28 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %29 = cir.call @D(%28) : (!cir.double) -> !cir.double
    %30 = cir.binop(mul, %27, %29) : !cir.double
    %31 = cir.binop(div, %15, %30) : !cir.double
    cir.store align(8) %31, %3 : !cir.double, !cir.ptr<!cir.double>
    %32 = cir.const #cir.fp<1.200000e+01> : !cir.double
    %33 = cir.const #cir.fp<1.000000e+12> : !cir.double
    %34 = cir.binop(mul, %32, %33) : !cir.double
    %35 = cir.load align(8) %3 : !cir.ptr<!cir.double>, !cir.double
    %36 = cir.binop(mul, %34, %35) : !cir.double
    %37 = cir.const #cir.fp<3.000000e+08> : !cir.double
    %38 = cir.const #cir.fp<3.000000e+08> : !cir.double
    %39 = cir.binop(mul, %37, %38) : !cir.double
    %40 = cir.binop(div, %36, %39) : !cir.double
    cir.store align(8) %40, %3 : !cir.double, !cir.ptr<!cir.double>
    %41 = cir.const #cir.fp<1.200000e+01> : !cir.double
    %42 = cir.const #cir.int<1> : !s32i
    %43 = cir.cast int_to_float %42 : !s32i -> !cir.double
    %44 = cir.load align(8) %3 : !cir.ptr<!cir.double>, !cir.double
    %45 = cir.binop(sub, %43, %44) : !cir.double
    %46 = cir.binop(div, %41, %45) : !cir.double
    cir.store align(8) %46, %3 : !cir.double, !cir.ptr<!cir.double>
    %47 = cir.load align(8) %3 : !cir.ptr<!cir.double>, !cir.double
    cir.store %47, %2 : !cir.double, !cir.ptr<!cir.double>
    %48 = cir.load %2 : !cir.ptr<!cir.double>, !cir.double
    cir.return %48 : !cir.double
  }
  cir.func private @pow(!cir.double, !cir.double) -> !cir.double extra(#fn_attr1)
  cir.func dso_local @fai3(%arg0: !cir.double, %arg1: !cir.double, %arg2: !cir.double) -> !cir.double extra(#fn_attr) {
    %0 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["d", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["fa", init] {alignment = 8 : i64}
    %2 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["fr", init] {alignment = 8 : i64}
    %3 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["__retval"] {alignment = 8 : i64}
    %4 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["z"] {alignment = 8 : i64}
    %5 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["a"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.double, !cir.ptr<!cir.double>
    cir.store %arg1, %1 : !cir.double, !cir.ptr<!cir.double>
    cir.store %arg2, %2 : !cir.double, !cir.ptr<!cir.double>
    %6 = cir.const #cir.fp<3.1415926535000001> : !cir.double
    %7 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %8 = cir.binop(mul, %6, %7) : !cir.double
    %9 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %10 = cir.binop(mul, %8, %9) : !cir.double
    %11 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %12 = cir.binop(mul, %10, %11) : !cir.double
    %13 = cir.get_global @pow : !cir.ptr<!cir.func<(!cir.double, !cir.double) -> !cir.double>>
    %14 = cir.const #cir.fp<1.750000e-02> : !cir.double
    %15 = cir.const #cir.int<4> : !s32i
    %16 = cir.cast int_to_float %15 : !s32i -> !cir.double
    %17 = cir.call @pow(%14, %16) : (!cir.double, !cir.double) -> !cir.double extra(#fn_attr1)
    %18 = cir.binop(mul, %12, %17) : !cir.double
    cir.store align(8) %18, %4 : !cir.double, !cir.ptr<!cir.double>
    %19 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %20 = cir.call @D(%19) : (!cir.double) -> !cir.double
    cir.store align(8) %20, %5 : !cir.double, !cir.ptr<!cir.double>
    %21 = cir.const #cir.int<2> : !s32i
    %22 = cir.cast int_to_float %21 : !s32i -> !cir.double
    %23 = cir.get_global @pow : !cir.ptr<!cir.func<(!cir.double, !cir.double) -> !cir.double>>
    %24 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
    %25 = cir.const #cir.int<5> : !s32i
    %26 = cir.cast int_to_float %25 : !s32i -> !cir.double
    %27 = cir.call @pow(%24, %26) : (!cir.double, !cir.double) -> !cir.double extra(#fn_attr1)
    %28 = cir.binop(mul, %22, %27) : !cir.double
    %29 = cir.const #cir.fp<1.770000e+03> : !cir.double
    %30 = cir.binop(mul, %28, %29) : !cir.double
    %31 = cir.const #cir.fp<1.770000e+03> : !cir.double
    %32 = cir.binop(mul, %30, %31) : !cir.double
    %33 = cir.const #cir.fp<2.700000e+07> : !cir.double
    %34 = cir.binop(mul, %32, %33) : !cir.double
    cir.store align(8) %34, %5 : !cir.double, !cir.ptr<!cir.double>
    %35 = cir.load align(8) %4 : !cir.ptr<!cir.double>, !cir.double
    %36 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
    %37 = cir.binop(div, %35, %36) : !cir.double
    %38 = cir.get_global @pow : !cir.ptr<!cir.func<(!cir.double, !cir.double) -> !cir.double>>
    %39 = cir.load align(8) %2 : !cir.ptr<!cir.double>, !cir.double
    %40 = cir.const #cir.int<3> : !s32i
    %41 = cir.cast int_to_float %40 : !s32i -> !cir.double
    %42 = cir.call @pow(%39, %41) : (!cir.double, !cir.double) -> !cir.double extra(#fn_attr1)
    %43 = cir.binop(mul, %37, %42) : !cir.double
    cir.store align(8) %43, %4 : !cir.double, !cir.ptr<!cir.double>
    %44 = cir.load align(8) %4 : !cir.ptr<!cir.double>, !cir.double
    cir.store %44, %3 : !cir.double, !cir.ptr<!cir.double>
    %45 = cir.load %3 : !cir.ptr<!cir.double>, !cir.double
    cir.return %45 : !cir.double
  }
  cir.func private @cos(!cir.double) -> !cir.double extra(#fn_attr1)
  cir.func dso_local @cs(%arg0: !cir.double, %arg1: !cir.double, %arg2: !cir.double) -> !cir.double extra(#fn_attr) {
    %0 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["tao", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["fa", init] {alignment = 8 : i64}
    %2 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["fa_c", init] {alignment = 8 : i64}
    %3 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["__retval"] {alignment = 8 : i64}
    %4 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["z"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.double, !cir.ptr<!cir.double>
    cir.store %arg1, %1 : !cir.double, !cir.ptr<!cir.double>
    cir.store %arg2, %2 : !cir.double, !cir.ptr<!cir.double>
    %5 = cir.const #cir.fp<3.1415926535000001> : !cir.double
    %6 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %7 = cir.const #cir.fp<3.000000e+08> : !cir.double
    %8 = cir.binop(mul, %6, %7) : !cir.double
    %9 = cir.get_global @cos : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %10 = cir.const #cir.int<60> : !s32i
    %11 = cir.cast int_to_float %10 : !s32i -> !cir.double
    %12 = cir.const #cir.fp<3.1415926535000001> : !cir.double
    %13 = cir.binop(mul, %11, %12) : !cir.double
    %14 = cir.const #cir.int<180> : !s32i
    %15 = cir.cast int_to_float %14 : !s32i -> !cir.double
    %16 = cir.binop(div, %13, %15) : !cir.double
    %17 = cir.call @cos(%16) : (!cir.double) -> !cir.double extra(#fn_attr1)
    %18 = cir.binop(mul, %8, %17) : !cir.double
    %19 = cir.const #cir.int<2> : !s32i
    %20 = cir.cast int_to_float %19 : !s32i -> !cir.double
    %21 = cir.binop(div, %18, %20) : !cir.double
    %22 = cir.const #cir.fp<1.000000e+06> : !cir.double
    %23 = cir.binop(div, %21, %22) : !cir.double
    %24 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %25 = cir.call @Km(%23, %24) : (!cir.double, !cir.double) -> !cir.double
    %26 = cir.binop(mul, %5, %25) : !cir.double
    %27 = cir.load align(8) %2 : !cir.ptr<!cir.double>, !cir.double
    %28 = cir.call @D(%27) : (!cir.double) -> !cir.double
    %29 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %30 = cir.call @D(%29) : (!cir.double) -> !cir.double
    %31 = cir.binop(div, %28, %30) : !cir.double
    %32 = cir.const #cir.int<1> : !s32i
    %33 = cir.cast int_to_float %32 : !s32i -> !cir.double
    %34 = cir.binop(sub, %31, %33) : !cir.double
    %35 = cir.binop(mul, %26, %34) : !cir.double
    %36 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %37 = cir.const #cir.int<2> : !s32i
    %38 = cir.cast int_to_float %37 : !s32i -> !cir.double
    %39 = cir.const #cir.int<18000> : !s32i
    %40 = cir.cast int_to_float %39 : !s32i -> !cir.double
    %41 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %42 = cir.const #cir.int<2> : !s32i
    %43 = cir.cast int_to_float %42 : !s32i -> !cir.double
    %44 = cir.call @sqrt(%43) : (!cir.double) -> !cir.double extra(#fn_attr1)
    %45 = cir.binop(mul, %40, %44) : !cir.double
    %46 = cir.binop(mul, %38, %45) : !cir.double
    %47 = cir.const #cir.fp<1.000000e+06> : !cir.double
    %48 = cir.binop(mul, %46, %47) : !cir.double
    %49 = cir.const #cir.fp<3.000000e+08> : !cir.double
    %50 = cir.binop(div, %48, %49) : !cir.double
    %51 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %52 = cir.call @D(%51) : (!cir.double) -> !cir.double
    %53 = cir.binop(div, %50, %52) : !cir.double
    %54 = cir.binop(sub, %36, %53) : !cir.double
    %55 = cir.binop(mul, %35, %54) : !cir.double
    %56 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %57 = cir.const #cir.int<2> : !s32i
    %58 = cir.cast int_to_float %57 : !s32i -> !cir.double
    %59 = cir.const #cir.int<18000> : !s32i
    %60 = cir.cast int_to_float %59 : !s32i -> !cir.double
    %61 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %62 = cir.const #cir.int<2> : !s32i
    %63 = cir.cast int_to_float %62 : !s32i -> !cir.double
    %64 = cir.call @sqrt(%63) : (!cir.double) -> !cir.double extra(#fn_attr1)
    %65 = cir.binop(mul, %60, %64) : !cir.double
    %66 = cir.binop(mul, %58, %65) : !cir.double
    %67 = cir.const #cir.fp<1.000000e+06> : !cir.double
    %68 = cir.binop(mul, %66, %67) : !cir.double
    %69 = cir.const #cir.fp<3.000000e+08> : !cir.double
    %70 = cir.binop(div, %68, %69) : !cir.double
    %71 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %72 = cir.call @D(%71) : (!cir.double) -> !cir.double
    %73 = cir.binop(div, %70, %72) : !cir.double
    %74 = cir.binop(sub, %56, %73) : !cir.double
    %75 = cir.binop(mul, %55, %74) : !cir.double
    cir.store align(8) %75, %4 : !cir.double, !cir.ptr<!cir.double>
    %76 = cir.load align(8) %4 : !cir.ptr<!cir.double>, !cir.double
    cir.store %76, %3 : !cir.double, !cir.ptr<!cir.double>
    %77 = cir.load %3 : !cir.ptr<!cir.double>, !cir.double
    cir.return %77 : !cir.double
  }
  cir.func private @tan(!cir.double) -> !cir.double extra(#fn_attr1)
  cir.func dso_local @sinseta(%arg0: !cir.double) -> !cir.double extra(#fn_attr) {
    %0 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["d", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["__retval"] {alignment = 8 : i64}
    %2 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["zs"] {alignment = 8 : i64}
    %3 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["zm"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.double, !cir.ptr<!cir.double>
    %4 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %5 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %6 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %7 = cir.binop(mul, %5, %6) : !cir.double
    %8 = cir.const #cir.fp<1.800000e+04> : !cir.double
    %9 = cir.const #cir.fp<1.800000e+04> : !cir.double
    %10 = cir.binop(mul, %8, %9) : !cir.double
    %11 = cir.binop(sub, %7, %10) : !cir.double
    %12 = cir.call @sqrt(%11) : (!cir.double) -> !cir.double extra(#fn_attr1)
    %13 = cir.get_global @tan : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %14 = cir.const #cir.int<60> : !s32i
    %15 = cir.cast int_to_float %14 : !s32i -> !cir.double
    %16 = cir.const #cir.fp<3.1415926535000001> : !cir.double
    %17 = cir.binop(mul, %15, %16) : !cir.double
    %18 = cir.const #cir.int<180> : !s32i
    %19 = cir.cast int_to_float %18 : !s32i -> !cir.double
    %20 = cir.binop(div, %17, %19) : !cir.double
    %21 = cir.call @tan(%20) : (!cir.double) -> !cir.double extra(#fn_attr1)
    %22 = cir.binop(mul, %12, %21) : !cir.double
    cir.store align(8) %22, %2 : !cir.double, !cir.ptr<!cir.double>
    %23 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %24 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %25 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %26 = cir.binop(mul, %24, %25) : !cir.double
    %27 = cir.const #cir.int<2> : !s32i
    %28 = cir.cast int_to_float %27 : !s32i -> !cir.double
    %29 = cir.binop(div, %26, %28) : !cir.double
    %30 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %31 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %32 = cir.binop(mul, %30, %31) : !cir.double
    %33 = cir.const #cir.fp<1.800000e+04> : !cir.double
    %34 = cir.const #cir.fp<1.800000e+04> : !cir.double
    %35 = cir.binop(mul, %33, %34) : !cir.double
    %36 = cir.binop(sub, %32, %35) : !cir.double
    %37 = cir.get_global @tan : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %38 = cir.const #cir.int<60> : !s32i
    %39 = cir.cast int_to_float %38 : !s32i -> !cir.double
    %40 = cir.const #cir.fp<3.1415926535000001> : !cir.double
    %41 = cir.binop(mul, %39, %40) : !cir.double
    %42 = cir.const #cir.int<180> : !s32i
    %43 = cir.cast int_to_float %42 : !s32i -> !cir.double
    %44 = cir.binop(div, %41, %43) : !cir.double
    %45 = cir.call @tan(%44) : (!cir.double) -> !cir.double extra(#fn_attr1)
    %46 = cir.binop(mul, %36, %45) : !cir.double
    %47 = cir.get_global @tan : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %48 = cir.const #cir.int<60> : !s32i
    %49 = cir.cast int_to_float %48 : !s32i -> !cir.double
    %50 = cir.const #cir.fp<3.1415926535000001> : !cir.double
    %51 = cir.binop(mul, %49, %50) : !cir.double
    %52 = cir.const #cir.int<180> : !s32i
    %53 = cir.cast int_to_float %52 : !s32i -> !cir.double
    %54 = cir.binop(div, %51, %53) : !cir.double
    %55 = cir.call @tan(%54) : (!cir.double) -> !cir.double extra(#fn_attr1)
    %56 = cir.binop(mul, %46, %55) : !cir.double
    %57 = cir.binop(add, %29, %56) : !cir.double
    %58 = cir.call @sqrt(%57) : (!cir.double) -> !cir.double extra(#fn_attr1)
    cir.store align(8) %58, %3 : !cir.double, !cir.ptr<!cir.double>
    %59 = cir.load align(8) %2 : !cir.ptr<!cir.double>, !cir.double
    %60 = cir.load align(8) %3 : !cir.ptr<!cir.double>, !cir.double
    %61 = cir.binop(div, %59, %60) : !cir.double
    cir.store align(8) %61, %2 : !cir.double, !cir.ptr<!cir.double>
    %62 = cir.load align(8) %2 : !cir.ptr<!cir.double>, !cir.double
    cir.store %62, %1 : !cir.double, !cir.ptr<!cir.double>
    %63 = cir.load %1 : !cir.ptr<!cir.double>, !cir.double
    cir.return %63 : !cir.double
  }
  cir.func internal private dso_local @create_complex_2d_array(%arg0: !s32i, %arg1: !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>> extra(#fn_attr) {
    %0 = cir.alloca !s32i, !cir.ptr<!s32i>, ["rows", init] {alignment = 4 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["cols", init] {alignment = 4 : i64}
    %2 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["__retval"] {alignment = 8 : i64}
    %3 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["arr", init] {alignment = 8 : i64}
    cir.store %arg0, %0 : !s32i, !cir.ptr<!s32i>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    %4 = cir.get_global @malloc : !cir.ptr<!cir.func<(!u64i) -> !cir.ptr<!void>>>
    %5 = cir.load align(4) %0 : !cir.ptr<!s32i>, !s32i
    %6 = cir.cast integral %5 : !s32i -> !u64i
    %7 = cir.const #cir.int<8> : !u64i
    %8 = cir.binop(mul, %6, %7) : !u64i
    %9 = cir.call @malloc(%8) : (!u64i) -> !cir.ptr<!void> extra(#fn_attr1)
    %10 = cir.cast bitcast %9 : !cir.ptr<!void> -> !cir.ptr<!cir.ptr<!rec_complex>>
    cir.store align(8) %10, %3 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    cir.scope {
      %13 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i", init] {alignment = 4 : i64}
      %14 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %14, %13 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %15 = cir.load align(4) %13 : !cir.ptr<!s32i>, !s32i
        %16 = cir.load align(4) %0 : !cir.ptr<!s32i>, !s32i
        %17 = cir.cmp(lt, %15, %16) : !s32i, !cir.bool
        cir.condition(%17)
      } body {
        cir.scope {
          %15 = cir.get_global @malloc : !cir.ptr<!cir.func<(!u64i) -> !cir.ptr<!void>>>
          %16 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
          %17 = cir.cast integral %16 : !s32i -> !u64i
          %18 = cir.const #cir.int<16> : !u64i
          %19 = cir.binop(mul, %17, %18) : !u64i
          %20 = cir.call @malloc(%19) : (!u64i) -> !cir.ptr<!void> extra(#fn_attr1)
          %21 = cir.cast bitcast %20 : !cir.ptr<!void> -> !cir.ptr<!rec_complex>
          %22 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
          %23 = cir.load align(4) %13 : !cir.ptr<!s32i>, !s32i
          %24 = cir.ptr_stride %22, %23 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
          cir.store align(8) %21, %24 : !cir.ptr<!rec_complex>, !cir.ptr<!cir.ptr<!rec_complex>>
          cir.scope {
            %25 = cir.alloca !s32i, !cir.ptr<!s32i>, ["j", init] {alignment = 4 : i64}
            %26 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %26, %25 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %27 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
              %28 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
              %29 = cir.cmp(lt, %27, %28) : !s32i, !cir.bool
              cir.condition(%29)
            } body {
              cir.scope {
                %27 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["tmp"] {alignment = 8 : i64}
                %28 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %29 = cir.load align(4) %13 : !cir.ptr<!s32i>, !s32i
                %30 = cir.ptr_stride %28, %29 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %31 = cir.load align(8) %30 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %32 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
                %33 = cir.ptr_stride %31, %32 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %34 = cir.const #cir.fp<0.000000e+00> : !cir.double
                %35 = cir.const #cir.fp<0.000000e+00> : !cir.double
                %36 = cir.call @complex_create(%34, %35) : (!cir.double, !cir.double) -> !rec_complex
                cir.store align(8) %36, %27 : !rec_complex, !cir.ptr<!rec_complex>
                cir.copy %27 to %33 : !cir.ptr<!rec_complex>
              }
              cir.yield
            } step {
              %27 = cir.load align(4) %25 : !cir.ptr<!s32i>, !s32i
              %28 = cir.unary(inc, %27) nsw : !s32i, !s32i
              cir.store align(4) %28, %25 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
        }
        cir.yield
      } step {
        %15 = cir.load align(4) %13 : !cir.ptr<!s32i>, !s32i
        %16 = cir.unary(inc, %15) nsw : !s32i, !s32i
        cir.store align(4) %16, %13 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %11 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
    cir.store %11, %2 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    %12 = cir.load %2 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
    cir.return %12 : !cir.ptr<!cir.ptr<!rec_complex>>
  }
  cir.global "private" constant cir_private dso_local @".str.6" = #cir.const_array<"echo_m60.txt\00" : !cir.array<!s8i x 13>> : !cir.array<!s8i x 13> {alignment = 1 : i64}
  cir.global "private" constant cir_private dso_local @".str.7" = #cir.const_array<"r\00" : !cir.array<!s8i x 2>> : !cir.array<!s8i x 2> {alignment = 1 : i64}
  cir.global "private" constant cir_private dso_local @".str.8" = #cir.const_array<"Error: Cannot open file echo_m60.txt\0A\00" : !cir.array<!s8i x 38>> : !cir.array<!s8i x 38> {alignment = 1 : i64}
  cir.func private @__isoc99_fscanf(!cir.ptr<!rec__IO_FILE>, !cir.ptr<!s8i>, ...) -> !s32i
  cir.global "private" constant cir_private dso_local @".str.9" = #cir.const_array<"%lf %lf\00" : !cir.array<!s8i x 8>> : !cir.array<!s8i x 8> {alignment = 1 : i64}
  cir.global "private" constant cir_private dso_local @".str.10" = #cir.const_array<"Error reading data at (%d, %d)\0A\00" : !cir.array<!s8i x 32>> : !cir.array<!s8i x 32> {alignment = 1 : i64}
  cir.func internal private dso_local @free_complex_2d_array(%arg0: !cir.ptr<!cir.ptr<!rec_complex>>, %arg1: !s32i) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["arr", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["rows", init] {alignment = 4 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.scope {
      %5 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i", init] {alignment = 4 : i64}
      %6 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %6, %5 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %7 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
        %8 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %9 = cir.cmp(lt, %7, %8) : !s32i, !cir.bool
        cir.condition(%9)
      } body {
        cir.scope {
          %7 = cir.get_global @free : !cir.ptr<!cir.func<(!cir.ptr<!void>)>>
          %8 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
          %9 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
          %10 = cir.ptr_stride %8, %9 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
          %11 = cir.load align(8) %10 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
          %12 = cir.cast bitcast %11 : !cir.ptr<!rec_complex> -> !cir.ptr<!void>
          cir.call @free(%12) : (!cir.ptr<!void>) -> () extra(#fn_attr1)
        }
        cir.yield
      } step {
        %7 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
        %8 = cir.unary(inc, %7) nsw : !s32i, !s32i
        cir.store align(4) %8, %5 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %2 = cir.get_global @free : !cir.ptr<!cir.func<(!cir.ptr<!void>)>>
    %3 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
    %4 = cir.cast bitcast %3 : !cir.ptr<!cir.ptr<!rec_complex>> -> !cir.ptr<!void>
    cir.call @free(%4) : (!cir.ptr<!void>) -> () extra(#fn_attr1)
    cir.return
  }
  cir.func internal private dso_local @complex_create(%arg0: !cir.double, %arg1: !cir.double) -> !rec_complex extra(#fn_attr) {
    %0 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["real", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["imag", init] {alignment = 8 : i64}
    %2 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.double, !cir.ptr<!cir.double>
    cir.store %arg1, %1 : !cir.double, !cir.ptr<!cir.double>
    %3 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %4 = cir.get_member %2[0] {name = "real"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    cir.store align(8) %3, %4 : !cir.double, !cir.ptr<!cir.double>
    %5 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %6 = cir.get_member %2[1] {name = "imag"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    cir.store align(8) %5, %6 : !cir.double, !cir.ptr<!cir.double>
    %7 = cir.load %2 : !cir.ptr<!rec_complex>, !rec_complex
    cir.return %7 : !rec_complex
  }
  cir.global "private" constant cir_private dso_local @".str.11" = #cir.const_array<"Echo data loaded successfully.\0A\00" : !cir.array<!s8i x 32>> : !cir.array<!s8i x 32> {alignment = 1 : i64}
  cir.func private @sin(!cir.double) -> !cir.double extra(#fn_attr1)
  cir.func internal private dso_local @complex_pole(%arg0: !cir.double, %arg1: !cir.double) -> !rec_complex extra(#fn_attr) {
    %0 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["a", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["fi", init] {alignment = 8 : i64}
    %2 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.double, !cir.ptr<!cir.double>
    cir.store %arg1, %1 : !cir.double, !cir.ptr<!cir.double>
    %3 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %4 = cir.get_global @cos : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %5 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %6 = cir.call @cos(%5) : (!cir.double) -> !cir.double extra(#fn_attr1)
    %7 = cir.binop(mul, %3, %6) : !cir.double
    %8 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %9 = cir.get_global @sin : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %10 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %11 = cir.call @sin(%10) : (!cir.double) -> !cir.double extra(#fn_attr1)
    %12 = cir.binop(mul, %8, %11) : !cir.double
    %13 = cir.call @complex_create(%7, %12) : (!cir.double, !cir.double) -> !rec_complex
    cir.store align(8) %13, %2 : !rec_complex, !cir.ptr<!rec_complex>
    %14 = cir.load %2 : !cir.ptr<!rec_complex>, !rec_complex
    cir.return %14 : !rec_complex
  }
  cir.func internal private dso_local @complex_mul(%arg0: !rec_complex, %arg1: !rec_complex) -> !rec_complex extra(#fn_attr) {
    %0 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["a", init] {alignment = 8 : i64}
    %1 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["b", init] {alignment = 8 : i64}
    %2 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_complex, !cir.ptr<!rec_complex>
    cir.store %arg1, %1 : !rec_complex, !cir.ptr<!rec_complex>
    %3 = cir.get_member %0[0] {name = "real"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %4 = cir.load align(8) %3 : !cir.ptr<!cir.double>, !cir.double
    %5 = cir.get_member %1[0] {name = "real"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %6 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
    %7 = cir.binop(mul, %4, %6) : !cir.double
    %8 = cir.get_member %0[1] {name = "imag"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %9 = cir.load align(8) %8 : !cir.ptr<!cir.double>, !cir.double
    %10 = cir.get_member %1[1] {name = "imag"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %11 = cir.load align(8) %10 : !cir.ptr<!cir.double>, !cir.double
    %12 = cir.binop(mul, %9, %11) : !cir.double
    %13 = cir.binop(sub, %7, %12) : !cir.double
    %14 = cir.get_member %0[0] {name = "real"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %15 = cir.load align(8) %14 : !cir.ptr<!cir.double>, !cir.double
    %16 = cir.get_member %1[1] {name = "imag"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %17 = cir.load align(8) %16 : !cir.ptr<!cir.double>, !cir.double
    %18 = cir.binop(mul, %15, %17) : !cir.double
    %19 = cir.get_member %0[1] {name = "imag"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %20 = cir.load align(8) %19 : !cir.ptr<!cir.double>, !cir.double
    %21 = cir.get_member %1[0] {name = "real"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %22 = cir.load align(8) %21 : !cir.ptr<!cir.double>, !cir.double
    %23 = cir.binop(mul, %20, %22) : !cir.double
    %24 = cir.binop(add, %18, %23) : !cir.double
    %25 = cir.call @complex_create(%13, %24) : (!cir.double, !cir.double) -> !rec_complex
    cir.store align(8) %25, %2 : !rec_complex, !cir.ptr<!rec_complex>
    %26 = cir.load %2 : !cir.ptr<!rec_complex>, !rec_complex
    cir.return %26 : !rec_complex
  }
  cir.global "private" constant cir_private dso_local @".str.12" = #cir.const_array<"Frequency shift compensation completed.\0A\00" : !cir.array<!s8i x 41>> : !cir.array<!s8i x 41> {alignment = 1 : i64}
  cir.func internal private dso_local @FFT_ar(%arg0: !cir.ptr<!cir.ptr<!rec_complex>>, %arg1: !s32i, %arg2: !s32i, %arg3: !s32i) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["na", init] {alignment = 4 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["nr", init] {alignment = 4 : i64}
    %3 = cir.alloca !s32i, !cir.ptr<!s32i>, ["type", init] {alignment = 4 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.store %arg2, %2 : !s32i, !cir.ptr<!s32i>
    cir.store %arg3, %3 : !s32i, !cir.ptr<!s32i>
    %4 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
    %5 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
    %6 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
    %7 = cir.load align(4) %3 : !cir.ptr<!s32i>, !s32i
    cir.call @FFT_r(%4, %5, %6, %7) : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i, !s32i, !s32i) -> ()
    %8 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
    %9 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
    %10 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
    %11 = cir.load align(4) %3 : !cir.ptr<!s32i>, !s32i
    cir.call @FFT_a(%8, %9, %10, %11) : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i, !s32i, !s32i) -> ()
    cir.return
  }
  cir.global "private" constant cir_private dso_local @".str.13" = #cir.const_array<"2D FFT completed.\0A\00" : !cir.array<!s8i x 19>> : !cir.array<!s8i x 19> {alignment = 1 : i64}
  cir.global "private" constant cir_private dso_local @".str.14" = #cir.const_array<"Cubic phase compensation completed.\0A\00" : !cir.array<!s8i x 37>> : !cir.array<!s8i x 37> {alignment = 1 : i64}
  cir.func internal private dso_local @complex_point(%arg0: !cir.double, %arg1: !cir.double) -> !rec_complex extra(#fn_attr) {
    %0 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["y", init] {alignment = 8 : i64}
    %2 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.double, !cir.ptr<!cir.double>
    cir.store %arg1, %1 : !cir.double, !cir.ptr<!cir.double>
    %3 = cir.load align(8) %0 : !cir.ptr<!cir.double>, !cir.double
    %4 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
    %5 = cir.call @complex_create(%3, %4) : (!cir.double, !cir.double) -> !rec_complex
    cir.store align(8) %5, %2 : !rec_complex, !cir.ptr<!rec_complex>
    %6 = cir.load %2 : !cir.ptr<!rec_complex>, !rec_complex
    cir.return %6 : !rec_complex
  }
  cir.func internal private dso_local @complex_sub(%arg0: !rec_complex, %arg1: !rec_complex) -> !rec_complex extra(#fn_attr) {
    %0 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["a", init] {alignment = 8 : i64}
    %1 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["b", init] {alignment = 8 : i64}
    %2 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_complex, !cir.ptr<!rec_complex>
    cir.store %arg1, %1 : !rec_complex, !cir.ptr<!rec_complex>
    %3 = cir.get_member %0[0] {name = "real"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %4 = cir.load align(8) %3 : !cir.ptr<!cir.double>, !cir.double
    %5 = cir.get_member %1[0] {name = "real"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %6 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
    %7 = cir.binop(sub, %4, %6) : !cir.double
    %8 = cir.get_member %0[1] {name = "imag"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %9 = cir.load align(8) %8 : !cir.ptr<!cir.double>, !cir.double
    %10 = cir.get_member %1[1] {name = "imag"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %11 = cir.load align(8) %10 : !cir.ptr<!cir.double>, !cir.double
    %12 = cir.binop(sub, %9, %11) : !cir.double
    %13 = cir.call @complex_create(%7, %12) : (!cir.double, !cir.double) -> !rec_complex
    cir.store align(8) %13, %2 : !rec_complex, !cir.ptr<!rec_complex>
    %14 = cir.load %2 : !cir.ptr<!rec_complex>, !rec_complex
    cir.return %14 : !rec_complex
  }
  cir.func internal private dso_local @complex_add(%arg0: !rec_complex, %arg1: !rec_complex) -> !rec_complex extra(#fn_attr) {
    %0 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["a", init] {alignment = 8 : i64}
    %1 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["b", init] {alignment = 8 : i64}
    %2 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_complex, !cir.ptr<!rec_complex>
    cir.store %arg1, %1 : !rec_complex, !cir.ptr<!rec_complex>
    %3 = cir.get_member %0[0] {name = "real"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %4 = cir.load align(8) %3 : !cir.ptr<!cir.double>, !cir.double
    %5 = cir.get_member %1[0] {name = "real"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %6 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
    %7 = cir.binop(add, %4, %6) : !cir.double
    %8 = cir.get_member %0[1] {name = "imag"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %9 = cir.load align(8) %8 : !cir.ptr<!cir.double>, !cir.double
    %10 = cir.get_member %1[1] {name = "imag"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
    %11 = cir.load align(8) %10 : !cir.ptr<!cir.double>, !cir.double
    %12 = cir.binop(add, %9, %11) : !cir.double
    %13 = cir.call @complex_create(%7, %12) : (!cir.double, !cir.double) -> !rec_complex
    cir.store align(8) %13, %2 : !rec_complex, !cir.ptr<!rec_complex>
    %14 = cir.load %2 : !cir.ptr<!rec_complex>, !rec_complex
    cir.return %14 : !rec_complex
  }
  cir.func internal private dso_local @complex_create_zero() -> !rec_complex extra(#fn_attr) {
    %0 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["__retval"] {alignment = 8 : i64}
    %1 = cir.const #cir.fp<0.000000e+00> : !cir.double
    %2 = cir.const #cir.fp<0.000000e+00> : !cir.double
    %3 = cir.call @complex_create(%1, %2) : (!cir.double, !cir.double) -> !rec_complex
    cir.store align(8) %3, %0 : !rec_complex, !cir.ptr<!rec_complex>
    %4 = cir.load %0 : !cir.ptr<!rec_complex>, !rec_complex
    cir.return %4 : !rec_complex
  }
  cir.func internal private dso_local @complex_div_real(%arg0: !rec_complex, %arg1: !cir.double) -> !rec_complex extra(#fn_attr) {
    %0 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["a", init] {alignment = 8 : i64}
    %1 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["b", init] {alignment = 8 : i64}
    %2 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["__retval"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !rec_complex, !cir.ptr<!rec_complex>
    cir.store %arg1, %1 : !cir.double, !cir.ptr<!cir.double>
    cir.scope {
      %4 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
      %5 = cir.const #cir.int<0> : !s32i
      %6 = cir.cast int_to_float %5 : !s32i -> !cir.double
      %7 = cir.cmp(eq, %4, %6) : !cir.double, !cir.bool
      cir.if %7 {
        %8 = cir.call @complex_create_zero() : () -> !rec_complex
        cir.store align(8) %8, %2 : !rec_complex, !cir.ptr<!rec_complex>
        %9 = cir.load %2 : !cir.ptr<!rec_complex>, !rec_complex
        cir.return %9 : !rec_complex
      } else {
        %8 = cir.get_member %0[0] {name = "real"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
        %9 = cir.load align(8) %8 : !cir.ptr<!cir.double>, !cir.double
        %10 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
        %11 = cir.binop(div, %9, %10) : !cir.double
        %12 = cir.get_member %0[1] {name = "imag"} : !cir.ptr<!rec_complex> -> !cir.ptr<!cir.double>
        %13 = cir.load align(8) %12 : !cir.ptr<!cir.double>, !cir.double
        %14 = cir.load align(8) %1 : !cir.ptr<!cir.double>, !cir.double
        %15 = cir.binop(div, %13, %14) : !cir.double
        %16 = cir.call @complex_create(%11, %15) : (!cir.double, !cir.double) -> !rec_complex
        cir.store align(8) %16, %2 : !rec_complex, !cir.ptr<!rec_complex>
        %17 = cir.load %2 : !cir.ptr<!rec_complex>, !rec_complex
        cir.return %17 : !rec_complex
      }
    }
    %3 = cir.load %2 : !cir.ptr<!rec_complex>, !rec_complex
    cir.return %3 : !rec_complex
  }
  cir.func internal private dso_local @FFT(%arg0: !cir.ptr<!rec_complex>, %arg1: !s32i, %arg2: !s32i) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!rec_complex>, !cir.ptr<!cir.ptr<!rec_complex>>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["nu", init] {alignment = 4 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["type", init] {alignment = 4 : i64}
    %3 = cir.alloca !s32i, !cir.ptr<!s32i>, ["N"] {alignment = 4 : i64}
    %4 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i"] {alignment = 4 : i64}
    %5 = cir.alloca !s32i, !cir.ptr<!s32i>, ["j"] {alignment = 4 : i64}
    %6 = cir.alloca !s32i, !cir.ptr<!s32i>, ["k"] {alignment = 4 : i64}
    %7 = cir.alloca !s32i, !cir.ptr<!s32i>, ["length"] {alignment = 4 : i64}
    %8 = cir.alloca !s32i, !cir.ptr<!s32i>, ["length1"] {alignment = 4 : i64}
    %9 = cir.alloca !s32i, !cir.ptr<!s32i>, ["ip"] {alignment = 4 : i64}
    %10 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["theta"] {alignment = 8 : i64}
    %11 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["W"] {alignment = 8 : i64}
    %12 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["Wn"] {alignment = 8 : i64}
    %13 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["xw"] {alignment = 8 : i64}
    %14 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["temp"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.ptr<!rec_complex>, !cir.ptr<!cir.ptr<!rec_complex>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.store %arg2, %2 : !s32i, !cir.ptr<!s32i>
    %15 = cir.const #cir.int<1> : !s32i
    cir.store align(4) %15, %3 : !s32i, !cir.ptr<!s32i>
    cir.scope {
      %17 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %17, %4 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %18 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %19 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %20 = cir.cmp(lt, %18, %19) : !s32i, !cir.bool
        cir.condition(%20)
      } body {
        cir.scope {
          %18 = cir.load align(4) %3 : !cir.ptr<!s32i>, !s32i
          %19 = cir.const #cir.int<2> : !s32i
          %20 = cir.binop(mul, %18, %19) nsw : !s32i
          cir.store align(4) %20, %3 : !s32i, !cir.ptr<!s32i>
        }
        cir.yield
      } step {
        %18 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %19 = cir.unary(inc, %18) nsw : !s32i, !s32i
        cir.store align(4) %19, %4 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %16 = cir.const #cir.int<1> : !s32i
    cir.store align(4) %16, %5 : !s32i, !cir.ptr<!s32i>
    cir.scope {
      %17 = cir.const #cir.int<1> : !s32i
      cir.store align(4) %17, %4 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %18 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %19 = cir.load align(4) %3 : !cir.ptr<!s32i>, !s32i
        %20 = cir.cmp(lt, %18, %19) : !s32i, !cir.bool
        cir.condition(%20)
      } body {
        cir.scope {
          cir.scope {
            %24 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
            %25 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
            %26 = cir.cmp(lt, %24, %25) : !s32i, !cir.bool
            cir.if %26 {
              %27 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
              %28 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
              %29 = cir.const #cir.int<1> : !s32i
              %30 = cir.binop(sub, %28, %29) nsw : !s32i
              %31 = cir.ptr_stride %27, %30 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
              cir.copy %31 to %14 : !cir.ptr<!rec_complex>
              %32 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
              %33 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
              %34 = cir.const #cir.int<1> : !s32i
              %35 = cir.binop(sub, %33, %34) nsw : !s32i
              %36 = cir.ptr_stride %32, %35 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
              %37 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
              %38 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
              %39 = cir.const #cir.int<1> : !s32i
              %40 = cir.binop(sub, %38, %39) nsw : !s32i
              %41 = cir.ptr_stride %37, %40 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
              cir.copy %41 to %36 : !cir.ptr<!rec_complex>
              %42 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
              %43 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
              %44 = cir.const #cir.int<1> : !s32i
              %45 = cir.binop(sub, %43, %44) nsw : !s32i
              %46 = cir.ptr_stride %42, %45 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
              cir.copy %14 to %46 : !cir.ptr<!rec_complex>
            }
          }
          %18 = cir.load align(4) %3 : !cir.ptr<!s32i>, !s32i
          %19 = cir.const #cir.int<2> : !s32i
          %20 = cir.binop(div, %18, %19) : !s32i
          cir.store align(4) %20, %6 : !s32i, !cir.ptr<!s32i>
          cir.scope {
            cir.while {
              %24 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
              %25 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
              %26 = cir.cmp(lt, %24, %25) : !s32i, !cir.bool
              cir.condition(%26)
            } do {
              cir.scope {
                %24 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
                %25 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
                %26 = cir.binop(sub, %24, %25) nsw : !s32i
                cir.store align(4) %26, %5 : !s32i, !cir.ptr<!s32i>
                %27 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
                %28 = cir.const #cir.int<2> : !s32i
                %29 = cir.binop(div, %27, %28) : !s32i
                cir.store align(4) %29, %6 : !s32i, !cir.ptr<!s32i>
              }
              cir.yield
            }
          }
          %21 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
          %22 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
          %23 = cir.binop(add, %21, %22) nsw : !s32i
          cir.store align(4) %23, %5 : !s32i, !cir.ptr<!s32i>
        }
        cir.yield
      } step {
        %18 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %19 = cir.unary(inc, %18) nsw : !s32i, !s32i
        cir.store align(4) %19, %4 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    cir.scope {
      %17 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %17, %6 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %18 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
        %19 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %20 = cir.cmp(lt, %18, %19) : !s32i, !cir.bool
        cir.condition(%20)
      } body {
        cir.scope {
          %18 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["tmp"] {alignment = 8 : i64}
          %19 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["tmp"] {alignment = 8 : i64}
          %20 = cir.const #cir.int<1> : !s32i
          cir.store align(4) %20, %7 : !s32i, !cir.ptr<!s32i>
          cir.scope {
            %40 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %40, %4 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %41 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
              %42 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
              %43 = cir.cmp(le, %41, %42) : !s32i, !cir.bool
              cir.condition(%43)
            } body {
              cir.scope {
                %41 = cir.load align(4) %7 : !cir.ptr<!s32i>, !s32i
                %42 = cir.const #cir.int<2> : !s32i
                %43 = cir.binop(mul, %41, %42) nsw : !s32i
                cir.store align(4) %43, %7 : !s32i, !cir.ptr<!s32i>
              }
              cir.yield
            } step {
              %41 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
              %42 = cir.unary(inc, %41) nsw : !s32i, !s32i
              cir.store align(4) %42, %4 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
          %21 = cir.load align(4) %7 : !cir.ptr<!s32i>, !s32i
          %22 = cir.const #cir.int<2> : !s32i
          %23 = cir.binop(div, %21, %22) : !s32i
          cir.store align(4) %23, %8 : !s32i, !cir.ptr<!s32i>
          %24 = cir.const #cir.fp<3.1415926535000001> : !cir.double
          %25 = cir.load align(4) %8 : !cir.ptr<!s32i>, !s32i
          %26 = cir.cast int_to_float %25 : !s32i -> !cir.double
          %27 = cir.binop(div, %24, %26) : !cir.double
          cir.store align(8) %27, %10 : !cir.double, !cir.ptr<!cir.double>
          %28 = cir.const #cir.int<1> : !s32i
          %29 = cir.cast int_to_float %28 : !s32i -> !cir.double
          %30 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
          %31 = cir.cast int_to_float %30 : !s32i -> !cir.double
          %32 = cir.load align(8) %10 : !cir.ptr<!cir.double>, !cir.double
          %33 = cir.binop(mul, %31, %32) : !cir.double
          %34 = cir.call @complex_pole(%29, %33) : (!cir.double, !cir.double) -> !rec_complex
          cir.store align(8) %34, %18 : !rec_complex, !cir.ptr<!rec_complex>
          cir.copy %18 to %11 : !cir.ptr<!rec_complex>
          %35 = cir.const #cir.int<1> : !s32i
          %36 = cir.cast int_to_float %35 : !s32i -> !cir.double
          %37 = cir.const #cir.int<0> : !s32i
          %38 = cir.cast int_to_float %37 : !s32i -> !cir.double
          %39 = cir.call @complex_point(%36, %38) : (!cir.double, !cir.double) -> !rec_complex
          cir.store align(8) %39, %19 : !rec_complex, !cir.ptr<!rec_complex>
          cir.copy %19 to %12 : !cir.ptr<!rec_complex>
          cir.scope {
            %40 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %40, %5 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %41 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
              %42 = cir.load align(4) %8 : !cir.ptr<!s32i>, !s32i
              %43 = cir.cmp(lt, %41, %42) : !s32i, !cir.bool
              cir.condition(%43)
            } body {
              cir.scope {
                %41 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["tmp"] {alignment = 8 : i64}
                cir.scope {
                  %45 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
                  cir.store align(4) %45, %4 : !s32i, !cir.ptr<!s32i>
                  cir.for : cond {
                    %46 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
                    %47 = cir.load align(4) %3 : !cir.ptr<!s32i>, !s32i
                    %48 = cir.cmp(lt, %46, %47) : !s32i, !cir.bool
                    cir.condition(%48)
                  } body {
                    cir.scope {
                      %46 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["tmp"] {alignment = 8 : i64}
                      %47 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["tmp"] {alignment = 8 : i64}
                      %48 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["tmp"] {alignment = 8 : i64}
                      %49 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
                      %50 = cir.load align(4) %8 : !cir.ptr<!s32i>, !s32i
                      %51 = cir.binop(add, %49, %50) nsw : !s32i
                      cir.store align(4) %51, %9 : !s32i, !cir.ptr<!s32i>
                      %52 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                      %53 = cir.load align(4) %9 : !cir.ptr<!s32i>, !s32i
                      %54 = cir.ptr_stride %52, %53 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                      %55 = cir.load align(8) %54 : !cir.ptr<!rec_complex>, !rec_complex
                      %56 = cir.load align(8) %12 : !cir.ptr<!rec_complex>, !rec_complex
                      %57 = cir.call @complex_mul(%55, %56) : (!rec_complex, !rec_complex) -> !rec_complex
                      cir.store align(8) %57, %46 : !rec_complex, !cir.ptr<!rec_complex>
                      cir.copy %46 to %13 : !cir.ptr<!rec_complex>
                      %58 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                      %59 = cir.load align(4) %9 : !cir.ptr<!s32i>, !s32i
                      %60 = cir.ptr_stride %58, %59 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                      %61 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                      %62 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
                      %63 = cir.ptr_stride %61, %62 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                      %64 = cir.load align(8) %63 : !cir.ptr<!rec_complex>, !rec_complex
                      %65 = cir.load align(8) %13 : !cir.ptr<!rec_complex>, !rec_complex
                      %66 = cir.call @complex_sub(%64, %65) : (!rec_complex, !rec_complex) -> !rec_complex
                      cir.store align(8) %66, %47 : !rec_complex, !cir.ptr<!rec_complex>
                      cir.copy %47 to %60 : !cir.ptr<!rec_complex>
                      %67 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                      %68 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
                      %69 = cir.ptr_stride %67, %68 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                      %70 = cir.load align(8) %69 : !cir.ptr<!rec_complex>, !rec_complex
                      %71 = cir.load align(8) %13 : !cir.ptr<!rec_complex>, !rec_complex
                      %72 = cir.call @complex_add(%70, %71) : (!rec_complex, !rec_complex) -> !rec_complex
                      cir.store align(8) %72, %48 : !rec_complex, !cir.ptr<!rec_complex>
                      cir.copy %48 to %14 : !cir.ptr<!rec_complex>
                      %73 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                      %74 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
                      %75 = cir.ptr_stride %73, %74 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                      cir.copy %14 to %75 : !cir.ptr<!rec_complex>
                    }
                    cir.yield
                  } step {
                    %46 = cir.load align(4) %7 : !cir.ptr<!s32i>, !s32i
                    %47 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
                    %48 = cir.binop(add, %47, %46) nsw : !s32i
                    cir.store align(4) %48, %4 : !s32i, !cir.ptr<!s32i>
                    cir.yield
                  }
                }
                %42 = cir.load align(8) %12 : !cir.ptr<!rec_complex>, !rec_complex
                %43 = cir.load align(8) %11 : !cir.ptr<!rec_complex>, !rec_complex
                %44 = cir.call @complex_mul(%42, %43) : (!rec_complex, !rec_complex) -> !rec_complex
                cir.store align(8) %44, %41 : !rec_complex, !cir.ptr<!rec_complex>
                cir.copy %41 to %14 : !cir.ptr<!rec_complex>
                cir.copy %14 to %12 : !cir.ptr<!rec_complex>
              }
              cir.yield
            } step {
              %41 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
              %42 = cir.unary(inc, %41) nsw : !s32i, !s32i
              cir.store align(4) %42, %5 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
        }
        cir.yield
      } step {
        %18 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
        %19 = cir.unary(inc, %18) nsw : !s32i, !s32i
        cir.store align(4) %19, %6 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    cir.scope {
      %17 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
      %18 = cir.const #cir.int<1> : !s32i
      %19 = cir.cmp(eq, %17, %18) : !s32i, !cir.bool
      cir.if %19 {
        cir.scope {
          %20 = cir.const #cir.int<0> : !s32i
          cir.store align(4) %20, %4 : !s32i, !cir.ptr<!s32i>
          cir.for : cond {
            %21 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
            %22 = cir.load align(4) %3 : !cir.ptr<!s32i>, !s32i
            %23 = cir.cmp(lt, %21, %22) : !s32i, !cir.bool
            cir.condition(%23)
          } body {
            cir.scope {
              %21 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["tmp"] {alignment = 8 : i64}
              %22 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
              %23 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
              %24 = cir.ptr_stride %22, %23 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
              %25 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
              %26 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
              %27 = cir.ptr_stride %25, %26 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
              %28 = cir.load align(4) %3 : !cir.ptr<!s32i>, !s32i
              %29 = cir.cast int_to_float %28 : !s32i -> !cir.double
              %30 = cir.load align(8) %27 : !cir.ptr<!rec_complex>, !rec_complex
              %31 = cir.call @complex_div_real(%30, %29) : (!rec_complex, !cir.double) -> !rec_complex
              cir.store align(8) %31, %21 : !rec_complex, !cir.ptr<!rec_complex>
              cir.copy %21 to %24 : !cir.ptr<!rec_complex>
            }
            cir.yield
          } step {
            %21 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
            %22 = cir.unary(inc, %21) nsw : !s32i, !s32i
            cir.store align(4) %22, %4 : !s32i, !cir.ptr<!s32i>
            cir.yield
          }
        }
      }
    }
    cir.return
  }
  cir.func internal private dso_local @FFT_r(%arg0: !cir.ptr<!cir.ptr<!rec_complex>>, %arg1: !s32i, %arg2: !s32i, %arg3: !s32i) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["na", init] {alignment = 4 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["nr", init] {alignment = 4 : i64}
    %3 = cir.alloca !s32i, !cir.ptr<!s32i>, ["type", init] {alignment = 4 : i64}
    %4 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i"] {alignment = 4 : i64}
    %5 = cir.alloca !s32i, !cir.ptr<!s32i>, ["a"] {alignment = 4 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.store %arg2, %2 : !s32i, !cir.ptr<!s32i>
    cir.store %arg3, %3 : !s32i, !cir.ptr<!s32i>
    %6 = cir.const #cir.int<1> : !s32i
    cir.store align(4) %6, %5 : !s32i, !cir.ptr<!s32i>
    cir.scope {
      %7 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %7, %4 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %8 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %9 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %10 = cir.cmp(lt, %8, %9) : !s32i, !cir.bool
        cir.condition(%10)
      } body {
        %8 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
        %9 = cir.const #cir.int<2> : !s32i
        %10 = cir.binop(mul, %8, %9) nsw : !s32i
        cir.store align(4) %10, %5 : !s32i, !cir.ptr<!s32i>
        cir.yield
      } step {
        %8 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %9 = cir.unary(inc, %8) nsw : !s32i, !s32i
        cir.store align(4) %9, %4 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    cir.scope {
      %7 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %7, %4 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %8 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %9 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
        %10 = cir.cmp(lt, %8, %9) : !s32i, !cir.bool
        cir.condition(%10)
      } body {
        %8 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
        %9 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %10 = cir.ptr_stride %8, %9 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
        %11 = cir.load align(8) %10 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
        %12 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
        %13 = cir.load align(4) %3 : !cir.ptr<!s32i>, !s32i
        cir.call @FFT(%11, %12, %13) : (!cir.ptr<!rec_complex>, !s32i, !s32i) -> ()
        cir.yield
      } step {
        %8 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %9 = cir.unary(inc, %8) nsw : !s32i, !s32i
        cir.store align(4) %9, %4 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    cir.return
  }
  cir.global "private" constant cir_private dso_local @".str.15" = #cir.const_array<"Range IFFT completed.\0A\00" : !cir.array<!s8i x 23>> : !cir.array<!s8i x 23> {alignment = 1 : i64}
  cir.global "private" constant cir_private dso_local @".str.16" = #cir.const_array<"CS transformation completed.\0A\00" : !cir.array<!s8i x 30>> : !cir.array<!s8i x 30> {alignment = 1 : i64}
  cir.global "private" constant cir_private dso_local @".str.17" = #cir.const_array<"Range FFT completed.\0A\00" : !cir.array<!s8i x 22>> : !cir.array<!s8i x 22> {alignment = 1 : i64}
  cir.global "private" constant cir_private dso_local @".str.18" = #cir.const_array<"Secondary phase compensation completed.\0A\00" : !cir.array<!s8i x 41>> : !cir.array<!s8i x 41> {alignment = 1 : i64}
  cir.global "private" constant cir_private dso_local @".str.19" = #cir.const_array<"Phase compression completed.\0A\00" : !cir.array<!s8i x 30>> : !cir.array<!s8i x 30> {alignment = 1 : i64}
  cir.func internal private dso_local @FFT_a(%arg0: !cir.ptr<!cir.ptr<!rec_complex>>, %arg1: !s32i, %arg2: !s32i, %arg3: !s32i) extra(#fn_attr) {
    %0 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["x", init] {alignment = 8 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["na", init] {alignment = 4 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["nr", init] {alignment = 4 : i64}
    %3 = cir.alloca !s32i, !cir.ptr<!s32i>, ["type", init] {alignment = 4 : i64}
    %4 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i"] {alignment = 4 : i64}
    %5 = cir.alloca !s32i, !cir.ptr<!s32i>, ["j"] {alignment = 4 : i64}
    %6 = cir.alloca !s32i, !cir.ptr<!s32i>, ["a"] {alignment = 4 : i64}
    %7 = cir.alloca !s32i, !cir.ptr<!s32i>, ["r"] {alignment = 4 : i64}
    %8 = cir.alloca !cir.ptr<!rec_complex>, !cir.ptr<!cir.ptr<!rec_complex>>, ["temp"] {alignment = 8 : i64}
    cir.store %arg0, %0 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    cir.store %arg1, %1 : !s32i, !cir.ptr<!s32i>
    cir.store %arg2, %2 : !s32i, !cir.ptr<!s32i>
    cir.store %arg3, %3 : !s32i, !cir.ptr<!s32i>
    %9 = cir.const #cir.int<1> : !s32i
    cir.store align(4) %9, %6 : !s32i, !cir.ptr<!s32i>
    %10 = cir.const #cir.int<1> : !s32i
    cir.store align(4) %10, %7 : !s32i, !cir.ptr<!s32i>
    cir.scope {
      %21 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %21, %4 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %22 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %23 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %24 = cir.cmp(lt, %22, %23) : !s32i, !cir.bool
        cir.condition(%24)
      } body {
        %22 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
        %23 = cir.const #cir.int<2> : !s32i
        %24 = cir.binop(mul, %22, %23) nsw : !s32i
        cir.store align(4) %24, %6 : !s32i, !cir.ptr<!s32i>
        cir.yield
      } step {
        %22 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %23 = cir.unary(inc, %22) nsw : !s32i, !s32i
        cir.store align(4) %23, %4 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    cir.scope {
      %21 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %21, %4 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %22 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %23 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
        %24 = cir.cmp(lt, %22, %23) : !s32i, !cir.bool
        cir.condition(%24)
      } body {
        %22 = cir.load align(4) %7 : !cir.ptr<!s32i>, !s32i
        %23 = cir.const #cir.int<2> : !s32i
        %24 = cir.binop(mul, %22, %23) nsw : !s32i
        cir.store align(4) %24, %7 : !s32i, !cir.ptr<!s32i>
        cir.yield
      } step {
        %22 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %23 = cir.unary(inc, %22) nsw : !s32i, !s32i
        cir.store align(4) %23, %4 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %11 = cir.get_global @malloc : !cir.ptr<!cir.func<(!u64i) -> !cir.ptr<!void>>>
    %12 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
    %13 = cir.cast integral %12 : !s32i -> !u64i
    %14 = cir.const #cir.int<16> : !u64i
    %15 = cir.binop(mul, %13, %14) : !u64i
    %16 = cir.call @malloc(%15) : (!u64i) -> !cir.ptr<!void> extra(#fn_attr1)
    %17 = cir.cast bitcast %16 : !cir.ptr<!void> -> !cir.ptr<!rec_complex>
    cir.store align(8) %17, %8 : !cir.ptr<!rec_complex>, !cir.ptr<!cir.ptr<!rec_complex>>
    cir.scope {
      %21 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %21, %4 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %22 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %23 = cir.load align(4) %7 : !cir.ptr<!s32i>, !s32i
        %24 = cir.cmp(lt, %22, %23) : !s32i, !cir.bool
        cir.condition(%24)
      } body {
        cir.scope {
          cir.scope {
            %25 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %25, %5 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %26 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
              %27 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
              %28 = cir.cmp(lt, %26, %27) : !s32i, !cir.bool
              cir.condition(%28)
            } body {
              %26 = cir.load align(8) %8 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
              %27 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
              %28 = cir.ptr_stride %26, %27 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
              %29 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
              %30 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
              %31 = cir.ptr_stride %29, %30 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
              %32 = cir.load align(8) %31 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
              %33 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
              %34 = cir.ptr_stride %32, %33 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
              cir.copy %34 to %28 : !cir.ptr<!rec_complex>
              cir.yield
            } step {
              %26 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
              %27 = cir.unary(inc, %26) nsw : !s32i, !s32i
              cir.store align(4) %27, %5 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
          %22 = cir.load align(8) %8 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
          %23 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
          %24 = cir.load align(4) %3 : !cir.ptr<!s32i>, !s32i
          cir.call @FFT(%22, %23, %24) : (!cir.ptr<!rec_complex>, !s32i, !s32i) -> ()
          cir.scope {
            %25 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %25, %5 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %26 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
              %27 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
              %28 = cir.cmp(lt, %26, %27) : !s32i, !cir.bool
              cir.condition(%28)
            } body {
              %26 = cir.load align(8) %0 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
              %27 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
              %28 = cir.ptr_stride %26, %27 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
              %29 = cir.load align(8) %28 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
              %30 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
              %31 = cir.ptr_stride %29, %30 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
              %32 = cir.load align(8) %8 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
              %33 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
              %34 = cir.ptr_stride %32, %33 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
              cir.copy %34 to %31 : !cir.ptr<!rec_complex>
              cir.yield
            } step {
              %26 = cir.load align(4) %5 : !cir.ptr<!s32i>, !s32i
              %27 = cir.unary(inc, %26) nsw : !s32i, !s32i
              cir.store align(4) %27, %5 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
        }
        cir.yield
      } step {
        %22 = cir.load align(4) %4 : !cir.ptr<!s32i>, !s32i
        %23 = cir.unary(inc, %22) nsw : !s32i, !s32i
        cir.store align(4) %23, %4 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %18 = cir.get_global @free : !cir.ptr<!cir.func<(!cir.ptr<!void>)>>
    %19 = cir.load align(8) %8 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
    %20 = cir.cast bitcast %19 : !cir.ptr<!rec_complex> -> !cir.ptr<!void>
    cir.call @free(%20) : (!cir.ptr<!void>) -> () extra(#fn_attr1)
    cir.return
  }
  cir.global "private" constant cir_private dso_local @".str.20" = #cir.const_array<"Azimuth IFFT completed.\0A\00" : !cir.array<!s8i x 25>> : !cir.array<!s8i x 25> {alignment = 1 : i64}
  cir.global "private" constant cir_private dso_local @".str.21" = #cir.const_array<"final_m60.bmp\00" : !cir.array<!s8i x 14>> : !cir.array<!s8i x 14> {alignment = 1 : i64}
  cir.global "private" constant cir_private dso_local @".str.22" = #cir.const_array<"Image_m60.dat\00" : !cir.array<!s8i x 14>> : !cir.array<!s8i x 14> {alignment = 1 : i64}
  cir.global "private" constant cir_private dso_local @".str.23" = #cir.const_array<"SAR image processing completed. Results saved.\0A\00" : !cir.array<!s8i x 48>> : !cir.array<!s8i x 48> {alignment = 1 : i64}
  cir.func no_proto dso_local @main() -> !s32i extra(#fn_attr) {
    %0 = cir.alloca !s32i, !cir.ptr<!s32i>, ["__retval"] {alignment = 4 : i64}
    %1 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i"] {alignment = 4 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["j"] {alignment = 4 : i64}
    %3 = cir.alloca !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, ["echo"] {alignment = 8 : i64}
    %4 = cir.alloca !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>, ["fi"] {alignment = 8 : i64}
    %5 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["fa_mov"] {alignment = 8 : i64}
    %6 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["fr_mov"] {alignment = 8 : i64}
    %7 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["fa_c"] {alignment = 8 : i64}
    %8 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["fr"] {alignment = 8 : i64}
    %9 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["fa"] {alignment = 8 : i64}
    %10 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["tao"] {alignment = 8 : i64}
    %11 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["tao0"] {alignment = 8 : i64}
    %12 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["yita_c"] {alignment = 8 : i64}
    %13 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["R"] {alignment = 8 : i64}
    %14 = cir.const #cir.int<2048> : !s32i
    %15 = cir.const #cir.int<2048> : !s32i
    %16 = cir.call @create_complex_2d_array(%14, %15) : (!s32i, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
    cir.store align(8) %16, %3 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>
    %17 = cir.get_global @fopen : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>>>
    %18 = cir.get_global @".str.6" : !cir.ptr<!cir.array<!s8i x 13>>
    %19 = cir.cast array_to_ptrdecay %18 : !cir.ptr<!cir.array<!s8i x 13>> -> !cir.ptr<!s8i>
    %20 = cir.get_global @".str.7" : !cir.ptr<!cir.array<!s8i x 2>>
    %21 = cir.cast array_to_ptrdecay %20 : !cir.ptr<!cir.array<!s8i x 2>> -> !cir.ptr<!s8i>
    %22 = cir.call @fopen(%19, %21) : (!cir.ptr<!s8i>, !cir.ptr<!s8i>) -> !cir.ptr<!rec__IO_FILE>
    cir.store align(8) %22, %4 : !cir.ptr<!rec__IO_FILE>, !cir.ptr<!cir.ptr<!rec__IO_FILE>>
    cir.scope {
      %188 = cir.load align(8) %4 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
      %189 = cir.const #cir.ptr<null> : !cir.ptr<!void>
      %190 = cir.cast bitcast %189 : !cir.ptr<!void> -> !cir.ptr<!rec__IO_FILE>
      %191 = cir.cmp(eq, %188, %190) : !cir.ptr<!rec__IO_FILE>, !cir.bool
      cir.if %191 {
        %192 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
        %193 = cir.get_global @".str.8" : !cir.ptr<!cir.array<!s8i x 38>>
        %194 = cir.cast array_to_ptrdecay %193 : !cir.ptr<!cir.array<!s8i x 38>> -> !cir.ptr<!s8i>
        %195 = cir.call @printf(%194) : (!cir.ptr<!s8i>) -> !s32i
        %196 = cir.const #cir.int<1> : !s32i
        %197 = cir.unary(minus, %196) nsw : !s32i, !s32i
        cir.store %197, %0 : !s32i, !cir.ptr<!s32i>
        %198 = cir.load %0 : !cir.ptr<!s32i>, !s32i
        cir.return %198 : !s32i
      }
    }
    cir.scope {
      %188 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %188, %1 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %190 = cir.const #cir.int<2048> : !s32i
        %191 = cir.cmp(lt, %189, %190) : !s32i, !cir.bool
        cir.condition(%191)
      } body {
        cir.scope {
          cir.scope {
            %189 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %189, %2 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %190 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %191 = cir.const #cir.int<2048> : !s32i
              %192 = cir.cmp(lt, %190, %191) : !s32i, !cir.bool
              cir.condition(%192)
            } body {
              cir.scope {
                %190 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["real"] {alignment = 8 : i64}
                %191 = cir.alloca !cir.double, !cir.ptr<!cir.double>, ["imag"] {alignment = 8 : i64}
                %192 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["tmp"] {alignment = 8 : i64}
                cir.scope {
                  %202 = cir.get_global @__isoc99_fscanf : !cir.ptr<!cir.func<(!cir.ptr<!rec__IO_FILE>, !cir.ptr<!s8i>, ...) -> !s32i>>
                  %203 = cir.load align(8) %4 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
                  %204 = cir.get_global @".str.9" : !cir.ptr<!cir.array<!s8i x 8>>
                  %205 = cir.cast array_to_ptrdecay %204 : !cir.ptr<!cir.array<!s8i x 8>> -> !cir.ptr<!s8i>
                  %206 = cir.call @__isoc99_fscanf(%203, %205, %190, %191) : (!cir.ptr<!rec__IO_FILE>, !cir.ptr<!s8i>, !cir.ptr<!cir.double>, !cir.ptr<!cir.double>) -> !s32i
                  %207 = cir.const #cir.int<2> : !s32i
                  %208 = cir.cmp(ne, %206, %207) : !s32i, !cir.bool
                  cir.if %208 {
                    %209 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
                    %210 = cir.get_global @".str.10" : !cir.ptr<!cir.array<!s8i x 32>>
                    %211 = cir.cast array_to_ptrdecay %210 : !cir.ptr<!cir.array<!s8i x 32>> -> !cir.ptr<!s8i>
                    %212 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                    %213 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                    %214 = cir.call @printf(%211, %212, %213) : (!cir.ptr<!s8i>, !s32i, !s32i) -> !s32i
                    %215 = cir.load align(8) %4 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
                    %216 = cir.call @fclose(%215) : (!cir.ptr<!rec__IO_FILE>) -> !s32i
                    %217 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                    %218 = cir.const #cir.int<2048> : !s32i
                    cir.call @free_complex_2d_array(%217, %218) : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> ()
                    %219 = cir.const #cir.int<1> : !s32i
                    %220 = cir.unary(minus, %219) nsw : !s32i, !s32i
                    cir.store %220, %0 : !s32i, !cir.ptr<!s32i>
                    %221 = cir.load %0 : !cir.ptr<!s32i>, !s32i
                    cir.return %221 : !s32i
                  }
                }
                %193 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %194 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %195 = cir.ptr_stride %193, %194 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %196 = cir.load align(8) %195 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %197 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %198 = cir.ptr_stride %196, %197 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %199 = cir.load align(8) %190 : !cir.ptr<!cir.double>, !cir.double
                %200 = cir.load align(8) %191 : !cir.ptr<!cir.double>, !cir.double
                %201 = cir.call @complex_create(%199, %200) : (!cir.double, !cir.double) -> !rec_complex
                cir.store align(8) %201, %192 : !rec_complex, !cir.ptr<!rec_complex>
                cir.copy %192 to %198 : !cir.ptr<!rec_complex>
              }
              cir.yield
            } step {
              %190 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %191 = cir.unary(inc, %190) nsw : !s32i, !s32i
              cir.store align(4) %191, %2 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
        }
        cir.yield
      } step {
        %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %190 = cir.unary(inc, %189) nsw : !s32i, !s32i
        cir.store align(4) %190, %1 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %23 = cir.load align(8) %4 : !cir.ptr<!cir.ptr<!rec__IO_FILE>>, !cir.ptr<!rec__IO_FILE>
    %24 = cir.call @fclose(%23) : (!cir.ptr<!rec__IO_FILE>) -> !s32i
    %25 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
    %26 = cir.get_global @".str.11" : !cir.ptr<!cir.array<!s8i x 32>>
    %27 = cir.cast array_to_ptrdecay %26 : !cir.ptr<!cir.array<!s8i x 32>> -> !cir.ptr<!s8i>
    %28 = cir.call @printf(%27) : (!cir.ptr<!s8i>) -> !s32i
    %29 = cir.const #cir.int<2> : !s32i
    %30 = cir.cast int_to_float %29 : !s32i -> !cir.double
    %31 = cir.const #cir.int<18000> : !s32i
    %32 = cir.cast int_to_float %31 : !s32i -> !cir.double
    %33 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %34 = cir.const #cir.int<2> : !s32i
    %35 = cir.cast int_to_float %34 : !s32i -> !cir.double
    %36 = cir.call @sqrt(%35) : (!cir.double) -> !cir.double extra(#fn_attr1)
    %37 = cir.binop(mul, %32, %36) : !cir.double
    %38 = cir.binop(mul, %30, %37) : !cir.double
    %39 = cir.const #cir.fp<1.000000e+06> : !cir.double
    %40 = cir.binop(mul, %38, %39) : !cir.double
    %41 = cir.get_global @cos : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %42 = cir.const #cir.int<60> : !s32i
    %43 = cir.cast int_to_float %42 : !s32i -> !cir.double
    %44 = cir.const #cir.fp<3.1415926535000001> : !cir.double
    %45 = cir.binop(mul, %43, %44) : !cir.double
    %46 = cir.const #cir.int<180> : !s32i
    %47 = cir.cast int_to_float %46 : !s32i -> !cir.double
    %48 = cir.binop(div, %45, %47) : !cir.double
    %49 = cir.call @cos(%48) : (!cir.double) -> !cir.double extra(#fn_attr1)
    %50 = cir.binop(div, %40, %49) : !cir.double
    %51 = cir.const #cir.fp<3.000000e+08> : !cir.double
    %52 = cir.binop(div, %50, %51) : !cir.double
    %53 = cir.const #cir.int<2048> : !s32i
    %54 = cir.const #cir.int<2> : !s32i
    %55 = cir.binop(div, %53, %54) : !s32i
    %56 = cir.cast int_to_float %55 : !s32i -> !cir.double
    %57 = cir.const #cir.fp<1.000000e+02> : !cir.double
    %58 = cir.binop(div, %56, %57) : !cir.double
    %59 = cir.binop(sub, %52, %58) : !cir.double
    cir.store align(8) %59, %11 : !cir.double, !cir.ptr<!cir.double>
    %60 = cir.const #cir.int<2> : !s32i
    %61 = cir.unary(minus, %60) nsw : !s32i, !s32i
    %62 = cir.cast int_to_float %61 : !s32i -> !cir.double
    %63 = cir.const #cir.fp<1.770000e+03> : !cir.double
    %64 = cir.binop(mul, %62, %63) : !cir.double
    %65 = cir.get_global @sin : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %66 = cir.const #cir.int<60> : !s32i
    %67 = cir.cast int_to_float %66 : !s32i -> !cir.double
    %68 = cir.const #cir.fp<3.1415926535000001> : !cir.double
    %69 = cir.binop(mul, %67, %68) : !cir.double
    %70 = cir.const #cir.int<180> : !s32i
    %71 = cir.cast int_to_float %70 : !s32i -> !cir.double
    %72 = cir.binop(div, %69, %71) : !cir.double
    %73 = cir.call @sin(%72) : (!cir.double) -> !cir.double extra(#fn_attr1)
    %74 = cir.binop(mul, %64, %73) : !cir.double
    %75 = cir.const #cir.fp<1.750000e-02> : !cir.double
    %76 = cir.binop(div, %74, %75) : !cir.double
    cir.store align(8) %76, %7 : !cir.double, !cir.ptr<!cir.double>
    %77 = cir.const #cir.fp<1.000000e+02> : !cir.double
    %78 = cir.const #cir.int<2> : !s32i
    %79 = cir.cast int_to_float %78 : !s32i -> !cir.double
    %80 = cir.binop(div, %77, %79) : !cir.double
    cir.store align(8) %80, %6 : !cir.double, !cir.ptr<!cir.double>
    %81 = cir.load align(8) %7 : !cir.ptr<!cir.double>, !cir.double
    cir.store align(8) %81, %5 : !cir.double, !cir.ptr<!cir.double>
    cir.scope {
      cir.while {
        %188 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
        %189 = cir.const #cir.int<0> : !s32i
        %190 = cir.cast int_to_float %189 : !s32i -> !cir.double
        %191 = cir.cmp(lt, %188, %190) : !cir.double, !cir.bool
        cir.condition(%191)
      } do {
        %188 = cir.const #cir.fp<2.000000e+03> : !cir.double
        %189 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
        %190 = cir.binop(add, %189, %188) : !cir.double
        cir.store align(8) %190, %5 : !cir.double, !cir.ptr<!cir.double>
        cir.yield
      }
    }
    %82 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
    %83 = cir.const #cir.fp<2.000000e+03> : !cir.double
    %84 = cir.const #cir.int<2> : !s32i
    %85 = cir.cast int_to_float %84 : !s32i -> !cir.double
    %86 = cir.binop(div, %83, %85) : !cir.double
    %87 = cir.cmp(gt, %82, %86) : !cir.double, !cir.bool
    %88 = cir.ternary(%87, true {
      %188 = cir.const #cir.int<3> : !s32i
      %189 = cir.cast int_to_float %188 : !s32i -> !cir.double
      %190 = cir.const #cir.fp<2.000000e+03> : !cir.double
      %191 = cir.binop(mul, %189, %190) : !cir.double
      %192 = cir.const #cir.int<2> : !s32i
      %193 = cir.cast int_to_float %192 : !s32i -> !cir.double
      %194 = cir.binop(div, %191, %193) : !cir.double
      %195 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
      %196 = cir.binop(sub, %194, %195) : !cir.double
      cir.yield %196 : !cir.double
    }, false {
      %188 = cir.const #cir.fp<2.000000e+03> : !cir.double
      %189 = cir.const #cir.int<2> : !s32i
      %190 = cir.cast int_to_float %189 : !s32i -> !cir.double
      %191 = cir.binop(div, %188, %190) : !cir.double
      %192 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
      %193 = cir.binop(sub, %191, %192) : !cir.double
      cir.yield %193 : !cir.double
    }) : (!cir.bool) -> !cir.double
    cir.store align(8) %88, %5 : !cir.double, !cir.ptr<!cir.double>
    cir.scope {
      %188 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %188, %1 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %190 = cir.const #cir.int<2048> : !s32i
        %191 = cir.cmp(lt, %189, %190) : !s32i, !cir.bool
        cir.condition(%191)
      } body {
        cir.scope {
          cir.scope {
            %189 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %189, %2 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %190 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %191 = cir.const #cir.int<2048> : !s32i
              %192 = cir.cmp(lt, %190, %191) : !s32i, !cir.bool
              cir.condition(%192)
            } body {
              cir.scope {
                %190 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["phase1", init] {alignment = 8 : i64}
                %191 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["phase2", init] {alignment = 8 : i64}
                %192 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["tmp"] {alignment = 8 : i64}
                %193 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["tmp"] {alignment = 8 : i64}
                %194 = cir.const #cir.fp<1.000000e+00> : !cir.double
                %195 = cir.const #cir.int<2> : !s32i
                %196 = cir.cast int_to_float %195 : !s32i -> !cir.double
                %197 = cir.const #cir.fp<3.1415926535000001> : !cir.double
                %198 = cir.binop(mul, %196, %197) : !cir.double
                %199 = cir.load align(8) %5 : !cir.ptr<!cir.double>, !cir.double
                %200 = cir.binop(mul, %198, %199) : !cir.double
                %201 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %202 = cir.cast int_to_float %201 : !s32i -> !cir.double
                %203 = cir.binop(mul, %200, %202) : !cir.double
                %204 = cir.const #cir.fp<2.000000e+03> : !cir.double
                %205 = cir.binop(div, %203, %204) : !cir.double
                %206 = cir.call @complex_pole(%194, %205) : (!cir.double, !cir.double) -> !rec_complex
                cir.store align(8) %206, %190 : !rec_complex, !cir.ptr<!rec_complex>
                %207 = cir.const #cir.fp<1.000000e+00> : !cir.double
                %208 = cir.const #cir.int<2> : !s32i
                %209 = cir.cast int_to_float %208 : !s32i -> !cir.double
                %210 = cir.const #cir.fp<3.1415926535000001> : !cir.double
                %211 = cir.binop(mul, %209, %210) : !cir.double
                %212 = cir.load align(8) %6 : !cir.ptr<!cir.double>, !cir.double
                %213 = cir.binop(mul, %211, %212) : !cir.double
                %214 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %215 = cir.cast int_to_float %214 : !s32i -> !cir.double
                %216 = cir.binop(mul, %213, %215) : !cir.double
                %217 = cir.const #cir.fp<1.000000e+02> : !cir.double
                %218 = cir.binop(div, %216, %217) : !cir.double
                %219 = cir.call @complex_pole(%207, %218) : (!cir.double, !cir.double) -> !rec_complex
                cir.store align(8) %219, %191 : !rec_complex, !cir.ptr<!rec_complex>
                %220 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %221 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %222 = cir.ptr_stride %220, %221 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %223 = cir.load align(8) %222 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %224 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %225 = cir.ptr_stride %223, %224 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %226 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %227 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %228 = cir.ptr_stride %226, %227 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %229 = cir.load align(8) %228 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %230 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %231 = cir.ptr_stride %229, %230 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %232 = cir.load align(8) %231 : !cir.ptr<!rec_complex>, !rec_complex
                %233 = cir.load align(8) %190 : !cir.ptr<!rec_complex>, !rec_complex
                %234 = cir.call @complex_mul(%232, %233) : (!rec_complex, !rec_complex) -> !rec_complex
                cir.store align(8) %234, %192 : !rec_complex, !cir.ptr<!rec_complex>
                cir.copy %192 to %225 : !cir.ptr<!rec_complex>
                %235 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %236 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %237 = cir.ptr_stride %235, %236 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %238 = cir.load align(8) %237 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %239 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %240 = cir.ptr_stride %238, %239 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %241 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %242 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %243 = cir.ptr_stride %241, %242 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %244 = cir.load align(8) %243 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %245 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %246 = cir.ptr_stride %244, %245 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %247 = cir.load align(8) %246 : !cir.ptr<!rec_complex>, !rec_complex
                %248 = cir.load align(8) %191 : !cir.ptr<!rec_complex>, !rec_complex
                %249 = cir.call @complex_mul(%247, %248) : (!rec_complex, !rec_complex) -> !rec_complex
                cir.store align(8) %249, %193 : !rec_complex, !cir.ptr<!rec_complex>
                cir.copy %193 to %240 : !cir.ptr<!rec_complex>
              }
              cir.yield
            } step {
              %190 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %191 = cir.unary(inc, %190) nsw : !s32i, !s32i
              cir.store align(4) %191, %2 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
        }
        cir.yield
      } step {
        %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %190 = cir.unary(inc, %189) nsw : !s32i, !s32i
        cir.store align(4) %190, %1 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %89 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
    %90 = cir.get_global @".str.12" : !cir.ptr<!cir.array<!s8i x 41>>
    %91 = cir.cast array_to_ptrdecay %90 : !cir.ptr<!cir.array<!s8i x 41>> -> !cir.ptr<!s8i>
    %92 = cir.call @printf(%91) : (!cir.ptr<!s8i>) -> !s32i
    %93 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
    %94 = cir.const #cir.int<11> : !s32i
    %95 = cir.const #cir.int<11> : !s32i
    %96 = cir.const #cir.int<1> : !s32i
    %97 = cir.unary(minus, %96) nsw : !s32i, !s32i
    cir.call @FFT_ar(%93, %94, %95, %97) : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i, !s32i, !s32i) -> ()
    %98 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
    %99 = cir.get_global @".str.13" : !cir.ptr<!cir.array<!s8i x 19>>
    %100 = cir.cast array_to_ptrdecay %99 : !cir.ptr<!cir.array<!s8i x 19>> -> !cir.ptr<!s8i>
    %101 = cir.call @printf(%100) : (!cir.ptr<!s8i>) -> !s32i
    cir.scope {
      %188 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %188, %1 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %190 = cir.const #cir.int<2048> : !s32i
        %191 = cir.cmp(lt, %189, %190) : !s32i, !cir.bool
        cir.condition(%191)
      } body {
        cir.scope {
          %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
          %190 = cir.const #cir.int<2048> : !s32i
          %191 = cir.const #cir.int<2> : !s32i
          %192 = cir.binop(div, %190, %191) : !s32i
          %193 = cir.binop(sub, %189, %192) nsw : !s32i
          %194 = cir.cast int_to_float %193 : !s32i -> !cir.double
          %195 = cir.const #cir.fp<2.000000e+03> : !cir.double
          %196 = cir.binop(mul, %194, %195) : !cir.double
          %197 = cir.const #cir.int<2048> : !s32i
          %198 = cir.cast int_to_float %197 : !s32i -> !cir.double
          %199 = cir.binop(div, %196, %198) : !cir.double
          %200 = cir.load align(8) %7 : !cir.ptr<!cir.double>, !cir.double
          %201 = cir.binop(add, %199, %200) : !cir.double
          cir.store align(8) %201, %9 : !cir.double, !cir.ptr<!cir.double>
          cir.scope {
            %202 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %202, %2 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %203 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %204 = cir.const #cir.int<2048> : !s32i
              %205 = cir.cmp(lt, %203, %204) : !s32i, !cir.bool
              cir.condition(%205)
            } body {
              cir.scope {
                %203 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["phase", init] {alignment = 8 : i64}
                %204 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["tmp"] {alignment = 8 : i64}
                %205 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %206 = cir.const #cir.int<2048> : !s32i
                %207 = cir.const #cir.int<2> : !s32i
                %208 = cir.binop(div, %206, %207) : !s32i
                %209 = cir.binop(sub, %205, %208) nsw : !s32i
                %210 = cir.cast int_to_float %209 : !s32i -> !cir.double
                %211 = cir.const #cir.fp<1.000000e+02> : !cir.double
                %212 = cir.binop(mul, %210, %211) : !cir.double
                %213 = cir.const #cir.int<2048> : !s32i
                %214 = cir.cast int_to_float %213 : !s32i -> !cir.double
                %215 = cir.binop(div, %212, %214) : !cir.double
                cir.store align(8) %215, %8 : !cir.double, !cir.ptr<!cir.double>
                %216 = cir.const #cir.int<1> : !s32i
                %217 = cir.cast int_to_float %216 : !s32i -> !cir.double
                %218 = cir.const #cir.int<18000> : !s32i
                %219 = cir.cast int_to_float %218 : !s32i -> !cir.double
                %220 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
                %221 = cir.const #cir.int<2> : !s32i
                %222 = cir.cast int_to_float %221 : !s32i -> !cir.double
                %223 = cir.call @sqrt(%222) : (!cir.double) -> !cir.double extra(#fn_attr1)
                %224 = cir.binop(mul, %219, %223) : !cir.double
                %225 = cir.load align(8) %9 : !cir.ptr<!cir.double>, !cir.double
                %226 = cir.load align(8) %8 : !cir.ptr<!cir.double>, !cir.double
                %227 = cir.call @fai3(%224, %225, %226) : (!cir.double, !cir.double, !cir.double) -> !cir.double
                %228 = cir.call @complex_pole(%217, %227) : (!cir.double, !cir.double) -> !rec_complex
                cir.store align(8) %228, %203 : !rec_complex, !cir.ptr<!rec_complex>
                %229 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %230 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %231 = cir.ptr_stride %229, %230 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %232 = cir.load align(8) %231 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %233 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %234 = cir.ptr_stride %232, %233 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %235 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %236 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %237 = cir.ptr_stride %235, %236 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %238 = cir.load align(8) %237 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %239 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %240 = cir.ptr_stride %238, %239 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %241 = cir.load align(8) %240 : !cir.ptr<!rec_complex>, !rec_complex
                %242 = cir.load align(8) %203 : !cir.ptr<!rec_complex>, !rec_complex
                %243 = cir.call @complex_mul(%241, %242) : (!rec_complex, !rec_complex) -> !rec_complex
                cir.store align(8) %243, %204 : !rec_complex, !cir.ptr<!rec_complex>
                cir.copy %204 to %234 : !cir.ptr<!rec_complex>
              }
              cir.yield
            } step {
              %203 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %204 = cir.unary(inc, %203) nsw : !s32i, !s32i
              cir.store align(4) %204, %2 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
        }
        cir.yield
      } step {
        %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %190 = cir.unary(inc, %189) nsw : !s32i, !s32i
        cir.store align(4) %190, %1 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %102 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
    %103 = cir.get_global @".str.14" : !cir.ptr<!cir.array<!s8i x 37>>
    %104 = cir.cast array_to_ptrdecay %103 : !cir.ptr<!cir.array<!s8i x 37>> -> !cir.ptr<!s8i>
    %105 = cir.call @printf(%104) : (!cir.ptr<!s8i>) -> !s32i
    %106 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
    %107 = cir.const #cir.int<11> : !s32i
    %108 = cir.const #cir.int<11> : !s32i
    %109 = cir.const #cir.int<1> : !s32i
    cir.call @FFT_r(%106, %107, %108, %109) : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i, !s32i, !s32i) -> ()
    %110 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
    %111 = cir.get_global @".str.15" : !cir.ptr<!cir.array<!s8i x 23>>
    %112 = cir.cast array_to_ptrdecay %111 : !cir.ptr<!cir.array<!s8i x 23>> -> !cir.ptr<!s8i>
    %113 = cir.call @printf(%112) : (!cir.ptr<!s8i>) -> !s32i
    cir.scope {
      %188 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %188, %1 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %190 = cir.const #cir.int<2048> : !s32i
        %191 = cir.cmp(lt, %189, %190) : !s32i, !cir.bool
        cir.condition(%191)
      } body {
        cir.scope {
          %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
          %190 = cir.const #cir.int<2048> : !s32i
          %191 = cir.const #cir.int<2> : !s32i
          %192 = cir.binop(div, %190, %191) : !s32i
          %193 = cir.binop(sub, %189, %192) nsw : !s32i
          %194 = cir.cast int_to_float %193 : !s32i -> !cir.double
          %195 = cir.const #cir.fp<2.000000e+03> : !cir.double
          %196 = cir.binop(mul, %194, %195) : !cir.double
          %197 = cir.const #cir.int<2048> : !s32i
          %198 = cir.cast int_to_float %197 : !s32i -> !cir.double
          %199 = cir.binop(div, %196, %198) : !cir.double
          %200 = cir.load align(8) %7 : !cir.ptr<!cir.double>, !cir.double
          %201 = cir.binop(add, %199, %200) : !cir.double
          cir.store align(8) %201, %9 : !cir.double, !cir.ptr<!cir.double>
          cir.scope {
            %202 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %202, %2 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %203 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %204 = cir.const #cir.int<2048> : !s32i
              %205 = cir.cmp(lt, %203, %204) : !s32i, !cir.bool
              cir.condition(%205)
            } body {
              cir.scope {
                %203 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["phase", init] {alignment = 8 : i64}
                %204 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["tmp"] {alignment = 8 : i64}
                %205 = cir.load align(8) %11 : !cir.ptr<!cir.double>, !cir.double
                %206 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %207 = cir.cast int_to_float %206 : !s32i -> !cir.double
                %208 = cir.const #cir.fp<1.000000e+02> : !cir.double
                %209 = cir.binop(div, %207, %208) : !cir.double
                %210 = cir.binop(add, %205, %209) : !cir.double
                cir.store align(8) %210, %10 : !cir.double, !cir.ptr<!cir.double>
                %211 = cir.const #cir.int<1> : !s32i
                %212 = cir.cast int_to_float %211 : !s32i -> !cir.double
                %213 = cir.load align(8) %10 : !cir.ptr<!cir.double>, !cir.double
                %214 = cir.load align(8) %9 : !cir.ptr<!cir.double>, !cir.double
                %215 = cir.load align(8) %7 : !cir.ptr<!cir.double>, !cir.double
                %216 = cir.call @cs(%213, %214, %215) : (!cir.double, !cir.double, !cir.double) -> !cir.double
                %217 = cir.call @complex_pole(%212, %216) : (!cir.double, !cir.double) -> !rec_complex
                cir.store align(8) %217, %203 : !rec_complex, !cir.ptr<!rec_complex>
                %218 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %219 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %220 = cir.ptr_stride %218, %219 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %221 = cir.load align(8) %220 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %222 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %223 = cir.ptr_stride %221, %222 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %224 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %225 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %226 = cir.ptr_stride %224, %225 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %227 = cir.load align(8) %226 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %228 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %229 = cir.ptr_stride %227, %228 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %230 = cir.load align(8) %229 : !cir.ptr<!rec_complex>, !rec_complex
                %231 = cir.load align(8) %203 : !cir.ptr<!rec_complex>, !rec_complex
                %232 = cir.call @complex_mul(%230, %231) : (!rec_complex, !rec_complex) -> !rec_complex
                cir.store align(8) %232, %204 : !rec_complex, !cir.ptr<!rec_complex>
                cir.copy %204 to %223 : !cir.ptr<!rec_complex>
              }
              cir.yield
            } step {
              %203 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %204 = cir.unary(inc, %203) nsw : !s32i, !s32i
              cir.store align(4) %204, %2 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
        }
        cir.yield
      } step {
        %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %190 = cir.unary(inc, %189) nsw : !s32i, !s32i
        cir.store align(4) %190, %1 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %114 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
    %115 = cir.get_global @".str.16" : !cir.ptr<!cir.array<!s8i x 30>>
    %116 = cir.cast array_to_ptrdecay %115 : !cir.ptr<!cir.array<!s8i x 30>> -> !cir.ptr<!s8i>
    %117 = cir.call @printf(%116) : (!cir.ptr<!s8i>) -> !s32i
    %118 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
    %119 = cir.const #cir.int<11> : !s32i
    %120 = cir.const #cir.int<11> : !s32i
    %121 = cir.const #cir.int<1> : !s32i
    %122 = cir.unary(minus, %121) nsw : !s32i, !s32i
    cir.call @FFT_r(%118, %119, %120, %122) : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i, !s32i, !s32i) -> ()
    %123 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
    %124 = cir.get_global @".str.17" : !cir.ptr<!cir.array<!s8i x 22>>
    %125 = cir.cast array_to_ptrdecay %124 : !cir.ptr<!cir.array<!s8i x 22>> -> !cir.ptr<!s8i>
    %126 = cir.call @printf(%125) : (!cir.ptr<!s8i>) -> !s32i
    cir.scope {
      %188 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %188, %1 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %190 = cir.const #cir.int<2048> : !s32i
        %191 = cir.cmp(lt, %189, %190) : !s32i, !cir.bool
        cir.condition(%191)
      } body {
        cir.scope {
          %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
          %190 = cir.const #cir.int<2048> : !s32i
          %191 = cir.const #cir.int<2> : !s32i
          %192 = cir.binop(div, %190, %191) : !s32i
          %193 = cir.binop(sub, %189, %192) nsw : !s32i
          %194 = cir.cast int_to_float %193 : !s32i -> !cir.double
          %195 = cir.const #cir.fp<2.000000e+03> : !cir.double
          %196 = cir.binop(mul, %194, %195) : !cir.double
          %197 = cir.const #cir.int<2048> : !s32i
          %198 = cir.cast int_to_float %197 : !s32i -> !cir.double
          %199 = cir.binop(div, %196, %198) : !cir.double
          %200 = cir.load align(8) %7 : !cir.ptr<!cir.double>, !cir.double
          %201 = cir.binop(add, %199, %200) : !cir.double
          cir.store align(8) %201, %9 : !cir.double, !cir.ptr<!cir.double>
          cir.scope {
            %202 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %202, %2 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %203 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %204 = cir.const #cir.int<2048> : !s32i
              %205 = cir.cmp(lt, %203, %204) : !s32i, !cir.bool
              cir.condition(%205)
            } body {
              cir.scope {
                %203 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["phase1", init] {alignment = 8 : i64}
                %204 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["phase2", init] {alignment = 8 : i64}
                %205 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["tmp"] {alignment = 8 : i64}
                %206 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["agg.tmp0"] {alignment = 8 : i64}
                %207 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %208 = cir.const #cir.int<2048> : !s32i
                %209 = cir.const #cir.int<2> : !s32i
                %210 = cir.binop(div, %208, %209) : !s32i
                %211 = cir.binop(sub, %207, %210) nsw : !s32i
                %212 = cir.cast int_to_float %211 : !s32i -> !cir.double
                %213 = cir.const #cir.fp<1.000000e+02> : !cir.double
                %214 = cir.binop(mul, %212, %213) : !cir.double
                %215 = cir.const #cir.int<2048> : !s32i
                %216 = cir.cast int_to_float %215 : !s32i -> !cir.double
                %217 = cir.binop(div, %214, %216) : !cir.double
                cir.store align(8) %217, %8 : !cir.double, !cir.ptr<!cir.double>
                %218 = cir.const #cir.int<1> : !s32i
                %219 = cir.cast int_to_float %218 : !s32i -> !cir.double
                %220 = cir.const #cir.fp<3.1415926535000001> : !cir.double
                %221 = cir.load align(8) %9 : !cir.ptr<!cir.double>, !cir.double
                %222 = cir.call @D(%221) : (!cir.double) -> !cir.double
                %223 = cir.binop(mul, %220, %222) : !cir.double
                %224 = cir.load align(8) %8 : !cir.ptr<!cir.double>, !cir.double
                %225 = cir.binop(mul, %223, %224) : !cir.double
                %226 = cir.load align(8) %8 : !cir.ptr<!cir.double>, !cir.double
                %227 = cir.binop(mul, %225, %226) : !cir.double
                %228 = cir.const #cir.int<18000> : !s32i
                %229 = cir.cast int_to_float %228 : !s32i -> !cir.double
                %230 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
                %231 = cir.const #cir.int<2> : !s32i
                %232 = cir.cast int_to_float %231 : !s32i -> !cir.double
                %233 = cir.call @sqrt(%232) : (!cir.double) -> !cir.double extra(#fn_attr1)
                %234 = cir.binop(mul, %229, %233) : !cir.double
                %235 = cir.load align(8) %9 : !cir.ptr<!cir.double>, !cir.double
                %236 = cir.call @Km(%234, %235) : (!cir.double, !cir.double) -> !cir.double
                %237 = cir.load align(8) %7 : !cir.ptr<!cir.double>, !cir.double
                %238 = cir.call @D(%237) : (!cir.double) -> !cir.double
                %239 = cir.binop(mul, %236, %238) : !cir.double
                %240 = cir.binop(div, %227, %239) : !cir.double
                %241 = cir.call @complex_pole(%219, %240) : (!cir.double, !cir.double) -> !rec_complex
                cir.store align(8) %241, %203 : !rec_complex, !cir.ptr<!rec_complex>
                %242 = cir.const #cir.int<1> : !s32i
                %243 = cir.cast int_to_float %242 : !s32i -> !cir.double
                %244 = cir.const #cir.int<4> : !s32i
                %245 = cir.cast int_to_float %244 : !s32i -> !cir.double
                %246 = cir.const #cir.fp<3.1415926535000001> : !cir.double
                %247 = cir.binop(mul, %245, %246) : !cir.double
                %248 = cir.const #cir.int<18000> : !s32i
                %249 = cir.cast int_to_float %248 : !s32i -> !cir.double
                %250 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
                %251 = cir.const #cir.int<2> : !s32i
                %252 = cir.cast int_to_float %251 : !s32i -> !cir.double
                %253 = cir.call @sqrt(%252) : (!cir.double) -> !cir.double extra(#fn_attr1)
                %254 = cir.binop(mul, %249, %253) : !cir.double
                %255 = cir.binop(mul, %247, %254) : !cir.double
                %256 = cir.load align(8) %8 : !cir.ptr<!cir.double>, !cir.double
                %257 = cir.binop(mul, %255, %256) : !cir.double
                %258 = cir.const #cir.fp<1.000000e+06> : !cir.double
                %259 = cir.binop(mul, %257, %258) : !cir.double
                %260 = cir.const #cir.int<1> : !s32i
                %261 = cir.cast int_to_float %260 : !s32i -> !cir.double
                %262 = cir.load align(8) %9 : !cir.ptr<!cir.double>, !cir.double
                %263 = cir.call @D(%262) : (!cir.double) -> !cir.double
                %264 = cir.binop(div, %261, %263) : !cir.double
                %265 = cir.const #cir.int<1> : !s32i
                %266 = cir.cast int_to_float %265 : !s32i -> !cir.double
                %267 = cir.load align(8) %7 : !cir.ptr<!cir.double>, !cir.double
                %268 = cir.call @D(%267) : (!cir.double) -> !cir.double
                %269 = cir.binop(div, %266, %268) : !cir.double
                %270 = cir.binop(sub, %264, %269) : !cir.double
                %271 = cir.binop(mul, %259, %270) : !cir.double
                %272 = cir.const #cir.fp<3.000000e+08> : !cir.double
                %273 = cir.binop(div, %271, %272) : !cir.double
                %274 = cir.call @complex_pole(%243, %273) : (!cir.double, !cir.double) -> !rec_complex
                cir.store align(8) %274, %204 : !rec_complex, !cir.ptr<!rec_complex>
                %275 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %276 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %277 = cir.ptr_stride %275, %276 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %278 = cir.load align(8) %277 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %279 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %280 = cir.ptr_stride %278, %279 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %281 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %282 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %283 = cir.ptr_stride %281, %282 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %284 = cir.load align(8) %283 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %285 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %286 = cir.ptr_stride %284, %285 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %287 = cir.load align(8) %203 : !cir.ptr<!rec_complex>, !rec_complex
                %288 = cir.load align(8) %204 : !cir.ptr<!rec_complex>, !rec_complex
                %289 = cir.call @complex_mul(%287, %288) : (!rec_complex, !rec_complex) -> !rec_complex
                cir.store align(8) %289, %206 : !rec_complex, !cir.ptr<!rec_complex>
                %290 = cir.load align(8) %286 : !cir.ptr<!rec_complex>, !rec_complex
                %291 = cir.load align(8) %206 : !cir.ptr<!rec_complex>, !rec_complex
                %292 = cir.call @complex_mul(%290, %291) : (!rec_complex, !rec_complex) -> !rec_complex
                cir.store align(8) %292, %205 : !rec_complex, !cir.ptr<!rec_complex>
                cir.copy %205 to %280 : !cir.ptr<!rec_complex>
              }
              cir.yield
            } step {
              %203 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %204 = cir.unary(inc, %203) nsw : !s32i, !s32i
              cir.store align(4) %204, %2 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
        }
        cir.yield
      } step {
        %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %190 = cir.unary(inc, %189) nsw : !s32i, !s32i
        cir.store align(4) %190, %1 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %127 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
    %128 = cir.get_global @".str.18" : !cir.ptr<!cir.array<!s8i x 41>>
    %129 = cir.cast array_to_ptrdecay %128 : !cir.ptr<!cir.array<!s8i x 41>> -> !cir.ptr<!s8i>
    %130 = cir.call @printf(%129) : (!cir.ptr<!s8i>) -> !s32i
    %131 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
    %132 = cir.const #cir.int<11> : !s32i
    %133 = cir.const #cir.int<11> : !s32i
    %134 = cir.const #cir.int<1> : !s32i
    cir.call @FFT_r(%131, %132, %133, %134) : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i, !s32i, !s32i) -> ()
    %135 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
    %136 = cir.get_global @".str.15" : !cir.ptr<!cir.array<!s8i x 23>>
    %137 = cir.cast array_to_ptrdecay %136 : !cir.ptr<!cir.array<!s8i x 23>> -> !cir.ptr<!s8i>
    %138 = cir.call @printf(%137) : (!cir.ptr<!s8i>) -> !s32i
    %139 = cir.const #cir.int<18000> : !s32i
    %140 = cir.cast int_to_float %139 : !s32i -> !cir.double
    %141 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %142 = cir.const #cir.int<2> : !s32i
    %143 = cir.cast int_to_float %142 : !s32i -> !cir.double
    %144 = cir.call @sqrt(%143) : (!cir.double) -> !cir.double extra(#fn_attr1)
    %145 = cir.binop(mul, %140, %144) : !cir.double
    %146 = cir.get_global @tan : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
    %147 = cir.const #cir.int<60> : !s32i
    %148 = cir.cast int_to_float %147 : !s32i -> !cir.double
    %149 = cir.const #cir.fp<3.1415926535000001> : !cir.double
    %150 = cir.binop(mul, %148, %149) : !cir.double
    %151 = cir.const #cir.int<180> : !s32i
    %152 = cir.cast int_to_float %151 : !s32i -> !cir.double
    %153 = cir.binop(div, %150, %152) : !cir.double
    %154 = cir.call @tan(%153) : (!cir.double) -> !cir.double extra(#fn_attr1)
    %155 = cir.binop(mul, %145, %154) : !cir.double
    %156 = cir.const #cir.fp<1.770000e+03> : !cir.double
    %157 = cir.binop(div, %155, %156) : !cir.double
    cir.store align(8) %157, %12 : !cir.double, !cir.ptr<!cir.double>
    cir.scope {
      %188 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %188, %1 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %190 = cir.const #cir.int<2048> : !s32i
        %191 = cir.cmp(lt, %189, %190) : !s32i, !cir.bool
        cir.condition(%191)
      } body {
        cir.scope {
          %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
          %190 = cir.const #cir.int<2048> : !s32i
          %191 = cir.const #cir.int<2> : !s32i
          %192 = cir.binop(div, %190, %191) : !s32i
          %193 = cir.binop(sub, %189, %192) nsw : !s32i
          %194 = cir.cast int_to_float %193 : !s32i -> !cir.double
          %195 = cir.const #cir.fp<2.000000e+03> : !cir.double
          %196 = cir.binop(mul, %194, %195) : !cir.double
          %197 = cir.const #cir.int<2048> : !s32i
          %198 = cir.cast int_to_float %197 : !s32i -> !cir.double
          %199 = cir.binop(div, %196, %198) : !cir.double
          %200 = cir.load align(8) %7 : !cir.ptr<!cir.double>, !cir.double
          %201 = cir.binop(add, %199, %200) : !cir.double
          cir.store align(8) %201, %9 : !cir.double, !cir.ptr<!cir.double>
          cir.scope {
            %202 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %202, %2 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %203 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %204 = cir.const #cir.int<2048> : !s32i
              %205 = cir.cmp(lt, %203, %204) : !s32i, !cir.bool
              cir.condition(%205)
            } body {
              cir.scope {
                %203 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["phase1", init] {alignment = 8 : i64}
                %204 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["phase2", init] {alignment = 8 : i64}
                %205 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["phase3", init] {alignment = 8 : i64}
                %206 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["phase4", init] {alignment = 8 : i64}
                %207 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["total_phase", init] {alignment = 8 : i64}
                %208 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["agg.tmp1"] {alignment = 8 : i64}
                %209 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["agg.tmp2"] {alignment = 8 : i64}
                %210 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["tmp"] {alignment = 8 : i64}
                %211 = cir.load align(8) %11 : !cir.ptr<!cir.double>, !cir.double
                %212 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %213 = cir.cast int_to_float %212 : !s32i -> !cir.double
                %214 = cir.const #cir.fp<1.000000e+02> : !cir.double
                %215 = cir.binop(div, %213, %214) : !cir.double
                %216 = cir.binop(add, %211, %215) : !cir.double
                cir.store align(8) %216, %10 : !cir.double, !cir.ptr<!cir.double>
                %217 = cir.load align(8) %10 : !cir.ptr<!cir.double>, !cir.double
                %218 = cir.const #cir.fp<3.000000e+08> : !cir.double
                %219 = cir.binop(mul, %217, %218) : !cir.double
                %220 = cir.get_global @cos : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
                %221 = cir.const #cir.int<60> : !s32i
                %222 = cir.cast int_to_float %221 : !s32i -> !cir.double
                %223 = cir.const #cir.fp<3.1415926535000001> : !cir.double
                %224 = cir.binop(mul, %222, %223) : !cir.double
                %225 = cir.const #cir.int<180> : !s32i
                %226 = cir.cast int_to_float %225 : !s32i -> !cir.double
                %227 = cir.binop(div, %224, %226) : !cir.double
                %228 = cir.call @cos(%227) : (!cir.double) -> !cir.double extra(#fn_attr1)
                %229 = cir.binop(mul, %219, %228) : !cir.double
                %230 = cir.const #cir.int<2> : !s32i
                %231 = cir.cast int_to_float %230 : !s32i -> !cir.double
                %232 = cir.binop(div, %229, %231) : !cir.double
                %233 = cir.const #cir.fp<1.000000e+06> : !cir.double
                %234 = cir.binop(div, %232, %233) : !cir.double
                cir.store align(8) %234, %13 : !cir.double, !cir.ptr<!cir.double>
                %235 = cir.const #cir.int<1> : !s32i
                %236 = cir.cast int_to_float %235 : !s32i -> !cir.double
                %237 = cir.const #cir.int<4> : !s32i
                %238 = cir.cast int_to_float %237 : !s32i -> !cir.double
                %239 = cir.const #cir.fp<3.1415926535000001> : !cir.double
                %240 = cir.binop(mul, %238, %239) : !cir.double
                %241 = cir.load align(8) %13 : !cir.ptr<!cir.double>, !cir.double
                %242 = cir.binop(mul, %240, %241) : !cir.double
                %243 = cir.load align(8) %9 : !cir.ptr<!cir.double>, !cir.double
                %244 = cir.call @D(%243) : (!cir.double) -> !cir.double
                %245 = cir.load align(8) %7 : !cir.ptr<!cir.double>, !cir.double
                %246 = cir.call @D(%245) : (!cir.double) -> !cir.double
                %247 = cir.binop(sub, %244, %246) : !cir.double
                %248 = cir.binop(mul, %242, %247) : !cir.double
                %249 = cir.const #cir.fp<1.750000e-02> : !cir.double
                %250 = cir.binop(div, %248, %249) : !cir.double
                %251 = cir.call @complex_pole(%236, %250) : (!cir.double, !cir.double) -> !rec_complex
                cir.store align(8) %251, %203 : !rec_complex, !cir.ptr<!rec_complex>
                %252 = cir.const #cir.int<1> : !s32i
                %253 = cir.cast int_to_float %252 : !s32i -> !cir.double
                %254 = cir.const #cir.int<2> : !s32i
                %255 = cir.unary(minus, %254) nsw : !s32i, !s32i
                %256 = cir.cast int_to_float %255 : !s32i -> !cir.double
                %257 = cir.const #cir.fp<3.1415926535000001> : !cir.double
                %258 = cir.binop(mul, %256, %257) : !cir.double
                %259 = cir.load align(8) %12 : !cir.ptr<!cir.double>, !cir.double
                %260 = cir.binop(mul, %258, %259) : !cir.double
                %261 = cir.load align(8) %9 : !cir.ptr<!cir.double>, !cir.double
                %262 = cir.binop(mul, %260, %261) : !cir.double
                %263 = cir.call @complex_pole(%253, %262) : (!cir.double, !cir.double) -> !rec_complex
                cir.store align(8) %263, %204 : !rec_complex, !cir.ptr<!rec_complex>
                %264 = cir.const #cir.int<1> : !s32i
                %265 = cir.cast int_to_float %264 : !s32i -> !cir.double
                %266 = cir.const #cir.int<4> : !s32i
                %267 = cir.unary(minus, %266) nsw : !s32i, !s32i
                %268 = cir.cast int_to_float %267 : !s32i -> !cir.double
                %269 = cir.const #cir.fp<3.1415926535000001> : !cir.double
                %270 = cir.binop(mul, %268, %269) : !cir.double
                %271 = cir.const #cir.int<18000> : !s32i
                %272 = cir.cast int_to_float %271 : !s32i -> !cir.double
                %273 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
                %274 = cir.const #cir.int<2> : !s32i
                %275 = cir.cast int_to_float %274 : !s32i -> !cir.double
                %276 = cir.call @sqrt(%275) : (!cir.double) -> !cir.double extra(#fn_attr1)
                %277 = cir.binop(mul, %272, %276) : !cir.double
                %278 = cir.load align(8) %9 : !cir.ptr<!cir.double>, !cir.double
                %279 = cir.call @Km(%277, %278) : (!cir.double, !cir.double) -> !cir.double
                %280 = cir.binop(mul, %270, %279) : !cir.double
                %281 = cir.const #cir.fp<1.000000e+12> : !cir.double
                %282 = cir.binop(mul, %280, %281) : !cir.double
                %283 = cir.const #cir.fp<3.000000e+08> : !cir.double
                %284 = cir.const #cir.fp<3.000000e+08> : !cir.double
                %285 = cir.binop(mul, %283, %284) : !cir.double
                %286 = cir.load align(8) %9 : !cir.ptr<!cir.double>, !cir.double
                %287 = cir.call @D(%286) : (!cir.double) -> !cir.double
                %288 = cir.binop(mul, %285, %287) : !cir.double
                %289 = cir.load align(8) %9 : !cir.ptr<!cir.double>, !cir.double
                %290 = cir.call @D(%289) : (!cir.double) -> !cir.double
                %291 = cir.binop(mul, %288, %290) : !cir.double
                %292 = cir.binop(div, %282, %291) : !cir.double
                %293 = cir.load align(8) %13 : !cir.ptr<!cir.double>, !cir.double
                %294 = cir.const #cir.int<18000> : !s32i
                %295 = cir.cast int_to_float %294 : !s32i -> !cir.double
                %296 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
                %297 = cir.const #cir.int<2> : !s32i
                %298 = cir.cast int_to_float %297 : !s32i -> !cir.double
                %299 = cir.call @sqrt(%298) : (!cir.double) -> !cir.double extra(#fn_attr1)
                %300 = cir.binop(mul, %295, %299) : !cir.double
                %301 = cir.binop(sub, %293, %300) : !cir.double
                %302 = cir.binop(mul, %292, %301) : !cir.double
                %303 = cir.load align(8) %13 : !cir.ptr<!cir.double>, !cir.double
                %304 = cir.const #cir.int<18000> : !s32i
                %305 = cir.cast int_to_float %304 : !s32i -> !cir.double
                %306 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
                %307 = cir.const #cir.int<2> : !s32i
                %308 = cir.cast int_to_float %307 : !s32i -> !cir.double
                %309 = cir.call @sqrt(%308) : (!cir.double) -> !cir.double extra(#fn_attr1)
                %310 = cir.binop(mul, %305, %309) : !cir.double
                %311 = cir.binop(sub, %303, %310) : !cir.double
                %312 = cir.binop(mul, %302, %311) : !cir.double
                %313 = cir.call @complex_pole(%265, %312) : (!cir.double, !cir.double) -> !rec_complex
                cir.store align(8) %313, %205 : !rec_complex, !cir.ptr<!rec_complex>
                %314 = cir.const #cir.int<1> : !s32i
                %315 = cir.cast int_to_float %314 : !s32i -> !cir.double
                %316 = cir.const #cir.int<4> : !s32i
                %317 = cir.cast int_to_float %316 : !s32i -> !cir.double
                %318 = cir.const #cir.fp<3.1415926535000001> : !cir.double
                %319 = cir.binop(mul, %317, %318) : !cir.double
                %320 = cir.const #cir.int<18000> : !s32i
                %321 = cir.cast int_to_float %320 : !s32i -> !cir.double
                %322 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
                %323 = cir.const #cir.int<2> : !s32i
                %324 = cir.cast int_to_float %323 : !s32i -> !cir.double
                %325 = cir.call @sqrt(%324) : (!cir.double) -> !cir.double extra(#fn_attr1)
                %326 = cir.binop(mul, %321, %325) : !cir.double
                %327 = cir.load align(8) %9 : !cir.ptr<!cir.double>, !cir.double
                %328 = cir.call @Km(%326, %327) : (!cir.double, !cir.double) -> !cir.double
                %329 = cir.binop(mul, %319, %328) : !cir.double
                %330 = cir.const #cir.fp<1.000000e+12> : !cir.double
                %331 = cir.binop(mul, %329, %330) : !cir.double
                %332 = cir.const #cir.fp<3.000000e+08> : !cir.double
                %333 = cir.const #cir.fp<3.000000e+08> : !cir.double
                %334 = cir.binop(mul, %332, %333) : !cir.double
                %335 = cir.load align(8) %9 : !cir.ptr<!cir.double>, !cir.double
                %336 = cir.call @D(%335) : (!cir.double) -> !cir.double
                %337 = cir.binop(mul, %334, %336) : !cir.double
                %338 = cir.load align(8) %7 : !cir.ptr<!cir.double>, !cir.double
                %339 = cir.call @D(%338) : (!cir.double) -> !cir.double
                %340 = cir.binop(mul, %337, %339) : !cir.double
                %341 = cir.binop(div, %331, %340) : !cir.double
                %342 = cir.load align(8) %13 : !cir.ptr<!cir.double>, !cir.double
                %343 = cir.const #cir.int<18000> : !s32i
                %344 = cir.cast int_to_float %343 : !s32i -> !cir.double
                %345 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
                %346 = cir.const #cir.int<2> : !s32i
                %347 = cir.cast int_to_float %346 : !s32i -> !cir.double
                %348 = cir.call @sqrt(%347) : (!cir.double) -> !cir.double extra(#fn_attr1)
                %349 = cir.binop(mul, %344, %348) : !cir.double
                %350 = cir.binop(sub, %342, %349) : !cir.double
                %351 = cir.binop(mul, %341, %350) : !cir.double
                %352 = cir.load align(8) %13 : !cir.ptr<!cir.double>, !cir.double
                %353 = cir.const #cir.int<18000> : !s32i
                %354 = cir.cast int_to_float %353 : !s32i -> !cir.double
                %355 = cir.get_global @sqrt : !cir.ptr<!cir.func<(!cir.double) -> !cir.double>>
                %356 = cir.const #cir.int<2> : !s32i
                %357 = cir.cast int_to_float %356 : !s32i -> !cir.double
                %358 = cir.call @sqrt(%357) : (!cir.double) -> !cir.double extra(#fn_attr1)
                %359 = cir.binop(mul, %354, %358) : !cir.double
                %360 = cir.binop(sub, %352, %359) : !cir.double
                %361 = cir.binop(mul, %351, %360) : !cir.double
                %362 = cir.call @complex_pole(%315, %361) : (!cir.double, !cir.double) -> !rec_complex
                cir.store align(8) %362, %206 : !rec_complex, !cir.ptr<!rec_complex>
                %363 = cir.load align(8) %205 : !cir.ptr<!rec_complex>, !rec_complex
                %364 = cir.load align(8) %206 : !cir.ptr<!rec_complex>, !rec_complex
                %365 = cir.call @complex_mul(%363, %364) : (!rec_complex, !rec_complex) -> !rec_complex
                cir.store align(8) %365, %209 : !rec_complex, !cir.ptr<!rec_complex>
                %366 = cir.load align(8) %204 : !cir.ptr<!rec_complex>, !rec_complex
                %367 = cir.load align(8) %209 : !cir.ptr<!rec_complex>, !rec_complex
                %368 = cir.call @complex_mul(%366, %367) : (!rec_complex, !rec_complex) -> !rec_complex
                cir.store align(8) %368, %208 : !rec_complex, !cir.ptr<!rec_complex>
                %369 = cir.load align(8) %203 : !cir.ptr<!rec_complex>, !rec_complex
                %370 = cir.load align(8) %208 : !cir.ptr<!rec_complex>, !rec_complex
                %371 = cir.call @complex_mul(%369, %370) : (!rec_complex, !rec_complex) -> !rec_complex
                cir.store align(8) %371, %207 : !rec_complex, !cir.ptr<!rec_complex>
                %372 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %373 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %374 = cir.ptr_stride %372, %373 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %375 = cir.load align(8) %374 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %376 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %377 = cir.ptr_stride %375, %376 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %378 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %379 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %380 = cir.ptr_stride %378, %379 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %381 = cir.load align(8) %380 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %382 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %383 = cir.ptr_stride %381, %382 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %384 = cir.load align(8) %383 : !cir.ptr<!rec_complex>, !rec_complex
                %385 = cir.load align(8) %207 : !cir.ptr<!rec_complex>, !rec_complex
                %386 = cir.call @complex_mul(%384, %385) : (!rec_complex, !rec_complex) -> !rec_complex
                cir.store align(8) %386, %210 : !rec_complex, !cir.ptr<!rec_complex>
                cir.copy %210 to %377 : !cir.ptr<!rec_complex>
              }
              cir.yield
            } step {
              %203 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %204 = cir.unary(inc, %203) nsw : !s32i, !s32i
              cir.store align(4) %204, %2 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
        }
        cir.yield
      } step {
        %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %190 = cir.unary(inc, %189) nsw : !s32i, !s32i
        cir.store align(4) %190, %1 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %158 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
    %159 = cir.get_global @".str.19" : !cir.ptr<!cir.array<!s8i x 30>>
    %160 = cir.cast array_to_ptrdecay %159 : !cir.ptr<!cir.array<!s8i x 30>> -> !cir.ptr<!s8i>
    %161 = cir.call @printf(%160) : (!cir.ptr<!s8i>) -> !s32i
    %162 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
    %163 = cir.const #cir.int<11> : !s32i
    %164 = cir.const #cir.int<11> : !s32i
    %165 = cir.const #cir.int<1> : !s32i
    cir.call @FFT_a(%162, %163, %164, %165) : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i, !s32i, !s32i) -> ()
    %166 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
    %167 = cir.get_global @".str.20" : !cir.ptr<!cir.array<!s8i x 25>>
    %168 = cir.cast array_to_ptrdecay %167 : !cir.ptr<!cir.array<!s8i x 25>> -> !cir.ptr<!s8i>
    %169 = cir.call @printf(%168) : (!cir.ptr<!s8i>) -> !s32i
    %170 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
    %171 = cir.const #cir.int<2048> : !s32i
    %172 = cir.const #cir.int<2048> : !s32i
    %173 = cir.get_global @".str.21" : !cir.ptr<!cir.array<!s8i x 14>>
    %174 = cir.cast array_to_ptrdecay %173 : !cir.ptr<!cir.array<!s8i x 14>> -> !cir.ptr<!s8i>
    cir.call @showamp_db(%170, %171, %172, %174) : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i, !s32i, !cir.ptr<!s8i>) -> ()
    cir.scope {
      %188 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %188, %1 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %190 = cir.const #cir.int<2048> : !s32i
        %191 = cir.cmp(lt, %189, %190) : !s32i, !cir.bool
        cir.condition(%191)
      } body {
        cir.scope {
          cir.scope {
            %189 = cir.const #cir.int<0> : !s32i
            cir.store align(4) %189, %2 : !s32i, !cir.ptr<!s32i>
            cir.for : cond {
              %190 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %191 = cir.const #cir.int<2048> : !s32i
              %192 = cir.cmp(lt, %190, %191) : !s32i, !cir.bool
              cir.condition(%192)
            } body {
              cir.scope {
                %190 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["phase1", init] {alignment = 8 : i64}
                %191 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["phase2", init] {alignment = 8 : i64}
                %192 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["tmp"] {alignment = 8 : i64}
                %193 = cir.alloca !rec_complex, !cir.ptr<!rec_complex>, ["agg.tmp3"] {alignment = 8 : i64}
                %194 = cir.const #cir.int<1> : !s32i
                %195 = cir.cast int_to_float %194 : !s32i -> !cir.double
                %196 = cir.const #cir.fp<3.1415926535000001> : !cir.double
                %197 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %198 = cir.cast int_to_float %197 : !s32i -> !cir.double
                %199 = cir.binop(mul, %196, %198) : !cir.double
                %200 = cir.call @complex_pole(%195, %199) : (!cir.double, !cir.double) -> !rec_complex
                cir.store align(8) %200, %190 : !rec_complex, !cir.ptr<!rec_complex>
                %201 = cir.const #cir.int<1> : !s32i
                %202 = cir.cast int_to_float %201 : !s32i -> !cir.double
                %203 = cir.const #cir.fp<3.1415926535000001> : !cir.double
                %204 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %205 = cir.cast int_to_float %204 : !s32i -> !cir.double
                %206 = cir.binop(mul, %203, %205) : !cir.double
                %207 = cir.call @complex_pole(%202, %206) : (!cir.double, !cir.double) -> !rec_complex
                cir.store align(8) %207, %191 : !rec_complex, !cir.ptr<!rec_complex>
                %208 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %209 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %210 = cir.ptr_stride %208, %209 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %211 = cir.load align(8) %210 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %212 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %213 = cir.ptr_stride %211, %212 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %214 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
                %215 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
                %216 = cir.ptr_stride %214, %215 : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> !cir.ptr<!cir.ptr<!rec_complex>>
                %217 = cir.load align(8) %216 : !cir.ptr<!cir.ptr<!rec_complex>>, !cir.ptr<!rec_complex>
                %218 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
                %219 = cir.ptr_stride %217, %218 : (!cir.ptr<!rec_complex>, !s32i) -> !cir.ptr<!rec_complex>
                %220 = cir.load align(8) %190 : !cir.ptr<!rec_complex>, !rec_complex
                %221 = cir.load align(8) %191 : !cir.ptr<!rec_complex>, !rec_complex
                %222 = cir.call @complex_mul(%220, %221) : (!rec_complex, !rec_complex) -> !rec_complex
                cir.store align(8) %222, %193 : !rec_complex, !cir.ptr<!rec_complex>
                %223 = cir.load align(8) %219 : !cir.ptr<!rec_complex>, !rec_complex
                %224 = cir.load align(8) %193 : !cir.ptr<!rec_complex>, !rec_complex
                %225 = cir.call @complex_mul(%223, %224) : (!rec_complex, !rec_complex) -> !rec_complex
                cir.store align(8) %225, %192 : !rec_complex, !cir.ptr<!rec_complex>
                cir.copy %192 to %213 : !cir.ptr<!rec_complex>
              }
              cir.yield
            } step {
              %190 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %191 = cir.unary(inc, %190) nsw : !s32i, !s32i
              cir.store align(4) %191, %2 : !s32i, !cir.ptr<!s32i>
              cir.yield
            }
          }
        }
        cir.yield
      } step {
        %189 = cir.load align(4) %1 : !cir.ptr<!s32i>, !s32i
        %190 = cir.unary(inc, %189) nsw : !s32i, !s32i
        cir.store align(4) %190, %1 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %175 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
    %176 = cir.const #cir.int<2048> : !s32i
    %177 = cir.const #cir.int<2048> : !s32i
    %178 = cir.get_global @".str.22" : !cir.ptr<!cir.array<!s8i x 14>>
    %179 = cir.cast array_to_ptrdecay %178 : !cir.ptr<!cir.array<!s8i x 14>> -> !cir.ptr<!s8i>
    cir.call @compout(%175, %176, %177, %179) : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i, !s32i, !cir.ptr<!s8i>) -> ()
    %180 = cir.get_global @printf : !cir.ptr<!cir.func<(!cir.ptr<!s8i>, ...) -> !s32i>>
    %181 = cir.get_global @".str.23" : !cir.ptr<!cir.array<!s8i x 48>>
    %182 = cir.cast array_to_ptrdecay %181 : !cir.ptr<!cir.array<!s8i x 48>> -> !cir.ptr<!s8i>
    %183 = cir.call @printf(%182) : (!cir.ptr<!s8i>) -> !s32i
    %184 = cir.load align(8) %3 : !cir.ptr<!cir.ptr<!cir.ptr<!rec_complex>>>, !cir.ptr<!cir.ptr<!rec_complex>>
    %185 = cir.const #cir.int<2048> : !s32i
    cir.call @free_complex_2d_array(%184, %185) : (!cir.ptr<!cir.ptr<!rec_complex>>, !s32i) -> ()
    %186 = cir.const #cir.int<0> : !s32i
    cir.store %186, %0 : !s32i, !cir.ptr<!s32i>
    %187 = cir.load %0 : !cir.ptr<!s32i>, !s32i
    cir.return %187 : !s32i
  }
}

