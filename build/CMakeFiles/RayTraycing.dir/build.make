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
include CMakeFiles/RayTraycing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/RayTraycing.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/RayTraycing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RayTraycing.dir/flags.make

CMakeFiles/RayTraycing.dir/main.cpp.o: CMakeFiles/RayTraycing.dir/flags.make
CMakeFiles/RayTraycing.dir/main.cpp.o: /Users/leo/Documents/GitHub/RayTraycing/main.cpp
CMakeFiles/RayTraycing.dir/main.cpp.o: CMakeFiles/RayTraycing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/leo/Documents/GitHub/RayTraycing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RayTraycing.dir/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RayTraycing.dir/main.cpp.o -MF CMakeFiles/RayTraycing.dir/main.cpp.o.d -o CMakeFiles/RayTraycing.dir/main.cpp.o -c /Users/leo/Documents/GitHub/RayTraycing/main.cpp

CMakeFiles/RayTraycing.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RayTraycing.dir/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/leo/Documents/GitHub/RayTraycing/main.cpp > CMakeFiles/RayTraycing.dir/main.cpp.i

CMakeFiles/RayTraycing.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RayTraycing.dir/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/leo/Documents/GitHub/RayTraycing/main.cpp -o CMakeFiles/RayTraycing.dir/main.cpp.s

CMakeFiles/RayTraycing.dir/engine.cpp.o: CMakeFiles/RayTraycing.dir/flags.make
CMakeFiles/RayTraycing.dir/engine.cpp.o: /Users/leo/Documents/GitHub/RayTraycing/engine.cpp
CMakeFiles/RayTraycing.dir/engine.cpp.o: CMakeFiles/RayTraycing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/leo/Documents/GitHub/RayTraycing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/RayTraycing.dir/engine.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RayTraycing.dir/engine.cpp.o -MF CMakeFiles/RayTraycing.dir/engine.cpp.o.d -o CMakeFiles/RayTraycing.dir/engine.cpp.o -c /Users/leo/Documents/GitHub/RayTraycing/engine.cpp

CMakeFiles/RayTraycing.dir/engine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RayTraycing.dir/engine.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/leo/Documents/GitHub/RayTraycing/engine.cpp > CMakeFiles/RayTraycing.dir/engine.cpp.i

CMakeFiles/RayTraycing.dir/engine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RayTraycing.dir/engine.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/leo/Documents/GitHub/RayTraycing/engine.cpp -o CMakeFiles/RayTraycing.dir/engine.cpp.s

# Object files for target RayTraycing
RayTraycing_OBJECTS = \
"CMakeFiles/RayTraycing.dir/main.cpp.o" \
"CMakeFiles/RayTraycing.dir/engine.cpp.o"

# External object files for target RayTraycing
RayTraycing_EXTERNAL_OBJECTS =

RayTraycing: CMakeFiles/RayTraycing.dir/main.cpp.o
RayTraycing: CMakeFiles/RayTraycing.dir/engine.cpp.o
RayTraycing: CMakeFiles/RayTraycing.dir/build.make
RayTraycing: /usr/local/lib/libsfml-graphics.2.5.1.dylib
RayTraycing: /usr/local/lib/libsfml-audio.2.5.1.dylib
RayTraycing: /usr/local/lib/libsfml-window.2.5.1.dylib
RayTraycing: /usr/local/lib/libsfml-system.2.5.1.dylib
RayTraycing: CMakeFiles/RayTraycing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/leo/Documents/GitHub/RayTraycing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable RayTraycing"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RayTraycing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RayTraycing.dir/build: RayTraycing
.PHONY : CMakeFiles/RayTraycing.dir/build

CMakeFiles/RayTraycing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RayTraycing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RayTraycing.dir/clean

CMakeFiles/RayTraycing.dir/depend:
	cd /Users/leo/Documents/GitHub/RayTraycing/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/leo/Documents/GitHub/RayTraycing /Users/leo/Documents/GitHub/RayTraycing /Users/leo/Documents/GitHub/RayTraycing/build /Users/leo/Documents/GitHub/RayTraycing/build /Users/leo/Documents/GitHub/RayTraycing/build/CMakeFiles/RayTraycing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RayTraycing.dir/depend

