//===-------------- LoweringToChipletDialectPass.h --------------*- C++ -*-===//
//
//===----------------------------------------------------------------------===//

#ifndef LOWERING_TO_PASS_H
#define LOWERING_TO_PASS_H

#include <memory>

namespace mlir {
class LowerToLLVMOptions;
class ModuleOp;
template <typename T>
class OperationPass;
class Pass;
namespace CHIPLET{

/// Creates a pass to convert the Func dialect into the LLVMIR dialect.
// std::unique_ptr<OperationPass<ModuleOp>> createLoweringToChipletDialectPass();

// #define GEN_PASS_REGISTRATION
// #include "chiplet/Dialect/CHIPLET/Transformer/LowerPasses.h.inc"
}
} // namespace mlir

#endif // LOWERING_TO_PASS_H
