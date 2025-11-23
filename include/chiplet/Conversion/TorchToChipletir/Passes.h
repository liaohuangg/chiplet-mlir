//===------------------------------------------------------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef CHIPLET_CONVERSION_TORCH_TO_CHIPLETIR_PASSES_H
#define CHIPLET_CONVERSION_TORCH_TO_CHIPLETIR_PASSES_H

#include "mlir/IR/BuiltinOps.h"
#include "mlir/Pass/Pass.h"
#include <memory>

namespace mlir::chiplet {

std::unique_ptr<OperationPass<ModuleOp>> createConvertTorchToChipletirPass();

/// Registers all TorchToChipletir conversion passes.
void registerTorchToChipletirPasses();

} // namespace mlir::chiplet

#endif // CHIPLET_CONVERSION_TORCH_TO_CHIPLETIR_PASSES_H

