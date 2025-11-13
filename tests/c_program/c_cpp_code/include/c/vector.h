#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// 向量结构体
typedef struct {
    double X;  // 方位
    double Y;  // 俯仰
    double Z;  // 高度
} vector;

// 向量操作函数

// 创建零向量
vector vector_create_zero() {
    vector v;
    v.X = 0.0;
    v.Y = 0.0;
    v.Z = 0.0;
    return v;
}

// 创建指定值的向量
vector vector_create(double x, double y, double z) {
    vector v;
    v.X = x;
    v.Y = y;
    v.Z = z;
    return v;
}

// 获取向量分量
double vector_getX(vector v) {
    return v.X;
}

double vector_getY(vector v) {
    return v.Y;
}

double vector_getZ(vector v) {
    return v.Z;
}

// 计算向量模长
double vector_mod(vector v) {
    return sqrt(v.X * v.X + v.Y * v.Y + v.Z * v.Z);
}

// 向量加法
vector vector_add(vector a, vector b) {
    return vector_create(a.X + b.X, a.Y + b.Y, a.Z + b.Z);
}

// 向量减法
vector vector_sub(vector a, vector b) {
    return vector_create(a.X - b.X, a.Y - b.Y, a.Z - b.Z);
}

// 向量点积
double vector_dot(vector a, vector b) {
    return a.X * b.X + a.Y * b.Y + a.Z * b.Z;
}

// 创建向量的辅助函数
vector build_vec(double x, double y, double z) {
    return vector_create(x, y, z);
}

// 向量显示函数
void vector_display(vector v) {
    printf("(%.6f, %.6f, %.6f)", v.X, v.Y, v.Z);
}

// 向量叉积（额外添加的功能）
vector vector_cross(vector a, vector b) {
    return vector_create(
        a.Y * b.Z - a.Z * b.Y,
        a.Z * b.X - a.X * b.Z,
        a.X * b.Y - a.Y * b.X
    );
}

// 向量数乘
vector vector_scale(vector v, double scalar) {
    return vector_create(v.X * scalar, v.Y * scalar, v.Z * scalar);
}

// 向量归一化
vector vector_normalize(vector v) {
    double mod = vector_mod(v);
    if (mod == 0.0) {
        return vector_create_zero();
    }
    return vector_scale(v, 1.0 / mod);
}

// // 测试示例
// int main() {
//     // 测试向量运算
//     vector a = build_vec(1.0, 2.0, 3.0);
//     vector b = build_vec(4.0, 5.0, 6.0);
//     
//     printf("向量 a = "); vector_display(a); printf("\n");
//     printf("向量 b = "); vector_display(b); printf("\n");
//     
//     vector c = vector_add(a, b);
//     printf("a + b = "); vector_display(c); printf("\n");
//     
//     vector d = vector_sub(a, b);
//     printf("a - b = "); vector_display(d); printf("\n");
//     
//     double dot = vector_dot(a, b);
//     printf("a · b = %.6f\n", dot);
//     
//     vector cross = vector_cross(a, b);
//     printf("a × b = "); vector_display(cross); printf("\n");
//     
//     printf("|a| = %.6f\n", vector_mod(a));
//     
//     vector normalized = vector_normalize(a);
//     printf("a 的单位向量 = "); vector_display(normalized); printf("\n");
//     
//     return 0;
// }