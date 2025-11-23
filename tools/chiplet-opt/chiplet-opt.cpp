#include "mlir/IR/Dialect.h"
#include "mlir/IR/MLIRContext.h"
#include "mlir/InitAllDialects.h"
#include "mlir/InitAllPasses.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassManager.h"
#include "mlir/Pass/PassOptions.h"
#include "mlir/Pass/PassRegistry.h"
#include "mlir/Support/FileUtilities.h"
#include "mlir/Tools/mlir-opt/MlirOptMain.h"

// MLIR Dialects
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Arith/Transforms/Passes.h"
#include "mlir/Dialect/DLTI/DLTI.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Func/Transforms/Passes.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/OpenMP/OpenMPDialect.h"

// MLIR Transforms
#include "mlir/Conversion/ReconcileUnrealizedCasts/ReconcileUnrealizedCasts.h"

// LLVM
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/InitLLVM.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/ToolOutputFile.h"

// CIR (Clang IR)
#include "clang/CIR/Dialect/IR/CIRDialect.h"
#include "clang/CIR/Dialect/Passes.h"
#include "clang/CIR/Passes.h"

// CHIPLET Dialect
#include "chiplet/Dialect/CHIPLET/IR/CHIPLET.h"
#include "chiplet/Dialect/CHIPLET/Transformer/Passes.h"

// StableHLO Dialect
#include "chiplet/Dialect/CHIPLET/IR/stablehlo/dialect/StablehloOps.h"
#include "chiplet/Dialect/CHIPLET/IR/stablehlo/dialect/Register.h"

// Torch-MLIR Dialects
#include "torch-mlir/InitAll.h"


int main(int argc, char **argv) {
  // mlir::registerAllDialects();
  // mlir::registerAllPasses();
  mlir::DialectRegistry registry;

  //===--------------------------------------------------------------------===//
  // Register mlir dialects and passes
  //===--------------------------------------------------------------------===//

  mlir::registerInlinerPass();
  mlir::registerCanonicalizerPass();
  mlir::registerCSEPass();
  mlir::registerLinalgPasses();

  // Add the following to selectively include the necessary dialects. You only
  // need to register dialects that will be *parsed* by the tool, not the one
  // generated
  // clang-format off
  registry.insert<mlir::func::FuncDialect,
                  mlir::memref::MemRefDialect,
                  mlir::LLVM::LLVMDialect,
                  mlir::linalg::LinalgDialect,
                  mlir::math::MathDialect,
                  mlir::scf::SCFDialect,
                  mlir::cf::ControlFlowDialect,
                  mlir::vector::VectorDialect,
                  mlir::arith::ArithDialect,
                  mlir::affine::AffineDialect,
                  mlir::DLTIDialect,
                  mlir::ml_program::MLProgramDialect,
                  mlir::tensor::TensorDialect,
                  mlir::bufferization::BufferizationDialect
                  >();

  // Dialects
  registry.insert<cir::CIRDialect>();
  registry.insert<mlir::CHIPLET::CHIPLETDialect>();
  registry.insert<mlir::stablehlo::StablehloDialect>();
  
  // Register Torch-MLIR dialects
  mlir::torch::registerAllDialects(registry);
  // Note: registerAllExtensions requires MLIRFuncTransforms to be linked correctly
  // Temporarily commented out to resolve linking issues
  // mlir::torch::registerAllExtensions(registry);
  mlir::torch::registerOptionalInputDialects(registry);
  
  // ----- My Dialect -----
  mlir::CHIPLET::registerChipletDSEPass();


  return failed(
      mlir::MlirOptMain(argc, argv, "Fail\n", registry));
}
