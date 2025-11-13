#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @main(%arg0: tensor<1x10xf32>) -> tensor<1x5xf32> {
    %cst = arith.constant dense_resource<torch_tensor_5_torch.float32> : tensor<5xf32>
    %cst_0 = arith.constant 0.000000e+00 : f32
    %cst_1 = arith.constant dense_resource<torch_tensor_5_10_torch.float32> : tensor<5x10xf32>
    %0 = tensor.empty() : tensor<10x5xf32>
    %transposed = linalg.transpose ins(%cst_1 : tensor<5x10xf32>) outs(%0 : tensor<10x5xf32>) permutation = [1, 0] 
    %1 = tensor.empty() : tensor<1x5xf32>
    %2 = linalg.fill ins(%cst_0 : f32) outs(%1 : tensor<1x5xf32>) -> tensor<1x5xf32>
    %3 = linalg.matmul ins(%arg0, %transposed : tensor<1x10xf32>, tensor<10x5xf32>) outs(%2 : tensor<1x5xf32>) -> tensor<1x5xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%3, %cst : tensor<1x5xf32>, tensor<5xf32>) outs(%1 : tensor<1x5xf32>) {
    ^bb0(%in: f32, %in_2: f32, %out: f32):
      %5 = arith.addf %in, %in_2 : f32
      linalg.yield %5 : f32
    } -> tensor<1x5xf32>
    return %4 : tensor<1x5xf32>
  }
}

{-#
  dialect_resources: {
    builtin: {
      torch_tensor_5_torch.float32: "0x04000000206456BE21492EBDE2E9FABDFEB7F9BD1F0198BE",
      torch_tensor_5_10_torch.float32: "0x0400000050B000BE93F48DBE04AE1EBEF453253E12C757BE229BF2BBE31D6D3EBF314E3E65331FBE19F8F13D7FEC0D3EFE8AAC3D99DC8B3E3AAAF4BDA3D6EE3DBF02A13E34CB923D8728903E2EF7BF3D5FFC91BE91A6603DE31F86BE9BF27B3D5840E03D0D321CBEB4C59E3D7069EA3C45D98EBD4DA3E9BDDE70623EFFA99CBE816B6F3D4A65993EBA71E53B89E898BE56E727BDD025453E85847D3EB3C117BE975213BE2C548D3E4880633EFABA64BEEEF3873EF77B873E3AFC623E1636233EF8F68CBEF14E1BBE97B6AC3D"
    }
  }
#-}
