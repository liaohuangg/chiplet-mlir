import os
import platform
import argparse
import time
import math
import warnings
import sys

# 设置 torch-mlir 的 PYTHONPATH（解决 PyGlobals 重复初始化问题）
torch_mlir_base = "/root/workspace/ide_python/tool/torch-mlir"
torch_mlir_pkg_path = os.path.join(torch_mlir_base, "build/tools/torch-mlir/python_packages/torch_mlir")
torch_mlir_test_path = os.path.join(torch_mlir_base, "test/python/fx_importer")
if os.path.exists(torch_mlir_pkg_path):
    if torch_mlir_pkg_path not in sys.path:
        sys.path.insert(0, torch_mlir_pkg_path)
if os.path.exists(torch_mlir_test_path):
    if torch_mlir_test_path not in sys.path:
        sys.path.insert(0, torch_mlir_test_path)

import torch
import torch.distributed as dist
from torch import optim
from torch.nn.parallel import DistributedDataParallel
from torch.optim.lr_scheduler import CosineAnnealingLR
from torch.utils.data import DataLoader, DistributedSampler
from contextlib import nullcontext
from model.model import Transformer
from model.LMConfig import LMConfig
from model.dataset import PretrainDataset
# 使用正确的 torch_mlir 导入
from torch_mlir import fx
warnings.filterwarnings('ignore')


def Logger(content):
    if not ddp or dist.get_rank() == 0:
        print(content)


def get_lr(it, all):
    warmup_iters = args.warmup_iters
    lr_decay_iters = all
    min_lr = args.learning_rate / 10

    if it < warmup_iters:
        return args.learning_rate * it / warmup_iters
    if it > lr_decay_iters:
        return min_lr
    decay_ratio = (it - warmup_iters) / (lr_decay_iters - warmup_iters)
    assert 0 <= decay_ratio <= 1
    coeff = 0.5 * (1.0 + math.cos(math.pi * decay_ratio))
    return min_lr + coeff * (args.learning_rate - min_lr)


