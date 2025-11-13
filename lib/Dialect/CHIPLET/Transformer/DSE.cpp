//===- DSEPasses.cpp - Misc Passes ---------------------------------------===//
//===----------------------------------------------------------------------===//
//
// This file implements a series of misc passes that dont modify the MLIR code.
//
//===----------------------------------------------------------------------===//

#include "mlir/Dialect/Affine/Passes.h"

#include "mlir/Dialect/Affine/Analysis/AffineAnalysis.h"
#include "mlir/Dialect/Affine/Analysis/LoopAnalysis.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Affine/LoopUtils.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/AffineExpr.h"
#include "mlir/IR/AffineMap.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/IRMapping.h"
#include "mlir/Support/FileUtilities.h"
#include "mlir/Parser/Parser.h"

#include "llvm/ADT/DenseMap.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/FileSystem.h"
#include <optional>
#include <filesystem>

#include "chiplet/Dialect/CHIPLET/IR/CHIPLET.h"
#include "chiplet/Dialect/CHIPLET/Transformer/Passes.h"

#include "llvm/IR/IRBuilder.h"
#include "llvm/Support/ToolOutputFile.h"
#include "llvm/Support/raw_ostream.h"

using namespace mlir;
using namespace mlir::CHIPLET;
using namespace mlir::CHIPLET::impl;
namespace {
// 继承TableGen生成的基类（注意impl命名空间）
struct ChipletDSE : public ChipletDSEBase<ChipletDSE> {
public:
  // 构造函数（可添加命令行参数）
  ChipletDSE() = default;

  // 核心逻辑：重写runOnOperation
  void runOnOperation() override {
    // 获取当前Pass作用的ModuleOp
    ModuleOp module = getOperation();
    // ---------- 你的Pass逻辑写在这里 ----------
    module.walk([&](Operation *op) {
      // 遍历Module内的所有操作，示例：打印操作
      if(op->getName().getStringRef() == "cir.load" || op->getName().getStringRef() == "stablehlo.constant"){
        llvm::errs() << "Found op: " << op->getName() << "\n";
      }
    });
  }

  // （可选）添加命令行参数（需在TableGen中配置）
  StringRef getArgument() const override { return "dse"; }
};
} // namespace

// 实现创建Pass的函数（和头文件声明、TableGen constructor对应）
std::unique_ptr<OperationPass<mlir::ModuleOp>>
mlir::CHIPLET::createChipletDSEPass() {
  return std::make_unique<ChipletDSE>();
}
