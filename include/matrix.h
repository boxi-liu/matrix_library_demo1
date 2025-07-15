#include <iostream>
#include <vector>
#include <stdexcept> 
#include <string>   

class Matrix {
private:  
    int rows, cols;
    double value;

public:
    //构造函数系列
    Matrix(int r, int c, double v) : rows{r}, cols{c}, value{v} {}
    Matrix(int r, int c) : rows{r}, cols{c}, value{0} {}
    Matrix() : rows{0}, cols{0}, value{0} {}
    Matrix(const std::vector<std::vector<double>>& vec);
    Matrix(const Matrix& other);
    //查询    
    int getRows() const { return rows; }
    int getCols() const { return cols; }
    double getValue() const { return value; }
    //边界检查
    double at(int i, int j) const ;
    //工具函数
    bool isSameDimension(const Matrix& other) const ;
    bool canMultiply(const Matrix& other) const ;
    //重载运算符
    friend std::ostream& operator<<(std::ostream& os, const Matrix& matrix);
    Matrix operator+(const Matrix& m) const;
    Matrix& operator=(const Matrix& other);
    Matrix operator*(const Matrix& other) const;
};

//异常处理
class MatrixException : public std::exception {
private:
    std::string message;
public:
    MatrixException(const std::string& msg) : message(msg) {}
    virtual const char* what() const noexcept override {
        return message.c_str();
    }
};