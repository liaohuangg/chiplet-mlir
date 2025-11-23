# Directory Structure
```
torch-mlir
clangir
chiplet-mlir
│   README.md
│   CMakeLists.txt
│───experiment
│───build
│───include
│───lib
│───tests
│───tool_build
└───tools
```
## 1. torch-mlir

参考：https://blog.csdn.net/gitblog_00405/article/details/148991084

```
cd torch-mlir
python -m pip install --upgrade pip
python -m pip install -r requirements.txt -r torchvision-requirements.txt

pip install pre-commit
pre-commit install

cmake -GNinja -Bbuild \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_ENABLE_ASSERTIONS=ON \
  -DPython3_FIND_VIRTUALENV=ONLY \
  -DMLIR_ENABLE_BINDINGS_PYTHON=ON \
  -DLLVM_TARGETS_TO_BUILD=host \
  externals/llvm-project/llvm \
  -DLLVM_ENABLE_PROJECTS=mlir \
  -DLLVM_EXTERNAL_PROJECTS="torch-mlir" \
  -DLLVM_EXTERNAL_TORCH_MLIR_SOURCE_DIR="$PWD"

cmake --build build

# 使用时注意设置环境变量，临时设置环境变量，仅在当前终端有效，永久设置需写入~/.bashrc
export PYTHONPATH=`pwd`/build/tools/torch-mlir/python_packages/torch_mlir:`pwd`/test/python/fx_importer

echo 'export PYTHONPATH="/ide_python/tool/torch-mlir:$PYTHONPATH"' >> ~/.bashrc
source ~/.bashrc
```
# 测试：
```
python test/python/fx_importer/basic_test.py
python test/tmp/test_simple.py
python test/tmp/test_output_types.py
python test/tmp/performance_test.py
```
## 2. 安装clangir
提交版本：a8000bbae0adc0a412c9f9ae05acc97ce088d45c

```
cd clangir
# 安装的目录
mkdir build

cd llvm
mkdir build
cd build
CLANG=/usr/bin/clang
INSTALLDIR=../../build
cmake -GNinja \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_ENABLE_ASSERTIONS=ON \
  -DCMAKE_INSTALL_PREFIX=${INSTALLDIR} \
  -DLLVM_TARGETS_TO_BUILD="host" \
  -DLLVM_ENABLE_PROJECTS="clang;mlir" \
  -DCLANG_ENABLE_CIR=ON \
  -DLLVM_INCLUDE_TOOLS=ON   \
  -DLLVM_BUILD_TOOLS=ON   \
  -DLLVM_INCLUDE_TESTS=ON   \
  -DMLIR_INCLUDE_TESTS=ON   \
  -DCMAKE_CXX_COMPILER=${CLANG}++ \
  -DCMAKE_C_COMPILER=${CLANG} ../
ninja install
```

## 3. chiplet-mlir依赖clangir的llvm
```
cd chiplet-mlir
cd build_tools
./build_chipletopt.sh
```
