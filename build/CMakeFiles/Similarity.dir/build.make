# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.27.7/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.27.7/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/sverdlovvova/kis/kis

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/sverdlovvova/kis/kis/build

# Include any dependencies generated for this target.
include CMakeFiles/Similarity.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Similarity.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Similarity.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Similarity.dir/flags.make

CMakeFiles/Similarity.dir/main.cpp.o: CMakeFiles/Similarity.dir/flags.make
CMakeFiles/Similarity.dir/main.cpp.o: /Users/sverdlovvova/kis/kis/main.cpp
CMakeFiles/Similarity.dir/main.cpp.o: CMakeFiles/Similarity.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sverdlovvova/kis/kis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Similarity.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Similarity.dir/main.cpp.o -MF CMakeFiles/Similarity.dir/main.cpp.o.d -o CMakeFiles/Similarity.dir/main.cpp.o -c /Users/sverdlovvova/kis/kis/main.cpp

CMakeFiles/Similarity.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Similarity.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sverdlovvova/kis/kis/main.cpp > CMakeFiles/Similarity.dir/main.cpp.i

CMakeFiles/Similarity.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Similarity.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sverdlovvova/kis/kis/main.cpp -o CMakeFiles/Similarity.dir/main.cpp.s

CMakeFiles/Similarity.dir/similarity.cpp.o: CMakeFiles/Similarity.dir/flags.make
CMakeFiles/Similarity.dir/similarity.cpp.o: /Users/sverdlovvova/kis/kis/similarity.cpp
CMakeFiles/Similarity.dir/similarity.cpp.o: CMakeFiles/Similarity.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sverdlovvova/kis/kis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Similarity.dir/similarity.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Similarity.dir/similarity.cpp.o -MF CMakeFiles/Similarity.dir/similarity.cpp.o.d -o CMakeFiles/Similarity.dir/similarity.cpp.o -c /Users/sverdlovvova/kis/kis/similarity.cpp

CMakeFiles/Similarity.dir/similarity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Similarity.dir/similarity.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sverdlovvova/kis/kis/similarity.cpp > CMakeFiles/Similarity.dir/similarity.cpp.i

CMakeFiles/Similarity.dir/similarity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Similarity.dir/similarity.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sverdlovvova/kis/kis/similarity.cpp -o CMakeFiles/Similarity.dir/similarity.cpp.s

# Object files for target Similarity
Similarity_OBJECTS = \
"CMakeFiles/Similarity.dir/main.cpp.o" \
"CMakeFiles/Similarity.dir/similarity.cpp.o"

# External object files for target Similarity
Similarity_EXTERNAL_OBJECTS =

Similarity: CMakeFiles/Similarity.dir/main.cpp.o
Similarity: CMakeFiles/Similarity.dir/similarity.cpp.o
Similarity: CMakeFiles/Similarity.dir/build.make
Similarity: CMakeFiles/Similarity.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/sverdlovvova/kis/kis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Similarity"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Similarity.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Similarity.dir/build: Similarity
.PHONY : CMakeFiles/Similarity.dir/build

CMakeFiles/Similarity.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Similarity.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Similarity.dir/clean

CMakeFiles/Similarity.dir/depend:
	cd /Users/sverdlovvova/kis/kis/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sverdlovvova/kis/kis /Users/sverdlovvova/kis/kis /Users/sverdlovvova/kis/kis/build /Users/sverdlovvova/kis/kis/build /Users/sverdlovvova/kis/kis/build/CMakeFiles/Similarity.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Similarity.dir/depend

