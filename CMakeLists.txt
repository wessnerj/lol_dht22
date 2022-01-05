cmake_minimum_required(VERSION 3.2)
project(dht22 LANGUAGES C)

# Find dependencies
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")
find_package(WiringPi REQUIRED)

# Set compile flags
SET(CMAKE_C_FLAGS "-Wall -Wno-long-long -Wextra -Winline -Wno-format-truncation -pipe -fPIC" CACHE STRING "compile flags" FORCE)
SET(CMAKE_C_FLAGS_DEBUG "-O0 -g")
SET(CMAKE_C_FLAGS_RELEASE "-O2")

# Get all source files
file(GLOB DHT22_SRCS "*.c")

# Add executable
add_executable(dht22 ${DHT22_SRCS})
message("WiringPi_INCLUDE_DIR: ${WiringPi_INCLUDE_DIR}")
target_include_directories(dht22 PRIVATE ${WiringPi_INCLUDE_DIR})
target_link_libraries(dht22
        ${WiringPi_LIBRARY}
        crypt
        pthread
        m
        rt)

# Install to bin/
install (TARGETS dht22
         RUNTIME DESTINATION "bin")
