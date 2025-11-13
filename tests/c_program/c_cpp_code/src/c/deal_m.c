#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "complex.h"
#include "vector.h"
#include "watch.h"

// 系统参数
#define lamda 0.0175
#define Vlight 3e8
#define Tr 5.0
#define Kr 12.0
#define Fr 100.0
#define PRF 2000.0
#define Vradar 1770.0
#define H 18000.0
#define R0 (18000*sqrt(2))

#define seta (60*Pi/180)

// 图像大小
#define Na 2048
#define Nr 2048
#define pwra 11
#define pwrr 11

// 函数声明
double D(double fa);
double Km(double d, double fa);
double fai3(double d, double fa, double fr);
double cs(double tao, double fa, double fa_c);
double sinseta(double d);

// 距离徙动因子
double D(double fa) {
    double z;
    z = fa * fa * lamda * lamda / (4 * Vradar * Vradar);
    z = 1 - z;
    z = sqrt(z);
    return z;
}

// 目标方位调频率
double Km(double d, double fa) {
    double z;
    z = lamda * lamda * lamda * d * fa * fa;
    z = z / (2 * Vradar * Vradar * D(fa) * D(fa) * D(fa));
    z = Kr * 1e12 * z / (Vlight * Vlight);
    z = Kr / (1 - z);
    return z;
}

// 三次相位补偿
double fai3(double d, double fa, double fr) {
    double z, a;
    z = Pi * d * fa * fa * pow(lamda, 4);
    a = D(fa);
    a = 2 * pow(a, 5) * Vradar * Vradar * 27e6;
    z = z / a * pow(fr, 3);
    return z;
}

// CS变换相位
double cs(double tao, double fa, double fa_c) {
    double z;
    z = Pi * Km(tao * Vlight * cos(seta) / 2 / 1e6, fa) * (D(fa_c) / D(fa) - 1) * 
        (tao - 2 * R0 * 1e6 / Vlight / D(fa)) * (tao - 2 * R0 * 1e6 / Vlight / D(fa));
    return z;
}

// 计算斜视角sin值
double sinseta(double d) {
    double zs, zm;
    zs = sqrt(d * d - H * H) * tan(seta);
    zm = sqrt(d * d / 2 + (d * d - H * H) * tan(seta) * tan(seta));
    zs = zs / zm;
    return zs;
}

