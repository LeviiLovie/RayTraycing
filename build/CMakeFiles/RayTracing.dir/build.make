# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.25.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.25.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/leo/Documents/GitHub/RayTraycing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/leo/Documents/GitHub/RayTraycing/build

# Include any dependencies generated for this target.
include CMakeFiles/RayTracing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/RayTracing.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/RayTracing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RayTracing.dir/flags.make

CMakeFiles/RayTracing.dir/src/main.cpp.o: CMakeFiles/RayTracing.dir/flags.make
CMakeFiles/RayTracing.dir/src/main.cpp.o: /Users/leo/Documents/GitHub/RayTraycing/src/main.cpp
CMakeFiles/RayTracing.dir/src/main.cpp.o: CMakeFiles/RayTracing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/leo/Documents/GitHub/RayTraycing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RayTracing.dir/src/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RayTracing.dir/src/main.cpp.o -MF CMakeFiles/RayTracing.dir/src/main.cpp.o.d -o CMakeFiles/RayTracing.dir/src/main.cpp.o -c /Users/leo/Documents/GitHub/RayTraycing/src/main.cpp

CMakeFiles/RayTracing.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RayTracing.dir/src/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/leo/Documents/GitHub/RayTraycing/src/main.cpp > CMakeFiles/RayTracing.dir/src/main.cpp.i

CMakeFiles/RayTracing.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RayTracing.dir/src/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/leo/Documents/GitHub/RayTraycing/src/main.cpp -o CMakeFiles/RayTracing.dir/src/main.cpp.s

CMakeFiles/RayTracing.dir/src/engine.cpp.o: CMakeFiles/RayTracing.dir/flags.make
CMakeFiles/RayTracing.dir/src/engine.cpp.o: /Users/leo/Documents/GitHub/RayTraycing/src/engine.cpp
CMakeFiles/RayTracing.dir/src/engine.cpp.o: CMakeFiles/RayTracing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/leo/Documents/GitHub/RayTraycing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/RayTracing.dir/src/engine.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RayTracing.dir/src/engine.cpp.o -MF CMakeFiles/RayTracing.dir/src/engine.cpp.o.d -o CMakeFiles/RayTracing.dir/src/engine.cpp.o -c /Users/leo/Documents/GitHub/RayTraycing/src/engine.cpp

CMakeFiles/RayTracing.dir/src/engine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RayTracing.dir/src/engine.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/leo/Documents/GitHub/RayTraycing/src/engine.cpp > CMakeFiles/RayTracing.dir/src/engine.cpp.i

CMakeFiles/RayTracing.dir/src/engine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RayTracing.dir/src/engine.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/leo/Documents/GitHub/RayTraycing/src/engine.cpp -o CMakeFiles/RayTracing.dir/src/engine.cpp.s

# Object files for target RayTracing
RayTracing_OBJECTS = \
"CMakeFiles/RayTracing.dir/src/main.cpp.o" \
"CMakeFiles/RayTracing.dir/src/engine.cpp.o"

# External object files for target RayTracing
RayTracing_EXTERNAL_OBJECTS =

RayTracing: CMakeFiles/RayTracing.dir/src/main.cpp.o
RayTracing: CMakeFiles/RayTracing.dir/src/engine.cpp.o
RayTracing: CMakeFiles/RayTracing.dir/build.make
RayTracing: /usr/local/lib/libsfml-graphics.2.5.1.dylib
RayTracing: /usr/local/lib/libsfml-audio.2.5.1.dylib
RayTracing: /usr/local/lib/libsfml-window.2.5.1.dylib
RayTracing: /usr/local/lib/libsfml-system.2.5.1.dylib
RayTracing: CMakeFiles/RayTracing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/leo/Documents/GitHub/RayTraycing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable RayTracing"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RayTracing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RayTracing.dir/build: RayTracing
.PHONY : CMakeFiles/RayTracing.dir/build

CMakeFiles/RayTracing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RayTracing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RayTracing.dir/clean

CMakeFiles/RayTracing.dir/depend:
	cd /Users/leo/Documents/GitHub/RayTraycing/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/leo/Documents/GitHub/RayTraycing /Users/leo/Documents/GitHub/RayTraycing /Users/leo/Documents/GitHub/RayTraycing/build /Users/leo/Documents/GitHub/RayTraycing/build /Users/leo/Documents/GitHub/RayTraycing/build/CMakeFiles/RayTracing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RayTracing.dir/depend

