#include <iostream>
#include "matrix.h"

int main() {
    try {
        Matrix m1(2, 3, 1.00);
        Matrix m2(2, 3, 2.00);
        
        std::cout << "=== 测试矩阵创建 ===" << std::endl;
        std::cout << "m1 (" << m1.getRows() << "x" << m1.getCols() 
                  << ", 全" << m1.getValue() << "):" << std::endl;
        std::cout << "矩阵 " << m1.getRows() << "x" << m1.getCols() << std::endl;
        std::cout << m1 << std::endl;  
        
        std::cout << "\nm2 (" << m2.getRows() << "x" << m2.getCols() 
                  << ", 全" << m2.getValue() << "):" << std::endl;
        std::cout << "矩阵 " << m2.getRows() << "x" << m2.getCols() << std::endl;
        std::cout << m2 << std::endl;  

        Matrix m1_modified(2, 2, m1.getValue());
        Matrix m2_modified(2, 2, m2.getValue());
        
        std::cout << "=== 测试矩阵加法 ===" << std::endl;
        std::cout << "m1:" << std::endl;
        std::cout << "矩阵 " << m1_modified.getRows() << "x" << m1_modified.getCols() << std::endl;
        std::cout << m1_modified << "\n" << std::endl;

        std::cout << "m2:" << std::endl;
        std::cout << "矩阵 " << m2_modified.getRows() << "x" << m2_modified.getCols() << std::endl;
        std::cout << m2_modified << "\n" << std::endl;

        std::cout << "m1 + m2:" << std::endl;
        std::cout << "矩阵 " << m1.getRows() << "x" << m1.getCols() << std::endl;
        std::cout << m1+m2 <<"\n"<< std::endl;

        //错误处理演示
        Matrix m3(3,3,3.00);
        std::cout << "=== 测试矩阵加法异常 ===" << std::endl;
        std::cout << "m1:" << std::endl;
        std::cout << "矩阵 " << m1_modified.getRows() << "x" << m1_modified.getCols() << std::endl;
        std::cout << m1_modified << "\n" << std::endl;

        std::cout << "m3:" << std::endl;
        std::cout << "矩阵 " << m3.getRows() << "x" << m3.getCols() << std::endl;
        std::cout << m3 << "\n" << std::endl;
        std::cout << "m1 + m3:" << std::endl;
        std::cout << "矩阵 " << m1.getRows() << "x" << m1.getCols() << std::endl;
        std::cout << m1+m3 <<"\n"<< std::endl;

        
    } catch (const MatrixException& e) {
        std::cerr << "\n错误: " << e.what() << std::endl;
    }

    return 0;
}