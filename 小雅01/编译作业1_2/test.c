#include <stdio.h>

int main() {
    int i;
    float sum, avg;
    float arr[3];  

    i = 0;
    sum = 0.0f;
    while (i < 3) {
        scanf("%f", &arr[i]);
        sum = sum + arr[i];
        i = i + 1;
    }

    avg = sum / 3.0f;
    printf("Average: ");  // 直接使用字符串常量，替代全局变量
    printf("%.6f", avg);
    printf("\n");

    return 0;
}
