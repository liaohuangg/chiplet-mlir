//===-- CHIPLET_BASE.td - Test dialect definitions ---------------*- tablegen -*-===//
//===----------------------------------------------------------------------===//
//
// Defines the CHIPLET dialect
//
//===----------------------------------------------------------------------===//

#ifndef CHIPLET_BASE
#define CHIPLET_BASE

include "mlir/IR/OpBase.td"
include "mlir/IR/BuiltinDialect.td"
include "mlir/IR/BuiltinTypeInterfaces.td"

//===----------------------------------------------------------------------===//
// CHIPLET Dialect.
//===----------------------------------------------------------------------===//

def CHIPLET_Dialect : Dialect {
  let name = "CHIPLET";
  let cppNamespace = "::mlir::CHIPLET";

  let description = [{
    "a dialect for program partitioning and optimization of chiplet-based architectures"
  }];

  let dependentDialects = [
  ];
}

#endif // CHIPLET_BASE