int main() {
    // 读取回波数据
    int i, j;
    complex **echo;
    FILE *fi;

    // 分配内存
    echo = create_complex_2d_array(Na, Nr);

    // 读取回波文件
    fi = fopen("echo_m60.txt", "r");
    if (fi == NULL) {
        printf("Error: Cannot open file echo_m60.txt\n");
        return -1;
    }
    
    for(i = 0; i < Na; i++) {
        for(j = 0; j < Nr; j++) {
            double real, imag;
            if (fscanf(fi, "%lf %lf", &real, &imag) != 2) {
                printf("Error reading data at (%d, %d)\n", i, j);
                fclose(fi);
                free_complex_2d_array(echo, Na);
                return -1;
            }
            echo[i][j] = complex_create(real, imag);
        }
    }
    fclose(fi);
    
    printf("Echo data loaded successfully.\n");

    // 成像处理参数
    double fa_mov, fr_mov, fa_c, fr, fa, tao, tao0, yita_c, R;
    tao0 = 2 * R0 * 1e6 / cos(seta) / Vlight - Nr / 2 / Fr;

    // 频移校正
    fa_c = -2 * Vradar * sin(seta) / lamda;
    fr_mov = Fr / 2;
    fa_mov = fa_c;
    
    while(fa_mov < 0)
        fa_mov += PRF;
    fa_mov = (fa_mov > PRF/2) ? (3 * PRF/2 - fa_mov) : (PRF/2 - fa_mov);

    // 频移补偿
    for(i = 0; i < Na; i++) {
        for(j = 0; j < Nr; j++) {
            complex phase1 = complex_pole(1.0, 2 * Pi * fa_mov * i / PRF);
            complex phase2 = complex_pole(1.0, 2 * Pi * fr_mov * j / Fr);
            echo[i][j] = complex_mul(echo[i][j], phase1);
            echo[i][j] = complex_mul(echo[i][j], phase2);
        }
    }

    printf("Frequency shift compensation completed.\n");

    // 二维FFT
    FFT_ar(echo, pwra, pwrr, -1);
    printf("2D FFT completed.\n");

    // 三次相位补偿
    for(i = 0; i < Na; i++) {
        fa = (i - Na/2) * PRF / Na + fa_c;
        for(j = 0; j < Nr; j++) {
            fr = (j - Nr/2) * Fr / Nr;
            complex phase = complex_pole(1, fai3(R0, fa, fr));
            echo[i][j] = complex_mul(echo[i][j], phase);
        }
    }
    printf("Cubic phase compensation completed.\n");

    // 距离向IFFT
    FFT_r(echo, pwra, pwrr, 1);
    printf("Range IFFT completed.\n");

    // CS变换
    for(i = 0; i < Na; i++) {
        fa = (i - Na/2) * PRF / Na + fa_c;
        for(j = 0; j < Nr; j++) {
            tao = tao0 + j / Fr;
            complex phase = complex_pole(1, cs(tao, fa, fa_c));
            echo[i][j] = complex_mul(echo[i][j], phase);
        }
    }
    printf("CS transformation completed.\n");

    // 距离向FFT
    FFT_r(echo, pwra, pwrr, -1);
    printf("Range FFT completed.\n");

    // 二次相位补偿
    for(i = 0; i < Na; i++) {
        fa = (i - Na/2) * PRF / Na + fa_c;
        for(j = 0; j < Nr; j++) {
            fr = (j - Nr/2) * Fr / Nr;
            complex phase1 = complex_pole(1, Pi * D(fa) * fr * fr / (Km(R0, fa) * D(fa_c)));
            complex phase2 = complex_pole(1, 4 * Pi * R0 * fr * 1e6 * (1/D(fa) - 1/D(fa_c)) / Vlight);
            echo[i][j] = complex_mul(echo[i][j], complex_mul(phase1, phase2));
        }
    }
    printf("Secondary phase compensation completed.\n");

    // 距离向IFFT
    FFT_r(echo, pwra, pwrr, 1);
    printf("Range IFFT completed.\n");

    // 相位压缩
    yita_c = R0 * tan(seta) / Vradar;
    for(i = 0; i < Na; i++) {
        fa = (i - Na/2) * PRF / Na + fa_c;
        for(j = 0; j < Nr; j++) {
            tao = tao0 + j / Fr;
            R = tao * Vlight * cos(seta) / 2 / 1e6;
            
            complex phase1 = complex_pole(1, 4 * Pi * R * (D(fa) - D(fa_c)) / lamda);
            complex phase2 = complex_pole(1, -2 * Pi * yita_c * fa);
            complex phase3 = complex_pole(1, -4 * Pi * Km(R0, fa) * 1e12 / (Vlight * Vlight * D(fa) * D(fa)) * (R - R0) * (R - R0));
            complex phase4 = complex_pole(1, 4 * Pi * Km(R0, fa) * 1e12 / (Vlight * Vlight * D(fa) * D(fa_c)) * (R - R0) * (R - R0));
            
            complex total_phase = complex_mul(phase1, complex_mul(phase2, complex_mul(phase3, phase4)));
            echo[i][j] = complex_mul(echo[i][j], total_phase);
        }
    }
    printf("Phase compression completed.\n");

    // 方位向IFFT
    FFT_a(echo, pwra, pwrr, 1);
    printf("Azimuth IFFT completed.\n");

    // 显示和保存结果
    showamp_db(echo, Na, Nr, "final_m60.bmp");
    
    // 最终相位调整
    for(i = 0; i < Na; i++) {
        for(j = 0; j < Nr; j++) {
            complex phase1 = complex_pole(1, Pi * i);
            complex phase2 = complex_pole(1, Pi * j);
            echo[i][j] = complex_mul(echo[i][j], complex_mul(phase1, phase2));
        }
    }

    compout(echo, Na, Nr, "Image_m60.dat");
    printf("SAR image processing completed. Results saved.\n");
    
    // 释放内存
    free_complex_2d_array(echo, Na);
    
    return 0;
}