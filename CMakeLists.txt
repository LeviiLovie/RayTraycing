# cmake_minimum_required(VERSION 3.0.0)
# project(RayTraycing VERSION 0.1.0)

# include(CTest)
# enable_testing()

# list(APPEND CMAKE_PREFIX_PATH "C:/SFML-2.5.1")
# find_package(SFML 2.5 COMPONENTS graphics audio REQUIRED)

# add_executable(RayTraycing main.cpp engine.cpp)
# include_directories(include)
# target_link_libraries(RayTraycing PRIVATE sfml-graphics sfml-audio)

# set(CPACK_PROJECT_NAME ${PROJECT_NAME})
# set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
# include(CPack)

cmake_minimum_required(VERSION 3.10)
project(RayTracing)

# Add the source files
set(SOURCES
    main.cpp
    engine.cpp
)

# Add the header files
set(HEADERS
    engine.h
)

# Add the include directories
include_directories(include)

# Add the executable
add_executable(RayTracing ${SOURCES} ${HEADERS})

# Find the SFML libraries
find_package(SFML 2.5 REQUIRED graphics audio)

# Link against the SFML libraries
target_link_libraries(RayTracing PRIVATE sfml-graphics sfml-audio)
