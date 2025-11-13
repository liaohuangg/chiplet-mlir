#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include "complex.h"

// 枚举类型定义
typedef enum {
    phs_2Pi,    // 0到2Pi之间的相位观察
    dif_4d,     // 以4倍标准差为范围的幅度观察
    db          // 对数形式的幅度观察
} numrize;

// 创建二维double数组
double** create_double_2d_array(int rows, int cols) {
    double** arr = (double**)malloc(rows * sizeof(double*));
    for (int i = 0; i < rows; i++) {
        arr[i] = (double*)malloc(cols * sizeof(double));
    }
    return arr;
}

// 创建二维unsigned char数组
unsigned char** create_uchar_2d_array(int rows, int cols) {
    unsigned char** arr = (unsigned char**)malloc(rows * sizeof(unsigned char*));
    for (int i = 0; i < rows; i++) {
        arr[i] = (unsigned char*)malloc(cols * sizeof(unsigned char));
    }
    return arr;
}

// 释放二维double数组
void free_double_2d_array(double** arr, int rows) {
    for (int i = 0; i < rows; i++) {
        free(arr[i]);
    }
    free(arr);
}

// 释放二维unsigned char数组
void free_uchar_2d_array(unsigned char** arr, int rows) {
    for (int i = 0; i < rows; i++) {
        free(arr[i]);
    }
    free(arr);
}

