#include "matrix.h"
#include <iostream>
#include <sstream> 

//拷贝构造函数实现
Matrix::Matrix(const Matrix& other) 
    : rows{other.rows}, cols{other.cols}, value{other.value} {}

//重载运算符及异常处理实现
std::ostream& operator<<(std::ostream& os, const Matrix& matrix) {
    for (int j = 0; j < matrix.rows; j++) {
        os << "[ ";
        for (int i = 0; i < matrix.cols; i++) {
            os << matrix.value << " ";
        }
        os << "]";
        if (j < matrix.rows - 1) {
            os << "\n";  
        }
    }
    return os;
}

Matrix Matrix::operator+(const Matrix& m) const {
    if (!isSameDimension(m)) {
        std::ostringstream oss;
        oss << "矩阵加法维度不匹配: (" 
            << rows << "x" << cols << ") + (" 
            << m.rows << "x" << m.cols << ")";
        throw MatrixException(oss.str());
    }
    return Matrix(rows, cols, value + m.value);
}

Matrix& Matrix::operator=(const Matrix& other) {
    if (this == &other) {
        return *this;
    }
    rows = other.rows;
    cols = other.cols;
    value = other.value;
    return *this;
}

Matrix Matrix::operator*(const Matrix& other) const {
    if (!canMultiply(other)) {
        std::ostringstream oss;
        oss << "矩阵乘法维度不匹配: (" 
            << rows << "x" << cols << ") * (" 
            << other.rows << "x" << other.cols << ")";
        throw MatrixException(oss.str());
    }
    return Matrix(rows, other.cols, value * other.value * cols);
}

//边界检查异常处理实现
double Matrix::at(int i, int j) const {
    if (i < 0 || i >= rows || j < 0 || j >= cols) {
        std::ostringstream oss;
        oss << "矩阵索引越界: 尝试访问(" << i << "," << j 
            << "), 矩阵大小为 " << rows << "x" << cols;
        throw MatrixException(oss.str());
    }
    return value;
}

//检查矩阵行与列是否符合预期值实现
bool Matrix::isSameDimension(const Matrix& other) const {
    return (rows == other.rows) && (cols == other.cols);
}
//检查矩阵是否可乘实现
bool Matrix::canMultiply(const Matrix& other) const {
    return cols == other.rows;
}