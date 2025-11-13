add_subdirectory(stablehlo)
add_mlir_dialect(CHIPLETOps CHIPLET)
# add_mlir_doc(CHIPLETOps CHIPLETOps Dialects/ -gen-op-doc )

set(LLVM_TARGET_DEFINITIONS CHIPLETBase.td)
mlir_tablegen(CHIPLETOpInterfaces.h.inc -gen-op-interface-decls)
mlir_tablegen(CHIPLETOpInterfaces.cpp.inc -gen-op-interface-defs)
add_public_tablegen_target(MLIRCHIPLETOpInterfacesIncGen)

set(LLVM_TARGET_DEFINITIONS CHIPLETOps.td)
mlir_tablegen(CHIPLETOpsEnums.h.inc -gen-enum-decls)
mlir_tablegen(CHIPLETOpsEnums.cpp.inc -gen-enum-defs)
add_public_tablegen_target(MLIRCHIPLETOpsEnumsGen)

set(LLVM_TARGET_DEFINITIONS CHIPLETOps.td)
mlir_tablegen(CHIPLETOpsAttributes.h.inc -gen-attrdef-decls -attrdefs-dialect=CHIPLET)
mlir_tablegen(CHIPLETOpsAttributes.cpp.inc -gen-attrdef-defs -attrdefs-dialect=CHIPLET)
add_public_tablegen_target(MLIRCHIPLETOpsAttributesIncGen)