def train_epoch(epoch, wandb):
    start_time = time.time()
    for step, (X, Y) in enumerate(train_loader):
        X = X.to(args.device)
        Y = Y.to(args.device)

        lr = get_lr(epoch * iter_per_epoch + step, args.epochs * iter_per_epoch)
        for param_group in optimizer.param_groups:
            param_group['lr'] = lr

        with ctx:
            out = model(X, Y)
            loss = out.last_loss / args.accumulation_steps

        scaler.scale(loss).backward()

        if (step + 1) % args.accumulation_steps == 0:
            scaler.unscale_(optimizer)
            torch.nn.utils.clip_grad_norm_(model.parameters(), args.grad_clip)

            scaler.step(optimizer)
            scaler.update()

            optimizer.zero_grad(set_to_none=True)

        if step % args.log_interval == 0:
            spend_time = time.time() - start_time
            Logger(
                'Epoch:[{}/{}]({}/{}) loss:{:.3f} lr:{:.7f} epoch_Time:{}min:'.format(
                    epoch,
                    args.epochs,
                    step,
                    iter_per_epoch,
                    loss.item() * args.accumulation_steps,
                    optimizer.param_groups[-1]['lr'],
                    spend_time / (step + 1) * iter_per_epoch // 60 - spend_time // 60))

            if (wandb is not None) and (not ddp or dist.get_rank() == 0):
                wandb.log({"loss": loss.item() * args.accumulation_steps,
                           "lr": optimizer.param_groups[-1]['lr'],
                           "epoch_Time": spend_time / (step + 1) * iter_per_epoch // 60 - spend_time // 60})

        if (step + 1) % args.save_interval == 0 and (not ddp or dist.get_rank() == 0):
            model.eval()
            moe_path = '_moe' if lm_config.use_moe else ''
            ckp = f'{args.save_dir}/pretrain_{lm_config.dim}{moe_path}.pth'

            if isinstance(model, torch.nn.parallel.DistributedDataParallel):
                state_dict = model.module.state_dict()
            else:
                state_dict = model.state_dict()

            torch.save(state_dict, ckp)
            model.train()


def init_model():
    def count_parameters(model):
        return sum(p.numel() for p in model.parameters() if p.requires_grad)

    model = Transformer(lm_config).to(args.device)
    moe_path = '_moe' if lm_config.use_moe else ''

    Logger(f'LLM总参数量：{count_parameters(model) / 1e6:.3f} 百万')
    return model


def init_distributed_mode():
    if not ddp: return
    global ddp_local_rank, DEVICE

    dist.init_process_group(backend="nccl")
    ddp_rank = int(os.environ["RANK"])
    ddp_local_rank = int(os.environ["LOCAL_RANK"])
    ddp_world_size = int(os.environ["WORLD_SIZE"])
    DEVICE = f"cuda:{ddp_local_rank}"
    torch.cuda.set_device(DEVICE)


# torchrun --nproc_per_node 2 1-pretrain.py
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="MiniMind Pretraining")
    parser.add_argument("--out_dir", type=str, default="out", help="Output directory")
    parser.add_argument("--epochs", type=int, default=20, help="Number of epochs")
    parser.add_argument("--batch_size", type=int, default=32, help="Batch size")
    parser.add_argument("--learning_rate", type=float, default=2e-4, help="Learning rate")
    parser.add_argument("--device", type=str, default="cuda:0" if torch.cuda.is_available() else "cpu", help="Device to use")
    parser.add_argument("--dtype", type=str, default="bfloat16", help="Data type")
    parser.add_argument("--use_wandb", action="store_true", help="Use Weights & Biases")
    parser.add_argument("--wandb_project", type=str, default="MiniMind-Pretrain", help="Weights & Biases project name")
    parser.add_argument("--num_workers", type=int, default=8, help="Number of workers for data loading")
    parser.add_argument("--data_path", type=str, default="/root/workspace/MyMLCode/DLLearn/dataset/course_7/clean_seq_monkey.bin", help="Path to training data")
    parser.add_argument("--ddp", action="store_true", help="Use DistributedDataParallel")
    parser.add_argument("--accumulation_steps", type=int, default=8, help="Gradient accumulation steps")
    parser.add_argument("--grad_clip", type=float, default=1.0, help="Gradient clipping threshold")
    parser.add_argument("--warmup_iters", type=int, default=0, help="Number of warmup iterations")
    parser.add_argument("--log_interval", type=int, default=100, help="Logging interval")
    parser.add_argument("--save_interval", type=int, default=1000, help="Model saving interval")

    parser.add_argument("--local_rank", type=int, default=-1, help="Local rank for distributed training")

    args = parser.parse_args()

    lm_config = LMConfig()
    max_seq_len = lm_config.max_seq_len
    args.save_dir = os.path.join(args.out_dir)
    os.makedirs(args.save_dir, exist_ok=True)
    os.makedirs(args.out_dir, exist_ok=True)
    tokens_per_iter = args.batch_size * max_seq_len
    torch.manual_seed(1337)
    device_type = "cuda" if "cuda" in args.device else "cpu"

    args.wandb_run_name = f"MiniMind-Pretrain-Epoch-{args.epochs}-BatchSize-{args.batch_size}-LearningRate-{args.learning_rate}"

    ctx = nullcontext() if device_type == "cpu" else torch.cuda.amp.autocast()

    ddp = int(os.environ.get("RANK", -1)) != -1  # is this a ddp run?
    ddp_local_rank, DEVICE = 0, "cuda:0"
    if ddp:
        init_distributed_mode()
        args.device = torch.device(DEVICE)

    if args.use_wandb and (not ddp or ddp_local_rank == 0):
        import wandb
        wandb.init(project=args.wandb_project, name=args.wandb_run_name)
    else:
        wandb = None

    data_path_list = [args.data_path]
    train_ds = PretrainDataset(data_path_list, max_length=max_seq_len, memmap=True)
    train_sampler = DistributedSampler(train_ds) if ddp else None
    train_loader = DataLoader(
        train_ds,
        batch_size=args.batch_size,
        pin_memory=True,
        drop_last=False,
        shuffle=False,
        num_workers=args.num_workers,
        sampler=train_sampler
    )

    model = init_model()

    scaler = torch.cuda.amp.GradScaler(enabled=(args.dtype in ['float16', 'bfloat16']))
    optimizer = optim.Adam(model.parameters(), lr=args.learning_rate)

    model.eval()
    
    # 创建正确的输入：token IDs (整数)，形状为 (batch_size, seq_len)
    # 使用 max_seq_len 作为序列长度，batch_size=1
    batch_size = 1
    seq_len = min(max_seq_len, 512)  # 确保不超过 max_seq_len
    # 创建 token IDs，范围在 [0, vocab_size)
    example_tokens = torch.randint(0, lm_config.vocab_size, (batch_size, seq_len), dtype=torch.long)
    example_targets = torch.randint(0, lm_config.vocab_size, (batch_size, seq_len), dtype=torch.long)
    
    print(f"输入形状: tokens={example_tokens.shape}, targets={example_targets.shape}")
    print(f"模型配置: vocab_size={lm_config.vocab_size}, max_seq_len={lm_config.max_seq_len}")

    try:
        # 导出为 stablehlo 格式
        # 注意：fx.export_and_import 需要 nn.Module，且模型需要能够用单个输入进行 trace
        # 创建一个包装的 Module 类，只使用 tokens 输入
        # 注意：需要返回 logits 而不是整个输出对象，以便 torch.export 可以处理
        class ModelWrapper(torch.nn.Module):
            """包装模型，只使用 tokens 输入，返回 logits"""
            def __init__(self, model):
                super().__init__()
                self.model = model
            
            def forward(self, tokens):
                out = self.model(tokens, targets=None)
                # 返回 logits，而不是整个输出对象
                if hasattr(out, 'logits'):
                    return out.logits
                elif isinstance(out, dict) and 'logits' in out:
                    return out['logits']
                else:
                    # 如果输出格式不同，尝试直接返回
                    return out
        
        model_wrapper = ModelWrapper(model)
        
        # 先导出为 Torch Dialect（更容易成功）
        print("开始导出 Torch Dialect MLIR...")
        mlir_torch = fx.export_and_import(
            model_wrapper,
            example_tokens,
            output_type=fx.OutputType.TORCH
        )
        
        torch_mlir_path = f"/root/workspace/ide_python/tool/chiplet-mlir/tests/ml_model/model/dnn_outputs/Moe_torch.mlir"
        os.makedirs(os.path.dirname(torch_mlir_path), exist_ok=True)
        with open(torch_mlir_path, "w") as f:
            f.write(str(mlir_torch))
        
        print(f"成功生成 Torch Dialect MLIR: {torch_mlir_path}")
        
        # 尝试导出为 stablehlo 格式
        # 注意：由于模型使用了复数（RoPE），可能需要先转换为 LINALG 再转换
        # print("开始导出 stablehlo MLIR...")
        # stablehlo_success = False
        # try:
        #     # 方法1: 直接导出 StableHLO
        #     mlir_module = fx.export_and_import(
        #         model_wrapper,
        #         example_tokens,
        #         output_type=fx.OutputType.STABLEHLO
        #     )
            
        #     # 保存 MLIR 到文件
        #     mlir_output_path = f"/root/workspace/ide_python/tool/chiplet-mlir/tests/ml_model/model/dnn_outputs/Moe_stablehlo.mlir"
        #     with open(mlir_output_path, "w") as f:
        #         f.write(str(mlir_module))
            
        #     print(f"成功生成 stablehlo MLIR: {mlir_output_path}")
        #     stablehlo_success = True
        # except Exception as stablehlo_error:
        #     print(f"警告: 直接导出 StableHLO 失败（可能因为复数操作）: {str(stablehlo_error)[:200]}")
        #     # 方法2: 尝试先导出为 LINALG，然后转换
        #     try:
        #         print("尝试通过 LINALG 转换...")
        #         mlir_linalg = fx.export_and_import(
        #             model_wrapper,
        #             example_tokens,
        #             output_type=fx.OutputType.LINALG_ON_TENSORS
        #         )
        #         # 保存 LINALG 版本
        #         linalg_path = f"/root/workspace/ide_python/tool/chiplet-mlir/tests/ml_model/model/dnn_outputs/Moe_linalg.mlir"
        #         with open(linalg_path, "w") as f:
        #             f.write(str(mlir_linalg))
        #         print(f"已生成 LINALG MLIR: {linalg_path}")
        #         print("注意: 由于模型包含复数操作（RoPE），无法直接转换为 StableHLO")
        #         print("建议: 使用 Torch Dialect 或修改模型以使用实数版本的 RoPE")
        #     except Exception as linalg_error:
        #         print(f"LINALG 导出也失败: {str(linalg_error)[:200]}")
        #         print("已保存 Torch Dialect，这是最完整的表示形式")

    except Exception as e:
        import traceback
        print(f"MLIR导出失败: {e}")
        traceback.print_exc()
    # if False and platform.system() != 'Windows' and float(torch.__version__.split('.')[0]) >= 2:
    #     Logger("compiling the model... (takes a ~minute)")
    #     unoptimized_model = model
    #     model = torch.compile(model)

    # if ddp:
    #     model._ddp_params_and_buffers_to_ignore = {"pos_cis"}
    #     model = DistributedDataParallel(model, device_ids=[ddp_local_rank])

    # iter_per_epoch = len(train_loader)
    # for epoch in range(args.epochs):
    #     train_epoch(epoch, wandb)

