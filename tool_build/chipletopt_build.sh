#!/bin/bash
set -euo pipefail

### 开发人员需要手动设置 clangir 的路径
### 方式1: 通过环境变量设置（推荐）
###   export CLANGIR_BUILD_DIR=/path/to/clangir/build
###   export CLANGIR_INSTALL_DIR=/path/to/clangir/build
### 方式2: 直接在脚本中修改下面的变量
### 方式3: 通过命令行参数传递
###   ./chipletopt_build.sh /path/to/clangir/build
###   eg ./chipletopt_build.sh /root/workspace/ide_python/tool/clangir/build

# 检查命令行参数
if [ $# -ge 1 ]; then
    CLANGIR_BUILD_DIR="$1"
    CLANGIR_INSTALL_DIR="${2:-$1}"  # 如果提供了第二个参数，使用它；否则使用第一个参数
elif [ -n "${CLANGIR_BUILD_DIR:-}" ]; then
    # 使用环境变量
    CLANGIR_INSTALL_DIR="${CLANGIR_INSTALL_DIR:-$CLANGIR_BUILD_DIR}"
elif [ -n "${CLANGIR_INSTALL_DIR:-}" ]; then
    # 如果只设置了 INSTALL_DIR，也使用它作为 BUILD_DIR
    CLANGIR_BUILD_DIR="$CLANGIR_INSTALL_DIR"
else
    # 默认路径（如果存在）
    DEFAULT_PATH="${PWD}/../../clangir/build"
    if [ -d "$DEFAULT_PATH" ]; then
        echo "Warning: Using default clangir path: $DEFAULT_PATH"
        echo "To set custom path, use: export CLANGIR_BUILD_DIR=/path/to/clangir/build"
        CLANGIR_BUILD_DIR="$DEFAULT_PATH"
        CLANGIR_INSTALL_DIR="$DEFAULT_PATH"
    else
        echo "Error: CLANGIR_BUILD_DIR is not set and default path does not exist."
        echo ""
        echo "Please set the clangir build directory using one of the following methods:"
        echo "  1. Environment variable: export CLANGIR_BUILD_DIR=/path/to/clangir/build"
        echo "  2. Command line argument: $0 /path/to/clangir/build"
        echo "  3. Edit this script and set CLANGIR_BUILD_DIR variable"
        echo ""
        exit 1
    fi
fi

# 验证路径是否存在
if [ ! -d "$CLANGIR_BUILD_DIR" ]; then
    echo "Error: CLANGIR_BUILD_DIR does not exist: $CLANGIR_BUILD_DIR"
    exit 1
fi

if [ ! -f "$CLANGIR_BUILD_DIR/bin/clang" ]; then
    echo "Error: clang not found in $CLANGIR_BUILD_DIR/bin/clang"
    echo "Please ensure clangir is built correctly."
    exit 1
fi

echo "Using CLANGIR_BUILD_DIR: $CLANGIR_BUILD_DIR"
echo "Using CLANGIR_INSTALL_DIR: $CLANGIR_INSTALL_DIR"

LLVM_BUILD_DIR="$CLANGIR_BUILD_DIR"
LLVM_INSTALL_DIR="$CLANGIR_INSTALL_DIR"

# ......................................................................
BUILD_DIR=../build

# 如果已经有 build 目录，则清空（删除并重建）
if [ -d "${BUILD_DIR}" ]; then
    echo "Cleaning existing build directory: ${BUILD_DIR}"
    rm -rf "${BUILD_DIR}"
fi

mkdir -p "${BUILD_DIR}"
chmod -R a+rwX "${BUILD_DIR}"
cd "${BUILD_DIR}"

CLANG=$LLVM_BUILD_DIR/bin/clang
cmake -GNinja \
  ..\
  -DCMAKE_BUILD_TYPE=Debug \
  -DCMAKE_PREFIX_PATH=$LLVM_BUILD_DIR \
  -DLLVM_BUILD_DIR=$LLVM_BUILD_DIR \
  -DLLVM_INSTALL_DIR=$LLVM_INSTALL_DIR \
  -DCMAKE_CXX_COMPILER=${CLANG}++ \
  -DCMAKE_C_COMPILER=${CLANG} ../


# cmake --build . --target cgra-opt cgra-mapper
ninja -j 8
# ninja -j 8