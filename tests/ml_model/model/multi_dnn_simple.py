import torch
import torch.nn as nn
import os
from torch_mlir import fx

# 定义 DNN 模型
class DNN1(nn.Module):
    def __init__(self):
        super().__init__()
        self.fc1 = nn.Linear(784, 512)
        self.relu1 = nn.ReLU()
        self.fc2 = nn.Linear(512, 256)
        self.relu2 = nn.ReLU()
        self.fc3 = nn.Linear(256, 128)
    
    def forward(self, x):
        x = self.fc1(x)
        x = self.relu1(x)
        x = self.fc2(x)
        x = self.relu2(x)
        x = self.fc3(x)
        return x

class DNN2(nn.Module):
    def __init__(self):
        super().__init__()
        self.fc1 = nn.Linear(128, 64)
        self.relu = nn.ReLU()
        self.fc2 = nn.Linear(64, 10)
    
    def forward(self, x):
        x = self.fc1(x)
        x = self.relu(x)
        x = self.fc2(x)
        return x


#顺序执行的多DNN系统
class MultiDNNSequential(nn.Module):
    """顺序执行多个DNN """
    def __init__(self):
        super().__init__()
        self.dnn1 = DNN1()
        self.dnn2 = DNN2()
    
    def forward(self, x):
        # DNN1 处理输入
        out1 = self.dnn1(x)
        # DNN2 处理 DNN1 的输出
        out2 = self.dnn2(out1)
        return out2



# 独立的多DNN系统 (使用字典输入)
class MultiDNNIndependent(nn.Module):
    """独立执行多个DNN"""
    def __init__(self):
        super().__init__()
        self.dnn1 = DNN1()
        self.dnn2 = DNN2()
    
    def forward(self, x):
        # 假设输入是一个大tensor,分割给不同DNN
        # x 形状: [1, 784+128] = [1, 912]
        x1 = x[:, :784]  # 前784维给DNN1
        x2_input = x[:, 784:784+128]  # 后128维给DNN2
        
        out1 = self.dnn1(x1)
        out2 = self.dnn2(x2_input)
        return out1, out2

# 创建输出目录
os.makedirs("multi_dnn_outputs", exist_ok=True)

 
#  使用顺序执行
# multi_dnn_system = MultiDNNSequential()
# multi_dnn_system.eval()
# example_input = torch.randn(1, 784)
# model_name = "sequential"


# 使用独立执行 
multi_dnn_system = MultiDNNIndependent()
multi_dnn_system.eval()
example_input = torch.randn(1, 912)  # 784+128
model_name = "independent"



try:
    #导出为stablehlo格式
    mlir_module = fx.export_and_import(
        multi_dnn_system,
        example_input,
        output_type=fx.OutputType.STABLEHLO
    )
    
    # 保存 MLIR 到文件
    mlir_output_path = f"multi_dnn_outputs/multi_dnn_{model_name}_stablehlo.mlir"
    with open(mlir_output_path, "w") as f:
        f.write(str(mlir_module))
    
    print(f"成功生成 stablehlo MLIR: {mlir_output_path}")
    
    # 导出为 Torch Dialect

    mlir_torch = fx.export_and_import(
        multi_dnn_system,
        example_input,
        output_type=fx.OutputType.TORCH
    )
    
    torch_mlir_path = f"multi_dnn_outputs/multi_dnn_{model_name}_torch.mlir"
    with open(torch_mlir_path, "w") as f:
        f.write(str(mlir_torch))
    
    print(f"成功生成 Torch Dialect MLIR: {torch_mlir_path}")

except Exception as e:
    print(f"MLIR导出失败: {e}")
 