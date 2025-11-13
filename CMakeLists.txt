cmake_minimum_required(VERSION 3.13.4)
project(CHIPLET LANGUAGES CXX C)

# 在 CMakeLists.txt 开头（find_package 之前）添加
set(CLANG_DIR "${LLVM_INSTALL_DIR}/lib/cmake/clang"  CACHE PATH "Clang CMake directory" FORCE)

set(CMAKE_BUILD_WITH_INSTALL_NAME_DIR ON)

set(CMAKE_CXX_STANDARD 17 CACHE STRING "C++ standard to conform to")

find_package(MLIR REQUIRED)
find_package(Clang REQUIRED CONFIG)
find_package(LLVM REQUIRED)

set(LLVM_RUNTIME_OUTPUT_INTDIR "${CMAKE_BINARY_DIR}/bin")
set(LLVM_LIBRARY_OUTPUT_INTDIR "${CMAKE_BINARY_DIR}/lib")
set(MLIR_BINARY_DIR "${CMAKE_BINARY_DIR}")

set(CHIPLET_LIB_DIR ${CMAKE_BINARY_DIR}/lib)
set(PROJ_INCLUDE_DIR ${CMAKE_BINARY_DIR}/../include)

# -------- This project --------
list(APPEND CMAKE_MODULE_PATH "${MLIR_CMAKE_DIR}")
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
list(APPEND CMAKE_MODULE_PATH "${CLANG_CMAKE_DIR}")

include(TableGen)
include(AddLLVM)
include(AddMLIR)

# if(MLIR_ENABLE_BINDINGS_PYTHON)
#   include(MLIRDetectPythonEnv)
#   mlir_configure_python_dev_packages()
# endif()

set(LLVM_INCLUDE_DIRS "${LLVM_BUILD_DIR}/include")
set(LLVM_LIBRARY_DIRS "${LLVM_INSTALL_DIR}/lib")
message(LLVM_INCLUDE_DIRS: ${LLVM_INCLUDE_DIRS})
message(LLVM_LIBRARY_DIRS: ${LLVM_LIBRARY_DIRS})

link_directories(${LLVM_LIBRARY_DIRS})

include_directories(${LLVM_INCLUDE_DIRS})
include_directories(${MLIR_INCLUDE_DIRS})
include_directories(${CLANG_INCLUDE_DIRS})

include_directories("${PROJECT_SOURCE_DIR}/include")
include_directories("${PROJECT_BINARY_DIR}/include")
# 5. 把TableGen目标添加为你的Pass库的依赖
add_definitions(${LLVM_DEFINITIONS})

add_subdirectory(include/chiplet)  # CHIPLET 头文件目录
add_subdirectory(lib)
add_subdirectory(tools)

add_dependencies(MLIRCHIPLETTransforms CHIPLETPassIncGen)