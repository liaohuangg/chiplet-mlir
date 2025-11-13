# This includes several libs that extends the linking time
# only the necessary libs are included instead
get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(conversion_libs GLOBAL PROPERTY MLIR_CONVERSION_LIBS)

# GCC, unlike clang, issues a warning when one virtual function is overridden
# in a derived class but one or more other virtual functions with the same
# name and different signature from a base class are not overridden. This
# leads to many warnings in the MLIR and ClangIR code when using the
# OpenConversionPattern<>::matchAndRewrite() function in the ordinary way.
# The "hiding" behavior is what we want, so we're just disabling the warning
# here.
if (LLVM_COMPILER_IS_GCC_COMPATIBLE AND (NOT "${CMAKE_CXX_COMPILER_ID}" MATCHES "Clang"))
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-overloaded-virtual")
endif()


# message(PUBLIC "${dialect_libs}")
# message(PUBLIC "${conversion_libs}")

set(LIBS
  # ${dialect_libs}
  # ${conversion_libs}

  # Core
  MLIRIR
  MLIRTransforms
  MLIROptLib

  # Dialects
  MLIRLLVMDialect
  MLIRLinalgDialect
  MLIRMemRefDialect
  MLIRAffineDialect
  MLIRArithDialect
  MLIRMathDialect
  MLIRFuncDialect
  MLIRSCFDialect
  MLIRMLProgramDialect
  MLIRTensorDialect
  MLIRAnalysis
  MLIRDialect
  MLIRParser
  MLIRPass
  MLIRSideEffectInterfaces
  MLIRTransformUtils


  # Transforms
  MLIRFuncTransforms
  MLIRLinalgTransforms
  MLIRAffineTransforms
  MLIRSCFTransforms
  MLIRReconcileUnrealizedCasts
  MLIRMemRefTransforms

  # Test Passes
  MLIRLinalgTestPasses
  MLIRAffineTransformsTestPasses

  # Conversion
  MLIRAffineToStandard
  MLIRSCFToControlFlow
  MLIRMemRefToLLVM
  MLIRMathToLLVM
  MLIRMathToLibm
  MLIRArithToLLVM
  MLIRFuncToLLVM
  MLIRLinalgTransforms
  MLIRLinalgToStandard

  # cir Dialect
  clangCIR
  clangCIRLoweringThroughMLIR
  clangCIRLoweringDirectToLLVM
  MLIRCIR
  MLIRCIRTransforms
  MLIRDLTIDialect
  clangAST

  # CHIPLET Dialect and Transforms
  MLIRCHIPLETOps
  MLIRCHIPLETTransforms

  # stablehlo Dialect
  StablehloBase
  StablehloBroadcastUtils
  ChloOps
  StablehloRegister
  VhloOps
  StablehloTypeInference
  StablehloAssemblyFormat
)

set(SOURCES
  chiplet-opt.cpp
)

add_llvm_executable(chiplet-opt ${SOURCES})

# llvm_update_compile_flags(cgra-opt)
target_link_libraries(chiplet-opt PRIVATE ${LIBS})
# clang_target_link_libraries(chiplet-opt
#   PRIVATE
#   # cir Dialect
#   clangCIR
#   clangCIRLoweringThroughMLIR
#   clangCIRLoweringDirectToLLVM
#   MLIRCIR
#   MLIRCIRTransforms
# )
llvm_update_compile_flags(chiplet-opt)

mlir_check_link_libraries(chiplet-opt)

install(TARGETS chiplet-opt)
