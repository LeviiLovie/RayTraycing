cmake_minimum_required(VERSION 3.10)
project(RayTracing)

set(SOURCES
    src/main.cpp
    src/engine.cpp
    src/shapes.cpp
)
set(HEADERS
    include/engine.h
    include/shapes.h
)

include_directories(${CMAKE_SOURCE_DIR}/include)
add_executable(RayTracing ${SOURCES} ${HEADERS})

find_package(SFML 2.5 REQUIRED graphics audio)
target_link_libraries(RayTracing PRIVATE sfml-graphics sfml-audio)
