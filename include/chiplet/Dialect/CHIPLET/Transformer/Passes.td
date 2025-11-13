// #ifndef CHIPLET_PASSES
// #define CHIPLET_PASSES

include "mlir/Pass/PassBase.td"
include "chiplet/Dialect/CHIPLET/IR/CHIPLETBase.td"
include "mlir/IR/BuiltinDialect.td"
include "mlir/Dialect/ControlFlow/IR/ControlFlowOps.td"
include "mlir/Dialect/Affine/IR/AffineOps.td"

// pass 全局注册在tablegen(.td)文件
def ChipletDSE : Pass<"dse", "ModuleOp"> {
  let summary = "program-partition-dse";
  let constructor = "mlir::CHIPLET::createChipletDSEPass()";
  let options = [
  
  ];
}

// 定义Pass（需放在对应的命名空间宏内）
// #ifdef CHIPLET_PASSES
// def ChipletDSE : Pass<"dse", "ModuleOp"> {
//   // Pass描述
//   let summary = "program-partition-dse";
//   // 对应创建Pass的函数（需和cpp中函数名一致）
//   let constructor = "mlir::CHIPLET::createChipletDSEPass()";
//   // Pass依赖的方言
//   let dependentDialects = [
//     "::mlir::CHIPLET::CHIPLETDialect",
//     "::mlir::arith::ArithDialect"
//   ];
//   // 命令行参数名（和Pass<"dse">对应）
//   let argument = "dse";
// }
// #endif // CHIPLET_PASSES
