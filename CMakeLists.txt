cmake_minimum_required(VERSION 3.10)
project(RayTracing)

set(SOURCES
    src/main.cpp
    src/engine.cpp
    src/subEngine.cpp
    src/data.cpp
)

set(HEADERS
    include/engine.h
    include/subEngine.h
)

include_directories(include)
add_executable(RayTracing ${SOURCES} ${HEADERS})

find_package(SFML 2.5 REQUIRED graphics audio)
find_package(OpenGL REQUIRED)
target_link_libraries(RayTracing PRIVATE sfml-graphics sfml-audio OpenGL::GL)
