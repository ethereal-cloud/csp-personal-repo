#include <iostream>  // 验证头文件包含
using namespace std;

#define MAX_FIB 20   // 验证无参数宏：定义斐波那契数列最大项数
#define SQUARE(x) ((x) * (x))  // 验证带参数宏展开

#ifdef DEBUG  // 验证条件编译：通过-DDEBUG控制调试日志
#define LOG(msg) cout << "[DEBUG] " << msg << endl
#else
#define LOG(msg)
#endif

const int GLOBAL_CONST = 5;  // 全局常量
int global_var = 10;         // 全局变量

int main() {
    int a = 0, b = 1, i = 1, n;
    cout << "请输入斐波那契项数（1-" << MAX_FIB << "）：";  
    cin >> n;

    // 用MAX_FIB限制最大项数
    if (n <= 0) {
        LOG("输入项数无效，默认输出5项");  
        n = 5;
    } else if (n > MAX_FIB) {  
        LOG("项数超过最大值" << MAX_FIB << "，截断为" << MAX_FIB);  
        n = MAX_FIB;
    }

    // 输出前两项
    cout << "第" << i << "项：" << a << endl;
    global_var++;  // 更新全局变量
    if (n > 1) {
        i++;
        cout << "第" << i << "项：" << b << endl;
        LOG("已输出前2项，全局变量当前值：" << global_var);  
    }

    LOG("开始计算后续斐波那契项（共" << n << "项）");  

    while (i < n) {  
        int t = b;
        b = a + b;
        a = t;
        i++;
        cout << "第" << i << "项：" << b << endl;
        global_var++;

        // 带参数宏SQUARE实际调用
        int square_b = SQUARE(b);
        LOG("第" << i << "项值：" << b << "，其平方：" << square_b);  
    }

    LOG("斐波那契数列输出完成，全局变量最终值：" << global_var);  
    return 0;
}