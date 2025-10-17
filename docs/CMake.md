# CMake Cheat Sheet

## Overview

CMake is a cross-platform build system generator.
It creates platform-specific build files (like Makefiles) from simple configuration files (CMakeLists.txt).

## Building

```bash
mkdir build && cd build              # Create separate build directory
cmake ..                             # Generate Makefiles from CMakeLists.txt
make                                 # Build project using generated Makefile
./main                               # Run resulting binary

```

## Basic CMakeLists.txt Example

```cmake
cmake_minimum_required(VERSION 3.10) # Require minimum CMake version
project(MyProject C)                 # Define project name and language (C)

set(CMAKE_C_STANDARD 11)             # Set C standard to C11
set(CMAKE_C_FLAGS "-Wall -Wextra -g") # Add compiler flags

add_executable(main main.c utils.c)  # Build executable from these source files
```

## Common commands

```bash
cmake --version                      # Show version info
cmake .                              # Generate build files in current directory
cmake -S . -B build                  # Specify source (-S) and build (-B) directories
cmake --build build                  # Build project (cross-platform)
make VERBOSE=1                       # Show full compile commands
```

## Out-of-Source Build (Best Practice)

```bash
mkdir build                  # Create directory <build>
cd build                     # Enter/locate <build> directory
cmake ..                    
make 
# Keeps your source tree clean — object files and binaries go in build/.
```

## Debug/Release Mode

```bash
cmake -DCMAKE_BUILD_TYPE=Debug ..    # Enable debugging info (-g)
cmake -DCMAKE_BUILD_TYPE=Release ..  # Enable optimizations (-O3)

```

## Include directories & libraries

```cmake
include_directories(include)          # Add include/ directory to header search path
target_link_libraries(main m pthread) # Link math and pthread libraries
```

## Multi file project example

```cmake
cmake_minimum_required(VERSION 3.10)  # Minimum CMake version
project(MyApp C)                      # Project name and language

set(CMAKE_C_STANDARD 11)              # Use C11 standard
set(SRC main.c utils.c serial.c)      # Define source files

add_executable(MyApp ${SRC})          # Create executable target
target_include_directories(MyApp PRIVATE include) # Add include directory
target_link_libraries(MyApp m pthread) # Link libraries

```

## Clean build

```bash
rm -rf build/
mkdir build && cd build && cmake .. && make
```
