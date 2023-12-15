set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR $ENV{ARCH})

# which C and C++ compiler to use
set(CMAKE_C_COMPILER                $ENV{CC})
set(CMAKE_CXX_COMPILER              $ENV{CXX})
set(CMAKE_RANLIB                    $ENV{RANLIB})

# location of the target environment
set(CMAKE_SYSROOT $ENV{HOME}/sysroot)

# set rules used by find_program, find_library, find_path and find_file to find stuff on target environment
set(CMAKE_FIND_ROOT_PATH ${CMAKE_SYSROOT})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(CPP_COMPILER_OPTIONS "-std=c++17 -Wshadow -pedantic-errors -Wall -Wextra -Wconversion -Wsign-conversion -Wold-style-cast -Wfloat-equal -Wcast-align -fno-rtti")
set(CMAKE_CXX_FLAGS_INIT ${CPP_COMPILER_OPTIONS})

# setup docker container "test-host" which can emulate target architecture for using by "ctest" command
set(exec_in_container docker exec -it test-host bash -c)
set(CMAKE_CROSSCOMPILING_EMULATOR "${exec_in_container}")