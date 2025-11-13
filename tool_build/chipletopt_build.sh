#!/bin/bash
set -euo pipefail

### set LLVM_BUILD_DIR to llvm build path of clangir
LLVM_BUILD_DIR=${PWD}/../../clangir/build
LLVM_INSTALL_DIR=${PWD}/../../clangir/build

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