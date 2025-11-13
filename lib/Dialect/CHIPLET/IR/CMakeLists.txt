add_mlir_dialect_library(MLIRCHIPLETOps
  CHIPLETDialect.cpp
  CHIPLETOps.cpp

  ADDITIONAL_HEADER_DIRS
  ${PROJ_INCLUDE_DIR}/chiplet/Dialect/CHIPLET

  DEPENDS
  MLIRCHIPLETOpInterfacesIncGen
  MLIRCHIPLETOpsEnumsGen
  MLIRCHIPLETOpsAttributesIncGen

  LINK_COMPONENTS
  Core

  LINK_LIBS PUBLIC
  MLIRDialectUtils
  MLIRIR
  MLIRTensorDialect
  MLIRInferTypeOpInterface
  MLIRSideEffectInterfaces
  MLIRSupport
  MLIRFuncDialect
  MLIRViewLikeInterface
  )
