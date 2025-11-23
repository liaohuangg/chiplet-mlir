//===------------------------------------------------------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef CHIPLET_CONVERSION_CIR_TO_CHIPLETIR_PASSDETAIL_H
#define CHIPLET_CONVERSION_CIR_TO_CHIPLETIR_PASSDETAIL_H

#include "mlir/IR/BuiltinOps.h"
#include "mlir/Pass/Pass.h"

namespace mlir::chiplet {

#define GEN_PASS_CLASSES
#include "chiplet/Conversion/CirToChipletir/Passes.h.inc"

} // namespace mlir::chiplet

#endif // CHIPLET_CONVERSION_CIR_TO_CHIPLETIR_PASSDETAIL_H

