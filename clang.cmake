set(CPP_COMPILER_OPTIONS_LIST
	-std=c++17
	-Wshadow-all
	-Winvalid-constexpr
	-Werror
	-pedantic-errors
	-Wall
	-Wextra
	-Wconversion
	-Wsign-conversion
	-Wunreachable-code
	-Wuninitialized
	-Wold-style-cast
	-Wcast-align
	-fno-exceptions
	-fno-rtti)
string(REPLACE ";" " " CPP_COMPILER_OPTIONS "${CPP_COMPILER_OPTIONS_LIST}")

set(CMAKE_CXX_FLAGS_INIT ${CPP_COMPILER_OPTIONS})