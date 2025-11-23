//===-- Passes.td - Pass definition file -------------------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef CHIPLET_CONVERSION_CIR_TO_CHIPLETIR_PASSES
#define CHIPLET_CONVERSION_CIR_TO_CHIPLETIR_PASSES

include "mlir/Pass/PassBase.td"

def ConvertCirToChipletir : Pass<"convert-cir-to-chipletir", "ModuleOp"> {
    let summary = "Converts CIR dialect to CHIPLET IR dialect";
    let description = [{
      Converts operations from the CIR dialect to CHIPLET IR dialect.

      This pass performs the conversion from CIR operations to CHIPLET IR
      operations, enabling further processing in the CHIPLET dialect.
    }];

    let constructor = "mlir::chiplet::createConvertCirToChipletirPass()";
}

#endif  // CHIPLET_CONVERSION_CIR_TO_CHIPLETIR_PASSES

