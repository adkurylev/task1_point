# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.1.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.1.3\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Shurka\Desktop\C++\HSE\task1_point

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Shurka\Desktop\C++\HSE\task1_point\cmake-build-debug

# Include any dependencies generated for this target.
include src/CMakeFiles/xipoint_main.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/xipoint_main.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/xipoint_main.dir/flags.make

src/CMakeFiles/xipoint_main.dir/main.cpp.obj: src/CMakeFiles/xipoint_main.dir/flags.make
src/CMakeFiles/xipoint_main.dir/main.cpp.obj: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Shurka\Desktop\C++\HSE\task1_point\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/xipoint_main.dir/main.cpp.obj"
	cd /d C:\Users\Shurka\Desktop\C++\HSE\task1_point\cmake-build-debug\src && C:\MinGW\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\xipoint_main.dir\main.cpp.obj -c C:\Users\Shurka\Desktop\C++\HSE\task1_point\src\main.cpp

src/CMakeFiles/xipoint_main.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xipoint_main.dir/main.cpp.i"
	cd /d C:\Users\Shurka\Desktop\C++\HSE\task1_point\cmake-build-debug\src && C:\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Shurka\Desktop\C++\HSE\task1_point\src\main.cpp > CMakeFiles\xipoint_main.dir\main.cpp.i

src/CMakeFiles/xipoint_main.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xipoint_main.dir/main.cpp.s"
	cd /d C:\Users\Shurka\Desktop\C++\HSE\task1_point\cmake-build-debug\src && C:\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Shurka\Desktop\C++\HSE\task1_point\src\main.cpp -o CMakeFiles\xipoint_main.dir\main.cpp.s

src/CMakeFiles/xipoint_main.dir/xipoint.cpp.obj: src/CMakeFiles/xipoint_main.dir/flags.make
src/CMakeFiles/xipoint_main.dir/xipoint.cpp.obj: ../src/xipoint.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Shurka\Desktop\C++\HSE\task1_point\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/xipoint_main.dir/xipoint.cpp.obj"
	cd /d C:\Users\Shurka\Desktop\C++\HSE\task1_point\cmake-build-debug\src && C:\MinGW\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\xipoint_main.dir\xipoint.cpp.obj -c C:\Users\Shurka\Desktop\C++\HSE\task1_point\src\xipoint.cpp

src/CMakeFiles/xipoint_main.dir/xipoint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xipoint_main.dir/xipoint.cpp.i"
	cd /d C:\Users\Shurka\Desktop\C++\HSE\task1_point\cmake-build-debug\src && C:\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Shurka\Desktop\C++\HSE\task1_point\src\xipoint.cpp > CMakeFiles\xipoint_main.dir\xipoint.cpp.i

src/CMakeFiles/xipoint_main.dir/xipoint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xipoint_main.dir/xipoint.cpp.s"
	cd /d C:\Users\Shurka\Desktop\C++\HSE\task1_point\cmake-build-debug\src && C:\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Shurka\Desktop\C++\HSE\task1_point\src\xipoint.cpp -o CMakeFiles\xipoint_main.dir\xipoint.cpp.s

# Object files for target xipoint_main
xipoint_main_OBJECTS = \
"CMakeFiles/xipoint_main.dir/main.cpp.obj" \
"CMakeFiles/xipoint_main.dir/xipoint.cpp.obj"

# External object files for target xipoint_main
xipoint_main_EXTERNAL_OBJECTS =

src/xipoint_main.exe: src/CMakeFiles/xipoint_main.dir/main.cpp.obj
src/xipoint_main.exe: src/CMakeFiles/xipoint_main.dir/xipoint.cpp.obj
src/xipoint_main.exe: src/CMakeFiles/xipoint_main.dir/build.make
src/xipoint_main.exe: src/CMakeFiles/xipoint_main.dir/linklibs.rsp
src/xipoint_main.exe: src/CMakeFiles/xipoint_main.dir/objects1.rsp
src/xipoint_main.exe: src/CMakeFiles/xipoint_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Shurka\Desktop\C++\HSE\task1_point\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable xipoint_main.exe"
	cd /d C:\Users\Shurka\Desktop\C++\HSE\task1_point\cmake-build-debug\src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\xipoint_main.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/xipoint_main.dir/build: src/xipoint_main.exe

.PHONY : src/CMakeFiles/xipoint_main.dir/build

src/CMakeFiles/xipoint_main.dir/clean:
	cd /d C:\Users\Shurka\Desktop\C++\HSE\task1_point\cmake-build-debug\src && $(CMAKE_COMMAND) -P CMakeFiles\xipoint_main.dir\cmake_clean.cmake
.PHONY : src/CMakeFiles/xipoint_main.dir/clean

src/CMakeFiles/xipoint_main.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Shurka\Desktop\C++\HSE\task1_point C:\Users\Shurka\Desktop\C++\HSE\task1_point\src C:\Users\Shurka\Desktop\C++\HSE\task1_point\cmake-build-debug C:\Users\Shurka\Desktop\C++\HSE\task1_point\cmake-build-debug\src C:\Users\Shurka\Desktop\C++\HSE\task1_point\cmake-build-debug\src\CMakeFiles\xipoint_main.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/xipoint_main.dir/depend

