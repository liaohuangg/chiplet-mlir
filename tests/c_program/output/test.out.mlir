!s32i = !cir.int<s, 32>
#fn_attr = #cir<extra({inline = #cir.inline<no>, nothrow = #cir.nothrow, optnone = #cir.optnone, uwtable = #cir.uwtable<async>})>
module @"/root/workspace/ide_python/tool/chiplet-mlir/tests/c_program/c_cpp_code/src/test.cpp" attributes {cir.lang = #cir.lang<cxx>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  cir.func dso_local @main() -> !s32i extra(#fn_attr) {
    %0 = cir.alloca !s32i, !cir.ptr<!s32i>, ["__retval"] {alignment = 4 : i64}
    %1 = cir.alloca !cir.array<!s32i x 10>, !cir.ptr<!cir.array<!s32i x 10>>, ["data"] {alignment = 16 : i64}
    %2 = cir.alloca !s32i, !cir.ptr<!s32i>, ["result", init] {alignment = 4 : i64}
    %3 = cir.const #cir.int<0> : !s32i
    cir.store align(4) %3, %2 : !s32i, !cir.ptr<!s32i>
    cir.scope {
      %6 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i", init] {alignment = 4 : i64}
      %7 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %7, %6 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %8 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
        %9 = cir.const #cir.int<10> : !s32i
        %10 = cir.cmp(lt, %8, %9) : !s32i, !cir.bool
        cir.condition(%10)
      } body {
        cir.scope {
          %8 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
          %9 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
          %10 = cir.get_element %1[%9] : (!cir.ptr<!cir.array<!s32i x 10>>, !s32i) -> !cir.ptr<!s32i>
          cir.store align(4) %8, %10 : !s32i, !cir.ptr<!s32i>
        }
        cir.yield
      } step {
        %8 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
        %9 = cir.unary(inc, %8) nsw : !s32i, !s32i
        cir.store align(4) %9, %6 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    cir.scope {
      %6 = cir.alloca !s32i, !cir.ptr<!s32i>, ["i", init] {alignment = 4 : i64}
      %7 = cir.const #cir.int<0> : !s32i
      cir.store align(4) %7, %6 : !s32i, !cir.ptr<!s32i>
      cir.for : cond {
        %8 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
        %9 = cir.const #cir.int<10> : !s32i
        %10 = cir.cmp(lt, %8, %9) : !s32i, !cir.bool
        cir.condition(%10)
      } body {
        cir.scope {
          cir.scope {
            %8 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
            %9 = cir.get_element %1[%8] : (!cir.ptr<!cir.array<!s32i x 10>>, !s32i) -> !cir.ptr<!s32i>
            %10 = cir.load align(4) %9 : !cir.ptr<!s32i>, !s32i
            %11 = cir.const #cir.int<2> : !s32i
            %12 = cir.binop(rem, %10, %11) : !s32i
            %13 = cir.const #cir.int<0> : !s32i
            %14 = cir.cmp(eq, %12, %13) : !s32i, !cir.bool
            cir.if %14 {
              %15 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
              %16 = cir.get_element %1[%15] : (!cir.ptr<!cir.array<!s32i x 10>>, !s32i) -> !cir.ptr<!s32i>
              %17 = cir.load align(4) %16 : !cir.ptr<!s32i>, !s32i
              %18 = cir.const #cir.int<1> : !s32i
              %19 = cir.binop(add, %17, %18) nsw : !s32i
              %20 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %21 = cir.binop(add, %20, %19) nsw : !s32i
              cir.store align(4) %21, %2 : !s32i, !cir.ptr<!s32i>
            } else {
              %15 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
              %16 = cir.get_element %1[%15] : (!cir.ptr<!cir.array<!s32i x 10>>, !s32i) -> !cir.ptr<!s32i>
              %17 = cir.load align(4) %16 : !cir.ptr<!s32i>, !s32i
              %18 = cir.const #cir.int<1> : !s32i
              %19 = cir.binop(sub, %17, %18) nsw : !s32i
              %20 = cir.load align(4) %2 : !cir.ptr<!s32i>, !s32i
              %21 = cir.binop(add, %20, %19) nsw : !s32i
              cir.store align(4) %21, %2 : !s32i, !cir.ptr<!s32i>
            }
          }
        }
        cir.yield
      } step {
        %8 = cir.load align(4) %6 : !cir.ptr<!s32i>, !s32i
        %9 = cir.unary(inc, %8) nsw : !s32i, !s32i
        cir.store align(4) %9, %6 : !s32i, !cir.ptr<!s32i>
        cir.yield
      }
    }
    %4 = cir.const #cir.int<0> : !s32i
    cir.store %4, %0 : !s32i, !cir.ptr<!s32i>
    %5 = cir.load %0 : !cir.ptr<!s32i>, !s32i
    cir.return %5 : !s32i
  }
}