// 将数据可视化为BMP图像
void showdata(double **data, int a, int r, char *name, numrize numway) {
    // BMP文件头信息
    int bfSize;
    short bfReserved1;
    short bfReserved2;
    int bfOffBytes;

    // BMP信息头信息
    int biSize;
    int biWidth;
    int biHeight;
    short biPlanes;
    short biBitCount;
    int bicompression;
    int biSizeImage;
    int biXPelsPerMeter;
    int biYPelsPerMeter;
    int biClrUsed;
    int biClrColors;  
    
    // 颜色表
    unsigned char bmiRed[256];
    unsigned char bmiGreen[256];
    unsigned char bmiBlue[256];
    unsigned char bmiReserved[256];

    // 中间变量
    int i, j;
    double max, min, mean, d, temp;
    unsigned char **sad;
    FILE *fp;

    // 分配内存
    sad = create_uchar_2d_array(a, r);

    // 数据处理
    switch(numway) {
        case phs_2Pi:
            for (i = 0; i < a; i++) {
                for(j = 0; j < r; j++) {    
                    if(data[i][j] >= 0) {
                        sad[i][j] = (unsigned char)(data[i][j] * 255.0 / (2 * Pi));
                    } else {
                        sad[i][j] = (unsigned char)((2 * Pi + data[i][j]) * 255.0 / (2 * Pi));
                    }
                }
            }
            break;

        case dif_4d:
            mean = 0;
            d = 0;
            for (i = 0; i < a; i++) {
                for(j = 0; j < r; j++) {
                    mean += data[i][j];    
                }
            }
            mean = mean / (a * r);
            
            for (i = 0; i < a; i++) {
                for(j = 0; j < r; j++) {
                    temp = data[i][j] - mean;
                    d += temp * temp;
                }
            }
            d = d / (a * r);
            d = sqrt(d);
            min = mean - 2 * d;
            max = mean + 2 * d;    
            
            if(min < 0) {   
                for(i = 0; i < a; i++) {
                    for (j = 0; j < r; j++) {
                        temp = data[i][j]; 
                        if (temp < max) {
                            sad[i][j] = (unsigned char)(temp / max * 255.0);
                        } else { 
                            sad[i][j] = 255;		  
                        }
                    }
                }
            } else {
                for(i = 0; i < a; i++) {
                    for(j = 0; j < r; j++) {
                        temp = data[i][j];
                        if(temp < min) {
                            sad[i][j] = 0;
                        } else if(temp > max) {
                            sad[i][j] = 255;
                        } else {
                            sad[i][j] = (unsigned char)((temp - min) / (4 * d) * 255.0);				 				 
                        }
                    }
                }
            }
            break;

        case db:
            for(i = 0; i < a; i++) {
                for(j = 0; j < r; j++) {
                    data[i][j] = log(1 + data[i][j]);
                }
            }
            
            max = data[0][0];
            min = 0;
            for (i = 0; i < a; i++) {
                for(j = 0; j < r; j++) {
                    if(data[i][j] > max) {
                        max = data[i][j];
                    }
                }
            }
            
            for(i = 0; i < a; i++) {
                for(j = 0; j < r; j++) {
                    sad[i][j] = (unsigned char)(data[i][j] / max * 255.0);
                }
            }
            break;

        default:
            break;
    }

    // 设置文件头信息
    bfSize = a * r + 1024 + 54;
    bfReserved1 = 0;
    bfReserved2 = 0;
    bfOffBytes = 1024 + 54;

    // 设置信息头信息
    biSize = 40;
    biWidth = r;
    biHeight = a;
    biPlanes = 1;
    biBitCount = 8;
    bicompression = 0;
    biSizeImage = a * r;
    biXPelsPerMeter = 0;      
    biYPelsPerMeter = 0;      
    biClrUsed = 0;
    biClrColors = 0;

    // 设置颜色表（灰度）
    for(i = 0; i < 256; i++) {
        bmiRed[i] = i;
        bmiGreen[i] = i;
        bmiBlue[i] = i;
        bmiReserved[i] = 0;
    }

    // 写入文件
    fp = fopen(name, "wb");
    if (fp == NULL) {
        printf("Error: Cannot open file %s\n", name);
        free_uchar_2d_array(sad, a);
        return;
    }

    // 写入文件头
    fwrite("BM", 1, 2, fp);
    fwrite(&bfSize, 4, 1, fp);
    fwrite(&bfReserved1, 2, 1, fp);
    fwrite(&bfReserved2, 2, 1, fp);
    fwrite(&bfOffBytes, 4, 1, fp);

    // 写入信息头
    fwrite(&biSize, 4, 1, fp);
    fwrite(&biWidth, 4, 1, fp);
    fwrite(&biHeight, 4, 1, fp);
    fwrite(&biPlanes, 2, 1, fp);
    fwrite(&biBitCount, 2, 1, fp);
    fwrite(&bicompression, 4, 1, fp);
    fwrite(&biSizeImage, 4, 1, fp);
    fwrite(&biXPelsPerMeter, 4, 1, fp);
    fwrite(&biYPelsPerMeter, 4, 1, fp);	
    fwrite(&biClrUsed, 4, 1, fp);
    fwrite(&biClrColors, 4, 1, fp);

    // 写入颜色表
    for(i = 0; i < 256; i++) {
        fwrite(&bmiRed[i], 1, 1, fp);
        fwrite(&bmiGreen[i], 1, 1, fp);
        fwrite(&bmiBlue[i], 1, 1, fp);
        fwrite(&bmiReserved[i], 1, 1, fp);
    }

    // 写入像素数据
    for (i = 0; i < a; i++) {
        fwrite(sad[i], 1, r, fp);
    }
        
    fclose(fp);
    free_uchar_2d_array(sad, a);
}

// 观察复数幅度（dif_4d格式）
void showamp(complex** x, int a, int r, char* name) {
    double** data;
    int i, j;
    
    data = create_double_2d_array(a, r);
    for(i = 0; i < a; i++) {
        for(j = 0; j < r; j++) {
            data[i][j] = complex_amp(x[i][j]);
        }
    }
    
    showdata(data, a, r, name, dif_4d);
    free_double_2d_array(data, a);
}

// 观察复数幅度（db格式）
void showamp_db(complex** x, int a, int r, char* name) {
    double** data;
    int i, j;
    
    data = create_double_2d_array(a, r);
    for(i = 0; i < a; i++) {
        for(j = 0; j < r; j++) {
            data[i][j] = complex_amp(x[i][j]);
        }
    }
    
    showdata(data, a, r, name, db);
    free_double_2d_array(data, a);
}

