#!/bin/bash

# ========== 确定路径 ==========
# 脚本路径
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# 输入CPP文件路径
CPP_FILE="$SCRIPT_DIR/src/cpp/test.cpp"

# 工具路径
CLANG_PATH="$SCRIPT_DIR/../../../../clangir/llvm/build/bin/clang"
MLIR_TRANSLATE_PATH="$SCRIPT_DIR/../../../../clangir/llvm/build/bin/mlir-translate"

# 输出目录
OUTPUT_DIR="$SCRIPT_DIR/mlir_output"
MLIR_OUTPUT="$OUTPUT_DIR/test.mlir"

# ========== 创建输出目录 ==========
mkdir -p "$OUTPUT_DIR"

# ========== 检查文件是否存在 ==========
if [ ! -f "$CPP_FILE" ]; then
    echo "错误: 找不到CPP文件: $CPP_FILE"
    # exit 1
fi

if [ ! -f "$CLANG_PATH" ]; then
    echo "错误: 找不到clang工具: $CLANG_PATH"
    # exit 1
fi

if [ ! -f "$MLIR_TRANSLATE_PATH" ]; then
    echo "错误: 找不到mlir-translate工具: $MLIR_TRANSLATE_PATH"
    # exit 1
fi

# ========== 执行转换 ==========
echo "开始转换: $CPP_FILE -> $MLIR_OUTPUT"

# 生成LLVM IR
"$CLANG_PATH" -I"$SCRIPT_DIR/include" -std=c++17 -S -emit-llvm "$CPP_FILE" -o "$OUTPUT_DIR/temp.ll" && \
"$MLIR_TRANSLATE_PATH" --import-llvm "$OUTPUT_DIR/temp.ll" -o "$MLIR_OUTPUT" && \
rm -f "$OUTPUT_DIR/temp.ll" && \
echo "✓ 转换完成: $MLIR_OUTPUT" || \
echo "✗ 转换失败"