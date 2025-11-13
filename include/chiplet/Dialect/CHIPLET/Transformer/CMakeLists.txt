# add_mlir_doc(Passes CHIPLETPasses ./ -gen-pass-doc)

set(LLVM_TARGET_DEFINITIONS Passes.td)
mlir_tablegen(Passes.h.inc -gen-pass-decls -name CHIPLET)
add_public_tablegen_target(CHIPLETPassIncGen)
