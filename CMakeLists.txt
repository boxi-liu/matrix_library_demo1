cmake_minimum_required(VERSION 3.10)
project(MatrixProject LANGUAGES CXX)

# 设置C++标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# 设置可执行文件输出目录
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin)

# 包含头文件目录
# include_directories(include)

# 添加可执行文件
add_executable(matrix_project
    src/main.cpp
    src/matrix.cpp
)

target_include_directories(matrix_project PUBLIC include)

# 设置目标属性

# 可选：安装规则
install(TARGETS matrix_project
    DESTINATION EXECUTABLE_OUTPUT_PATH
)

install(DIRECTORY include/
    DESTINATION include
)