#ifndef COMPLEX_H
#define COMPLEX_H

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

#define Pi 3.1415926535

// 复数结构体
typedef struct {
    double real;
    double imag;
} complex;

// 使用 static inline 避免重复定义

// 基本复数操作函数
static inline complex complex_create(double real, double imag) {
    complex z;
    z.real = real;
    z.imag = imag;
    return z;
}

static inline complex complex_create_zero(void) {
    return complex_create(0.0, 0.0);
}

static inline complex complex_create_real(double x) {
    return complex_create(x, 0.0);
}

static inline double complex_real(complex z) {
    return z.real;
}

static inline double complex_imag(complex z) {
    return z.imag;
}

static inline double complex_amp(complex z) {
    return sqrt(z.real * z.real + z.imag * z.imag);
}

static inline double complex_phs(complex z) {
    if (z.real == 0.0 && z.imag == 0.0)
        return 0.0;
    else
        return atan2(z.imag, z.real);
}

static inline void complex_display(complex z) {
    printf("(%.6f,%.6f)", z.real, z.imag);
}

// 复数运算函数
static inline complex complex_conj(complex z) {
    return complex_create(z.real, -z.imag);
}

static inline complex complex_neg(complex z) {
    return complex_create(-z.real, -z.imag);
}

static inline complex complex_add(complex a, complex b) {
    return complex_create(a.real + b.real, a.imag + b.imag);
}

static inline complex complex_add_real(complex a, double b) {
    return complex_create(a.real + b, a.imag);
}

static inline complex complex_add_real_first(double a, complex b) {
    return complex_create(a + b.real, b.imag);
}

static inline complex complex_sub(complex a, complex b) {
    return complex_create(a.real - b.real, a.imag - b.imag);
}

static inline complex complex_sub_real(complex a, double b) {
    return complex_create(a.real - b, a.imag);
}

static inline complex complex_sub_real_first(double a, complex b) {
    return complex_create(a - b.real, -b.imag);
}

static inline complex complex_mul(complex a, complex b) {
    return complex_create(a.real * b.real - a.imag * b.imag, 
                         a.real * b.imag + a.imag * b.real);
}

static inline complex complex_mul_real(complex a, double b) {
    return complex_create(a.real * b, a.imag * b);
}

static inline complex complex_mul_real_first(double a, complex b) {
    return complex_create(a * b.real, a * b.imag);
}

static inline complex complex_div_real(complex a, double b) {
    if (b == 0) {
        return complex_create_zero();
    } else {
        return complex_create(a.real / b, a.imag / b);
    }
}

static inline complex complex_div(complex a, complex b) {
    double amp = complex_amp(b);
    if (amp == 0) {
        return complex_create_zero();
    } else {
        complex conj_b = complex_conj(b);
        complex numerator = complex_mul(a, conj_b);
        return complex_div_real(numerator, amp * amp);
    }
}

static inline complex complex_div_real_first(double a, complex b) {
    double amp = complex_amp(b);
    if (amp == 0) {
        return complex_create_zero();
    } else {
        complex conj_b = complex_conj(b);
        complex numerator = complex_mul_real_first(a, conj_b);
        return complex_div_real(numerator, amp * amp);
    }
}

// 创建复数的辅助函数
static inline complex complex_point(double x, double y) {
    return complex_create(x, y);
}

static inline complex complex_pole(double a, double fi) {
    return complex_create(a * cos(fi), a * sin(fi));
}

// FFT 相关函数也使用 static inline
static inline void FFT(complex* x, int nu, int type) {
    int N, i, j, k;
    int length, length1, ip;
    double theta;
    complex W, Wn, xw, temp;

    N = 1;
    for (i = 0; i < nu; i++) {
        N = N * 2;
    }
  
    // 位反转
    j = 1;
    for (i = 1; i < N; i++) {
        if (i < j) {
            temp = x[j-1];
            x[j-1] = x[i-1];
            x[i-1] = temp;
        }
        k = N / 2;
        while (k < j) {
            j = j - k;
            k = k / 2;
        }
        j = j + k;
    }

    // FFT计算
    for (k = 0; k < nu; k++) {
        length = 1;
        for (i = 0; i <= k; i++) {
            length = length * 2;
        }
        length1 = length / 2;
        theta = Pi / length1;
        W = complex_pole(1, type * theta);
        Wn = complex_point(1, 0);
        
        for (j = 0; j < length1; j++) {
            for (i = j; i < N; i += length) {
                ip = i + length1;
                xw = complex_mul(x[ip], Wn);
                x[ip] = complex_sub(x[i], xw);
                temp = complex_add(x[i], xw);
                x[i] = temp;
            }
            temp = complex_mul(Wn, W);
            Wn = temp;
        }
    }
    
    // 逆变换需要归一化
    if (type == 1) {
        for (i = 0; i < N; i++) {
            x[i] = complex_div_real(x[i], N);
        }
    }
}

static inline void FFT_r(complex** x, int na, int nr, int type) {
    int i, a;
    a = 1;
    for (i = 0; i < na; i++)
        a = a * 2;
    for (i = 0; i < a; i++)
        FFT(x[i], nr, type);
}

static inline void FFT_a(complex** x, int na, int nr, int type) {
    int i, j, a, r;
    complex* temp;
    a = 1; r = 1;
    
    for (i = 0; i < na; i++)
        a = a * 2;
    for (i = 0; i < nr; i++)
        r = r * 2;
        
    temp = (complex*)malloc(a * sizeof(complex));
    for (i = 0; i < r; i++) {
        for (j = 0; j < a; j++)
            temp[j] = x[j][i];
        FFT(temp, na, type);
        for (j = 0; j < a; j++)
            x[j][i] = temp[j];
    }
    free(temp);
}

static inline void FFT_ar(complex** x, int na, int nr, int type) {
    FFT_r(x, na, nr, type);
    FFT_a(x, na, nr, type);
}

static inline complex** create_complex_2d_array(int rows, int cols) {
    complex** arr = (complex**)malloc(rows * sizeof(complex*));
    for (int i = 0; i < rows; i++) {
        arr[i] = (complex*)malloc(cols * sizeof(complex));
        // 可选：初始化为0
        for (int j = 0; j < cols; j++) {
            arr[i][j] = complex_create(0.0, 0.0);
        }
    }
    return arr;
}

static inline void free_complex_2d_array(complex** arr, int rows) {
    for (int i = 0; i < rows; i++) {
        free(arr[i]);
    }
    free(arr);
}

#endif