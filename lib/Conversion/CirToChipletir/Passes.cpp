//===------------------------------------------------------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "chiplet/Conversion/CirToChipletir/Passes.h"
#include "chiplet/Conversion/CirToChipletir/PassDetail.h"

namespace {
#define GEN_PASS_REGISTRATION
#include "chiplet/Conversion/CirToChipletir/Passes.h.inc"
} // end namespace

namespace {

class ConvertCirToChipletir
    : public mlir::chiplet::ConvertCirToChipletirBase<ConvertCirToChipletir> {
public:
  ConvertCirToChipletir() = default;
  void runOnOperation() override {
    // TODO: Implement the actual conversion logic here
    // For now, this is a placeholder pass
  }
};

} // end namespace

namespace mlir::chiplet {

void registerCirToChipletirPasses() {
  ::registerPasses();
}

std::unique_ptr<OperationPass<ModuleOp>> createConvertCirToChipletirPass() {
  return std::make_unique<ConvertCirToChipletir>();
}

} // namespace mlir::chiplet

