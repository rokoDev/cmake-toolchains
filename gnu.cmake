set(CPP_COMPILER_OPTIONS_LIST 
	-std=c++17
	-Wshadow
	-pedantic-errors
	-Wall
	-Wextra
	-Wconversion
	-Wsign-conversion
	-Wold-style-cast
	-Wcast-align
	)
string (REPLACE ";" " " CPP_COMPILER_OPTIONS "${CPP_COMPILER_OPTIONS_LIST}")
set(CMAKE_CXX_FLAGS_INIT ${CPP_COMPILER_OPTIONS})