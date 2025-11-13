//===- CHIPLETOps.cpp - Operations of the CHIPLET dialect ---------------------===//
//===----------------------------------------------------------------------===//
#include "mlir/Dialect/Tensor/IR/Tensor.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"

#include "mlir/IR/Builders.h"
#include "mlir/IR/Matchers.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/IR/TypeUtilities.h"
#include "llvm/ADT/STLExtras.h"

#include "chiplet/Dialect/CHIPLET/IR/CHIPLET.h"
#include "chiplet/Dialect/CHIPLET/IR/CHIPLETOps.h.inc"

using namespace mlir;
using namespace mlir::CHIPLET;
using namespace mlir::func;
using namespace mlir::affine;

//===----------------------------------------------------------------------===//
// AddOp
//===----------------------------------------------------------------------===//
// void AddOp::build(::mlir::OpBuilder &odsBuilder, ::mlir::OperationState &odsState, Type out, ValueRange inputs) {
//   assert(inputs.size() > 2);
//   ::mlir::Type lhsType = inputs[0].getType();
//   ::mlir::Type rhsType = inputs[1].getType();
//   if(lhsType != rhsType){
//     llvm::errs() << "AddOp build error: input types are not the same.\n";
//     return;
//   }

//   SmallVector<int64_t> shape;
//   shape.push_back(lhs.size());

//   ::mlir::Type outtype = VectorType::get(shape, lhsType);
//   build(odsBuilder, odsState, outtype, inputs);
// }

LogicalResult AddOp::verify() {
  return success();
}

/*
TableGen 不会自动生成 “文本 IR 与算子的解析 / 打印逻辑”（因为不同算子的 IR 语法各不相同）
必须手动实现这两个方法，才能让 MLIR 识别你的算子的文本形式
*/
// 打印器
void AddOp::print(OpAsmPrinter &p) {
}

// 解析器
ParseResult AddOp::parse(OpAsmParser &parser, OperationState &result) {
  auto &builder = parser.getBuilder();
  Type outType;

  /// parse inputs
  SmallVector<OpAsmParser::UnresolvedOperand, 2> inputs;
  if (parser.parseOperandList(inputs))
    return failure();
  
  /// parse inputs type
  SmallVector<Type, 2> types;
  if (parser.parseColonTypeList(types))
    return failure();

  /// zip inputs and type
  for (auto pair : llvm::zip(inputs, types)){
    if (parser.resolveOperand(std::get<0>(pair),std::get<1>(pair), result.operands))
      return failure();
  }

  /// parse output type
  if (parser.parseArrowTypeList(result.types))
  {
    return failure();
  }

  return parser.parseOptionalAttrDict(result.attributes);
}

#define GET_OP_CLASSES
#include "chiplet/Dialect/CHIPLET/IR/CHIPLETOps.cpp.inc"