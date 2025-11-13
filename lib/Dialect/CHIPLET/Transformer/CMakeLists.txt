add_mlir_dialect_library(MLIRCHIPLETTransforms
  DSE.cpp

  # ${PROJ_INCLUDE_DIR}/chiplet/Dialect/CHIPLET/IR
  # ${PROJ_INCLUDE_DIR}/chiplet/Dialect/CHIPLET/Transformer
  ADDITIONAL_HEADER_DIRS
  ${PROJ_INCLUDE_DIR}/chiplet/Dialect/CHIPLET
  ${PROJ_INCLUDE_DIR}/chiplet/Dialect/CHIPLET/IR
  ${PROJ_INCLUDE_DIR}/chiplet/Dialect/CHIPLET/Transformer

  DEPENDS
  CHIPLETPassIncGen

  LINK_LIBS PUBLIC
  MLIRIR
  MLIRPass
  MLIRAffineDialect
  MLIRAffineToStandard
  MLIRCHIPLETOps
  MLIRArithDialect
  )

if(CHIPLET_MLIR_ENABLE_STABLEHLO)
  list(APPEND LinkedLibs
    StablehloOps
  )
endif()