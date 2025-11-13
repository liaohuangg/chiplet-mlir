//===-- Passes.td - CHIPLET pass definition file --------------*- tablegen -*-===//
//===----------------------------------------------------------------------===//
//
// Defines the CHIPLET Lowering Passes
//
//===----------------------------------------------------------------------===//
#ifndef CHIPLET_LOWERING_PASSES
#define CHIPLET_LOWERING_PASSES
include "chiplet/Dialect/CHIPLET/IR/CHIPLETBase.td"
include "mlir/Pass/PassBase.td"

def LoweringToChipletDialect : Pass<"lowering-chiplet-dialect", "ModuleOp"> {
  let summary = "lower op to chiplet dialect";
  let description = [{
    Convert some dialect operations into the chiplet dialect operations.

  }];
  let constructor = "createLoweringToChipletDialectPass()";
  let dependentDialects = ["::mlir::CHIPLET::CHIPLETDialect"];
}


#endif // CHIPLET_DIALECT_PASSES
