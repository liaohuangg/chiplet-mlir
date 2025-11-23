add_mlir_conversion_library(CHIPLETTorchToChipletir
    Passes.cpp

    ADDITIONAL_HEADER_DIRS
    ${PROJECT_SOURCE_DIR}/include/chiplet/Conversion/TorchToChipletir

    DEPENDS
    CHIPLETConversionTorchToChipletirPassIncGen

    LINK_LIBS PUBLIC
    MLIRIR
    MLIRPass
)

