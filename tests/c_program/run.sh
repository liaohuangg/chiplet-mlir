#!/bin/bash
set -euo pipefail

# BASE_DIR=$(cd "$(dirname "$0")" && pwd)
# SRC_DIR="$BASE_DIR/c_cpp_code/src/cpp"          # 源文件目录
# INCLUDE_DIR="$BASE_DIR/c_cpp_code/include"  # 头文件目录
# MLIR_OUTPUT_DIR="$BASE_DIR/output"  # MLIR输出目录
# mkdir -p "$MLIR_OUTPUT_DIR"      # 创建输出目录

# ========== 编译选项（适配MLIR + 头文件） ==========
# 使用clang将C++文件转换为cir dialect
# CFLAGS="-I $INCLUDE_DIR -std=c++17 -march=native"
# CFLAGS="-I $INCLUDE_DIR -std=c++17 -march=native"
# # -I指定头文件路径；-std=c++17适配C++代码；-march=native优化架构
# # CFLAGS="-I $INCLUDE_DIR -std=c++17 -march=native"
# MLIR_CLANG_PATH="$PWD/../../../clangir/llvm/build/bin/clang"
# src_file="deal_m.cpp"
# mlir_file="$MLIR_OUTPUT_DIR/deal_m_cpp.cir.mlir"
# "$MLIR_CLANG_PATH" $CFLAGS -emit-cir "$SRC_DIR/$src_file" -o "$mlir_file"

BASE_DIR=$(cd "$(dirname "$0")" && pwd)
SRC_DIR="$BASE_DIR/c_cpp_code/src/c"          # 源文件目录
INCLUDE_DIR="$BASE_DIR/c_cpp_code/include/c"  # 头文件目录
MLIR_OUTPUT_DIR="$BASE_DIR/output"  # MLIR输出目录
mkdir -p "$MLIR_OUTPUT_DIR"      # 创建输出目录

CFLAGS="-I $INCLUDE_DIR -std=c11 -march=native"
# -I指定头文件路径；-std=c11适配C++代码；-march=native优化架构
MLIR_CLANG_PATH="$PWD/../../../clangir/llvm/build/bin/clang"
src_file="deal_m.c"
mlir_file="$MLIR_OUTPUT_DIR/deal_m_c.cir.mlir"
"$MLIR_CLANG_PATH" $CFLAGS -emit-cir "$SRC_DIR/$src_file" -o "$mlir_file"