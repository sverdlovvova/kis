cmake_minimum_required(VERSION 3.10)
project(Similarity)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(Similarity main.cpp similarity.cpp)

target_include_directories(Similarity PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
