add_mlir_conversion_library(CHIPLETCirToChipletir
    Passes.cpp

    ADDITIONAL_HEADER_DIRS
    ${PROJECT_SOURCE_DIR}/include/chiplet/Conversion/CirToChipletir

    DEPENDS
    CHIPLETConversionCirToChipletirPassIncGen

    LINK_LIBS PUBLIC
    MLIRIR
    MLIRPass
)

