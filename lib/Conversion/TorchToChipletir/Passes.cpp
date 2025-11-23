//===------------------------------------------------------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "chiplet/Conversion/TorchToChipletir/Passes.h"
#include "chiplet/Conversion/TorchToChipletir/PassDetail.h"

namespace {
#define GEN_PASS_REGISTRATION
#include "chiplet/Conversion/TorchToChipletir/Passes.h.inc"
} // end namespace

namespace {

class ConvertTorchToChipletir
    : public mlir::chiplet::ConvertTorchToChipletirBase<ConvertTorchToChipletir> {
public:
  ConvertTorchToChipletir() = default;
  void runOnOperation() override {
    // TODO: Implement the actual conversion logic here
    // For now, this is a placeholder pass
  }
};

} // end namespace

namespace mlir::chiplet {

void registerTorchToChipletirPasses() {
  ::registerPasses();
}

std::unique_ptr<OperationPass<ModuleOp>> createConvertTorchToChipletirPass() {
  return std::make_unique<ConvertTorchToChipletir>();
}

} // namespace mlir::chiplet

