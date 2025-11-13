# chiplet-mlir支持两种不同的前端的输入
运行/ide_python/tool/chiplet-mlir/tests/run.sh可以看到chiplet-opt已经可以成功处理cir与stablehlo ir的表示
## 1.clangir
# step 1
clang作为前端，将C++/C进行编译，得到cir表示的程序
例如：/ide_python/tool/chiplet-mlir/tests/c_program/output/test.cir.mlir

# step 2
得到cir表示的程序后
可以使用chiplet-opt工具进行算子遍历

## 2.torch-mlir
# step 1
torch-mlir作为前端，通过在.py文件中导出，能够输出stablehlo表示的model
具体例子可以看/ide_python/tool/chiplet-mlir/tests/ml_model/model/multi_dnn_simple.py中的导出方式

# step 2
得到stablehlo表示的model
例如：/ide_python/tool/chiplet-mlir/tests/ml_model/model/multi_dnn_outputs/multi_dnn_independent_stablehlo.mlir
可以使用chiplet-opt工具进行算子遍历

