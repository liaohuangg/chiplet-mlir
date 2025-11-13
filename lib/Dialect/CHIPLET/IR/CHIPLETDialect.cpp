//===- CHIPLETDialect.cpp - MLIR Dialect for CHIPLET Kernels implementation -------===//
//===----------------------------------------------------------------------===//
//
// This file implements the CHIPLET dialect and its operations.
//
//===----------------------------------------------------------------------===//

#include "chiplet/Dialect/CHIPLET/IR/CHIPLET.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"
#include "mlir/Dialect/Arith/IR/Arith.h"

using namespace mlir;
using namespace mlir::CHIPLET;

#include "chiplet/Dialect/CHIPLET/IR/CHIPLETOpsDialect.cpp.inc"

void CHIPLETDialect::initialize() {
  addOperations<
#define GET_OP_LIST
#include "chiplet/Dialect/CHIPLET/IR/CHIPLETOps.cpp.inc"
      >();
}