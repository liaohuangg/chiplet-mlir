#ifndef CHIPLET_PASSES_H
#define CHIPLET_PASSES_H
#include "mlir/IR/BuiltinOps.h"
#include "mlir/Pass/Pass.h"
#include <memory>

namespace mlir {
class LowerToLLVMOptions;
class ModuleOp;
template <typename T>
class OperationPass;
class Pass;
namespace CHIPLET {
  // 声明创建Pass的函数（和TableGen中constructor对应）
  std::unique_ptr<OperationPass<ModuleOp>> createChipletDSEPass();

  #define GEN_PASS_REGISTRATION
  #define GEN_PASS_DEF_CHIPLETDSE
  #include "chiplet/Dialect/CHIPLET/Transformer/Passes.h.inc"
} // namespace CHIPLET
} // namespace mlir

#endif // CHIPLET_PASSES_H