// 观察复数相位
void showphs(complex** x, int a, int r, char* name) {
    double** data;
    int i, j;
    
    data = create_double_2d_array(a, r);
    for(i = 0; i < a; i++) {
        for(j = 0; j < r; j++) {
            data[i][j] = complex_phs(x[i][j]);
        }
    }
    
    showdata(data, a, r, name, phs_2Pi);
    free_double_2d_array(data, a);
}

// 输出某行的幅度到文本文件
void rowoutamp(complex** x, int p, int l, char* name) {	
    int i;
    FILE *fp = fopen(name, "w");
    if (fp == NULL) {
        printf("Error: Cannot open file %s\n", name);
        return;
    }
    
    for(i = 0; i < l; i++) {
        fprintf(fp, "%f\n", complex_amp(x[p][i]));
    }
    fclose(fp);
}

// 输出某行的幅度（db格式）到文本文件
void rowoutamp_db(complex** x, int p, int l, char* name) {	
    int i;
    double temp;
    FILE *fp = fopen(name, "w");
    if (fp == NULL) {
        printf("Error: Cannot open file %s\n", name);
        return;
    }
    
    for(i = 0; i < l; i++) {
        temp = complex_amp(x[p][i]);
        temp = 20 * log10(temp);
        fprintf(fp, "%f\n", temp);
    }
    fclose(fp);
}

// 输出某行的相位到文本文件
void rowoutphs(complex** x, int p, int l, char* name) {	
    int i;
    FILE *fp = fopen(name, "w");
    if (fp == NULL) {
        printf("Error: Cannot open file %s\n", name);
        return;
    }
    
    for(i = 0; i < l; i++) {
        fprintf(fp, "%f\n", complex_phs(x[p][i]));
    }
    fclose(fp);
}

// 输出某列的幅度到文本文件
void lineoutamp(complex** x, int p, int l, char* name) {	
    int i;
    FILE *fp = fopen(name, "w");
    if (fp == NULL) {
        printf("Error: Cannot open file %s\n", name);
        return;
    }
    
    for(i = 0; i < l; i++) {
        fprintf(fp, "%f\n", complex_amp(x[i][p]));
    }
    fclose(fp);
}

// 输出某列的幅度（db格式）到文本文件
void lineoutamp_db(complex** x, int p, int l, char* name) {	
    int i;
    double temp;
    FILE *fp = fopen(name, "w");
    if (fp == NULL) {
        printf("Error: Cannot open file %s\n", name);
        return;
    }
    
    for(i = 0; i < l; i++) {
        temp = complex_amp(x[i][p]);
        temp = 20 * log10(temp);
        fprintf(fp, "%f\n", temp);
    }
    fclose(fp);
}

// 输出某列的相位到文本文件
void lineoutphs(complex** x, int p, int l, char* name) {	
    int i;
    FILE *fp = fopen(name, "w");
    if (fp == NULL) {
        printf("Error: Cannot open file %s\n", name);
        return;
    }
    
    for(i = 0; i < l; i++) {
        fprintf(fp, "%f\n", complex_phs(x[i][p]));
    }
    fclose(fp);
}

// 输出复数数据到二进制文件
void compout(complex** x, int a, int r, char* name) {
    int i, j;
    float* temp;
    FILE *fp;
    
    temp = (float*)malloc(2 * r * sizeof(float));
    fp = fopen(name, "wb");
    if (fp == NULL) {
        printf("Error: Cannot open file %s\n", name);
        free(temp);
        return;
    }
    
    for(i = 0; i < a; i++) {
        for(j = 0; j < r; j++) {
            temp[2 * j] = (float)complex_imag(x[i][j]);
            temp[2 * j + 1] = (float)complex_real(x[i][j]);
        }
        fwrite(temp, sizeof(float), 2 * r, fp);
    }
    
    fclose(fp);
    free(temp);
}