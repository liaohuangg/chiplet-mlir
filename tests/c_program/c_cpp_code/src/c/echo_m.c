#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "complex.h"
#include "vector.h"

// 系统参数
#define lamda 0.0175        // 载波波长，单位m
#define Vlight 3e8          // 光速，单位m/s
#define Tr 5.0              // 脉冲长度，单位us
#define Kr 12.0             // 调频频率，单位MHz/us
#define Fr 100.0            // 采样频率，单位MHz
#define PRF 2000.0          // 脉冲重复频率，单位Hz
#define Vradar 1770.0       // 平台速度，单位m/s
#define H 18000.0           // 平台高度，单位m
#define R0 (18000*sqrt(2))  // 参考斜距 18000*sqrt(2)

#define seta (60*Pi/180)    // 下视斜视角

// 目标大小
#define Np_X 5
#define Np_Y 5

// 图像大小
#define Na 2048
#define Nr 2048
#define pwra 11
#define pwrr 11

// 雷达窗口函数
double radar_win(vector P_radar, vector P_obj) {
    vector va = build_vec(sqrt(2)*tan(seta), -1, 0);
    vector P_shadow = build_vec(vector_getX(P_radar), vector_getY(P_radar), 0);
    vector temp;
    double d;
    
    temp = vector_sub(P_obj, P_shadow);
    d = vector_dot(temp, va) / vector_mod(va);
    
    if(d > 106.0 || d < -106.0)
        return 0.0;
    else 
        return 1.0;
}

// 矩形窗函数
double window(double L, double t) {
    if(t > L/2 || t < -L/2) 
        return 0.0;
    else 
        return 1.0;
}

// 距离计算函数
double R_distance(vector a, vector b) {
    vector z = vector_sub(a, b);
    return vector_mod(z);
}

// 回波信号生成函数
complex S0(double tao, vector P_radar, vector P_obj) {
    complex s;
    double distance = R_distance(P_radar, P_obj);
    double time_diff = tao - 2 * distance * 1e6 / Vlight;
    
    // 距离窗
    double win_val = window(Tr, time_diff);
    
    // 相位项1：距离导致的相位
    complex phase1 = complex_pole(1, -4 * Pi * distance / lamda);
    
    // 相位项2：调频导致的相位
    complex phase2 = complex_pole(1, Pi * Kr * time_diff * time_diff);
    
    // 合成信号
    s = complex_mul_real(complex_mul(phase1, phase2), win_val);
    return s;
}

int main() {
    vector P_obj[Np_Y][Np_X];      // 目标位置数组
    vector P_radar;                // 雷达位置
    double tao0, radar_Y0;         // 雷达开始接收回波时间 & 平台起始位置的Y坐标
    complex **echo;
    FILE *fo;
    double tao;
    int i, j, ki, kj;

    // 计算初始参数
    tao0 = 2 * R0 * 1e6 / cos(seta) / Vlight - Nr/2/Fr;
    radar_Y0 = -Na * Vradar / PRF / 2;

    // 初始化目标位置
    for(i = 0; i < Np_Y; i++) {
        for(j = 0; j < Np_X; j++) {
            P_obj[i][j] = build_vec(H + (j - Np_X/2) * 75.0, 
                                   R0 * tan(seta) + (i - Np_Y/2) * 75.0, 
                                   0.0);
        }
    }

    // 分配回波信号内存
    echo = create_complex_2d_array(Na, Nr);

    // 生成回波信号
    for(i = 0; i < Na; i++) {
        // 更新雷达位置
        vector base_pos = build_vec(0.0, radar_Y0, H);
        vector move_vec = build_vec(0.0, i * Vradar / PRF, 0.0);
        P_radar = vector_add(base_pos, move_vec);
        
        for(j = 0; j < Nr; j++) {
            tao = tao0 + j / Fr;
            echo[Na-1-i][j] = complex_create_zero();
            
            // 累加所有目标的回波
            for(ki = 0; ki < Np_Y; ki++) {
                for(kj = 0; kj < Np_X; kj++) {
                    double win_factor = radar_win(P_radar, P_obj[ki][kj]);
                    complex target_echo = S0(tao, P_radar, P_obj[ki][kj]);
                    complex scaled_echo = complex_mul_real(target_echo, win_factor);
                    echo[Na-1-i][j] = complex_add(echo[Na-1-i][j], scaled_echo);
                }
            }
        }
        
        // 显示进度
        if(i % 100 == 0) {
            printf("Processing: %d/%d\n", i, Na);
        }
    }

    // 保存回波数据到文件
    fo = fopen("echo_m60.txt", "w");
    if (fo == NULL) {
        printf("Error: Cannot open file echo_m60.txt\n");
        free_complex_2d_array(echo, Na);
        return -1;
    }
    
    for(i = 0; i < Na; i++) {
        for(j = 0; j < Nr; j++) {
            fprintf(fo, "%.6f %.6f ", 
                   complex_real(echo[i][j]), 
                   complex_imag(echo[i][j]));
        }
        fprintf(fo, "\n");
    }
    fclose(fo);
    
    printf("Echo data saved to echo_m60.txt\n");
    
    // 释放内存
    free_complex_2d_array(echo, Na);
    
    return 0;
}