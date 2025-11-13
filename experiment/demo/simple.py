import torch
import torch_mlir
from torch_mlir import fx
import os

# 定义一个简单的PyTorch模型


class SimpleModel(torch.nn.Module):
    def __init__(self):
        super().__init__()
        self.linear = torch.nn.Linear(10, 5)
        
    def forward(self, x):
        return self.linear(x)
    


# 创建模型实例
model = SimpleModel()
model.eval()  # 重要：设置为评估模式


# 准备示例输入
example_input = torch.rand(1, 10)

# 将模型转换为MLIR模块 - 使用正确的API
mlir_module = fx.export_and_import(
    model,
    example_input,
    output_type=fx.OutputType.LINALG_ON_TENSORS
)
 

# 保存路径：当前运行目录下的"02-linalg.mlir"
save_filename = "02-linalg.mlir"  # 仅指定文件名，默认保存在运行目录
save_path = os.path.join(os.getcwd(), save_filename)  # 拼接当前目录和文件名

# 保存MLIR文件
with open(save_path, "w") as f:
    f.write(mlir_module.operation.get_asm())

print(f"MLIR已保存至运行目录: {save_path}")
print("当前运行目录确认:", os.getcwd())  # 打印当前运行目录，方便核对