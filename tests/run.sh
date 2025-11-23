#!/bin/bash
# # # set -euo pipefail

# rm -f test.log
# # step1
# # 使用clang将C++文件转换为cir dialect
# MLIR_CLANG_PATH="$PWD/../../clangir/llvm/build/bin/clang"

# # 定义路径
# CPP_BASE_DIR=$(cd "$(dirname "$0")" && pwd)/c_program
# CPP_SRC_DIR="$CPP_BASE_DIR/c_cpp_code/src/c"          # 源文件目录
# CPP_INCLUDE_DIR="$CPP_BASE_DIR/c_cpp_code/include/c"  # 头文件目录
# CIR_OUTPUT_DIR="$CPP_BASE_DIR/output"  # MLIR输出目录

# CFLAGS="-I $CPP_INCLUDE_DIR -std=c11 -march=native"
# # -I指定头文件路径；-std=c11适配C++代码；-march=native优化架构
# CIR_SRC_FILE="/deal_m.c"
# CIR_OUTPUT_FILE="$CIR_OUTPUT_DIR/deal_m_c.cir.mlir"
# $MLIR_CLANG_PATH $CFLAGS -emit-cir "$CPP_SRC_DIR/$CIR_SRC_FILE" -o "$CIR_OUTPUT_FILE"


# # step2
# # 使用chiplet-opt对生成的cir dialect进行DSE pass处理
# CHIPLET_OPT="$PWD/../build/bin/chiplet-opt"
# echo "Starting DSE pass processing for CIR..."

# CHIPLET_OPT_CIR_OUTPUT_FILE=$CIR_OUTPUT_DIR/deal_m_c_CHIPLET_DSE.mlir

# # 执行 Pass 并输出结果
# echo "Starting DSE pass that is processing CIR..."
# echo "Input: $CIR_OUTPUT_FILE"
# echo "Output: $CHIPLET_OPT_CIR_OUTPUT_FILE"

# $CHIPLET_OPT --dse \
#   "$CIR_OUTPUT_FILE" \
#   > "$CHIPLET_OPT_CIR_OUTPUT_FILE"
# echo "Processing completed successfully."



# # step3 
# # 使用chiplet-opt对生成的stablehlo dialect进行DSE pass处理
# MODEL_BASE_DIR=$(cd "$(dirname "$0")" && pwd)/ml_model
# SHLOIR_OUTPUT_DIR="$MODEL_BASE_DIR/model/multi_dnn_outputs"
# SHLOIR_OUTPUT_FILE="$SHLOIR_OUTPUT_DIR/multi_dnn_independent_stablehlo.mlir"
# CHIPLET_OPT_SHLOIR_OUTPUT_FILE="$SHLOIR_OUTPUT_DIR/multi_dnn_CHIPLET_DSE.shlo.mlir"

# echo "Starting DSE pass that is processing stablehloIR..."
# echo "Input: $SHLOIR_OUTPUT_FILE"
# echo "Output: $CHIPLET_OPT_SHLOIR_OUTPUT_FILE"

# $CHIPLET_OPT --dse \
#   "$SHLOIR_OUTPUT_FILE" \
#   > "$CHIPLET_OPT_SHLOIR_OUTPUT_FILE"
# echo "Processing completed successfully."

# 使用chiplet-opt对生成的cir dialect进行DSE pass处理
CHIPLET_OPT="$PWD/../build/bin/chiplet-opt"
echo "Starting DSE pass processing for torch ir..."
CHIPLET_OPT_TORCH_IR_FILE=$PWD/ml_model/model/multi_dnn_outputs/Moe_torch.mlir
CHIPLET_OPT_TORCH_OUTPUT_IR_FILE=$PWD/ml_model/model/multi_dnn_outputs/Moe_torch.out.mlir
#  执行 Pass 并输出结果
echo "Starting DSE pass that is processing TORCH IR..."

$CHIPLET_OPT --dse \
  "$CHIPLET_OPT_TORCH_IR_FILE" \
  > "$CHIPLET_OPT_TORCH_OUTPUT_IR_FILE"
echo "Processing completed successfully."


