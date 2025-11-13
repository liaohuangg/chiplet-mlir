#include "mlir/Dialect/Complex/IR/Complex.h"
#include "mlir/Dialect/Func/Extensions/InlinerExtension.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/Dialect/MLProgram/IR/MLProgram.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/SparseTensor/IR/SparseTensor.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"
#include "mlir/Dialect/Tensor/IR/TensorInferTypeOpInterfaceImpl.h"
#include "mlir/IR/Dialect.h"

#include "chiplet/Dialect/CHIPLET/IR/CHIPLET.h"
#include "chiplet/Dialect/CHIPLET/Transformer/Passes.h"

void mlir::CHIPLET::registerAllDialects(mlir::DialectRegistry &registry) {
  registry.insert<mlir::func::FuncDialect>();
  registry.insert<mlir::CHIPLET::CHIPLETDialect>();
}
