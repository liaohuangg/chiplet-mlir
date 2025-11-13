//===- CHIPLET.h - CHIPLET dialect --------------------------------------*- C++
//-*-===//
//===----------------------------------------------------------------------===//

#ifndef CHIPLET_DIALECT_IR_H_
#define CHIPLET_DIALECT_IR_H_

#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Math/IR/Math.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"

#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/Dialect.h"
#include "mlir/IR/OpDefinition.h"
#include "mlir/IR/OpImplementation.h"
#include "mlir/Interfaces/CastInterfaces.h"
#include "mlir/Interfaces/ControlFlowInterfaces.h"
#include "mlir/Interfaces/InferTypeOpInterface.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"
#include "mlir/Interfaces/ViewLikeInterface.h"

// #include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/ArrayRef.h"
#include "llvm/ADT/Twine.h"
//===----------------------------------------------------------------------===//
// Test Dialect
//===----------------------------------------------------------------------===//
#include "chiplet/Dialect/CHIPLET/IR/CHIPLETOpsDialect.h.inc"
//===----------------------------------------------------------------------===//
// Test Dialect Operations
//===----------------------------------------------------------------------===//
#define GET_OP_CLASSES
#include "chiplet/Dialect/CHIPLET/IR/CHIPLETOps.h.inc"

#include "chiplet/Dialect/CHIPLET/IR/CHIPLETOpsTypes.h.inc"
// std::list
#include <set>
//===----------------------------------------------------------------------===//
// Test Dialect
//===----------------------------------------------------------------------===//

namespace mlir {
namespace CHIPLET {} // namespace CHIPLET
} // namespace mlir

#endif
