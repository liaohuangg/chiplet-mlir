# add_mlir_doc(LowerPasses CHIPLETLowerPasses ./ -gen-pass-doc)

set(LLVM_TARGET_DEFINITIONS LowerPasses.td)
mlir_tablegen(LowerPasses.h.inc -gen-pass-decls -name CHIPLETLower)
add_public_tablegen_target(CHIPLETLowerPassIncGen)
