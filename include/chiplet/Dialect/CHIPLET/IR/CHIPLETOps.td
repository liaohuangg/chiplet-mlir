//===-- CHIPLETOps.td - CHIPLET dialect operation definitions ------*- tablegen -*-===//
//===----------------------------------------------------------------------===//
//
// Defines some operations of the CHIPLET dialect.
//
//===----------------------------------------------------------------------===//

#ifndef CHIPLET_OPS
#define CHIPLET_OPS

include "chiplet/Dialect/CHIPLET/IR/CHIPLETBase.td"

include "mlir/Pass/PassBase.td"
include "mlir/IR/OpBase.td"
include "mlir/IR/EnumAttr.td"
include "mlir/IR/BuiltinAttributeInterfaces.td"
include "mlir/IR/SymbolInterfaces.td"

include "mlir/Dialect/LLVMIR/LLVMOpBase.td"
include "mlir/Dialect/Arith/IR/ArithBase.td"
include "mlir/Dialect/Arith/IR/ArithOpsInterfaces.td"

include "mlir/Interfaces/CallInterfaces.td"
include "mlir/Interfaces/SideEffectInterfaces.td"
include "mlir/Interfaces/InferTypeOpInterface.td"

//===----------------------------------------------------------------------===//
// CHIPLET Dialect operations.
//===----------------------------------------------------------------------===//
class CHIPLET_Op<string mnemonic, list<Trait> traits = []> :
    Op<CHIPLET_Dialect, mnemonic, traits>;


//===----------------------------------------------------------------------===//
// AddOp
//===----------------------------------------------------------------------===//

// def CHIPLETAddOp : CHIPLET_Op<"add",
//     [Pure, DeclareOpInterfaceMethods<ShapeInferenceOpInterface>]> {
//   let summary = "element-wise addition operation";
//   let description = [{
//     The "add" operation performs element-wise addition between two tensors.
//     The shapes of the tensor operands are expected to match.
//   }];

//   let arguments = (ins F64Tensor:$lhs, F64Tensor:$rhs);
//   let results = (outs F64Tensor);

//   // Indicate that the operation has a custom parser and printer method.
//   let hasCustomAssemblyFormat = 1;

//   // Allow building an AddOp with from the two input operands.
//   let builders = [
//     OpBuilder<(ins "Value":$lhs, "Value":$rhs)>
//   ];
// }

//===----------------------------------------------------------------------===//
// vectorCompute scalarCompute Memory Communication Logic()
//===----------------------------------------------------------------------===//
def AddOp : CHIPLET_Op<"add">{
  let summary = "element-wise addition operation.";
  let description = [{
    The "add" operation performs element-wise addition between two tensors.
    The shapes of the tensor operands are expected to match.
  }];

  // let builders = [
  //   OpBuilder<(ins "Value":$lhs, "Value":$rhs)>
  // ];

 // Define inputs as a variadic argument.
  let arguments = (ins Variadic<AnyType>: $inputs);
  
  // Define outputs.
  let results = (outs AnyType: $out);
  // let results = (outs AnyStaticShapeMemRef: $result); /// No results for 
  
  let extraClassDeclaration = [{
    ::mlir::Value getResult(){
      return getOut();
    }

    ::mlir::VectorType getOutVectorType() {
      return ::llvm::cast<VectorType>(getOut().getType());
    }

    ArrayRef<int64_t> getOutVectorShape() {
      return getOutVectorType().getShape();
    }

    Type getElementType(){
      return getOutVectorType().getElementType();
    }

    ::mlir::Value getLhs(){
      return getLhs();
    }

    ::mlir::Value getRhs(){
      return getRhs();  
    }
  }];

  let hasCustomAssemblyFormat = 1;
  let hasVerifier = 1;
}


#endif // CHIPLET_OPS