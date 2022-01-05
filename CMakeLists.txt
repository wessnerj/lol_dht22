cmake_minimum_required(VERSION 3.2)
project(dht22 LANGUAGES C)

# Set compile flags
SET(CMAKE_C_FLAGS "-Wall -Wno-long-long -Wextra -Winline -Wno-format-truncation -pipe -fPIC" CACHE STRING "compile flags" FORCE)
SET(CMAKE_C_FLAGS_DEBUG "-O0 -g")
SET(CMAKE_C_FLAGS_RELEASE "-O2")

# Get all source files
file(GLOB DHT22_SRCS "*.c")

# Add executable
add_executable(dht22 ${DHT22_SRCS})

# Install to bin/
install (TARGETS dht22
         RUNTIME DESTINATION "bin")
