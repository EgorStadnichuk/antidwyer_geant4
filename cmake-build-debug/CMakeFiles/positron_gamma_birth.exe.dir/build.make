# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/npm-geant/clion-2017.1.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/npm-geant/clion-2017.1.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/npm-geant/CLionProjects/antidwyer_geant4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/npm-geant/CLionProjects/antidwyer_geant4/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/positron_gamma_birth.exe.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/positron_gamma_birth.exe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/positron_gamma_birth.exe.dir/flags.make

CMakeFiles/positron_gamma_birth.exe.dir/main.cc.o: CMakeFiles/positron_gamma_birth.exe.dir/flags.make
CMakeFiles/positron_gamma_birth.exe.dir/main.cc.o: ../main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/npm-geant/CLionProjects/antidwyer_geant4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/positron_gamma_birth.exe.dir/main.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/positron_gamma_birth.exe.dir/main.cc.o -c /home/npm-geant/CLionProjects/antidwyer_geant4/main.cc

CMakeFiles/positron_gamma_birth.exe.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/positron_gamma_birth.exe.dir/main.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/npm-geant/CLionProjects/antidwyer_geant4/main.cc > CMakeFiles/positron_gamma_birth.exe.dir/main.cc.i

CMakeFiles/positron_gamma_birth.exe.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/positron_gamma_birth.exe.dir/main.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/npm-geant/CLionProjects/antidwyer_geant4/main.cc -o CMakeFiles/positron_gamma_birth.exe.dir/main.cc.s

CMakeFiles/positron_gamma_birth.exe.dir/main.cc.o.requires:

.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/main.cc.o.requires

CMakeFiles/positron_gamma_birth.exe.dir/main.cc.o.provides: CMakeFiles/positron_gamma_birth.exe.dir/main.cc.o.requires
	$(MAKE) -f CMakeFiles/positron_gamma_birth.exe.dir/build.make CMakeFiles/positron_gamma_birth.exe.dir/main.cc.o.provides.build
.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/main.cc.o.provides

CMakeFiles/positron_gamma_birth.exe.dir/main.cc.o.provides.build: CMakeFiles/positron_gamma_birth.exe.dir/main.cc.o


CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.o: CMakeFiles/positron_gamma_birth.exe.dir/flags.make
CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.o: ../src/ActionInitialization.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/npm-geant/CLionProjects/antidwyer_geant4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.o -c /home/npm-geant/CLionProjects/antidwyer_geant4/src/ActionInitialization.cc

CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/npm-geant/CLionProjects/antidwyer_geant4/src/ActionInitialization.cc > CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.i

CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/npm-geant/CLionProjects/antidwyer_geant4/src/ActionInitialization.cc -o CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.s

CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.o.requires:

.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.o.requires

CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.o.provides: CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.o.requires
	$(MAKE) -f CMakeFiles/positron_gamma_birth.exe.dir/build.make CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.o.provides.build
.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.o.provides

CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.o.provides.build: CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.o


CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.o: CMakeFiles/positron_gamma_birth.exe.dir/flags.make
CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.o: ../src/DetectorConstruction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/npm-geant/CLionProjects/antidwyer_geant4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.o -c /home/npm-geant/CLionProjects/antidwyer_geant4/src/DetectorConstruction.cc

CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/npm-geant/CLionProjects/antidwyer_geant4/src/DetectorConstruction.cc > CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.i

CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/npm-geant/CLionProjects/antidwyer_geant4/src/DetectorConstruction.cc -o CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.s

CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.o.requires:

.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.o.requires

CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.o.provides: CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.o.requires
	$(MAKE) -f CMakeFiles/positron_gamma_birth.exe.dir/build.make CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.o.provides.build
.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.o.provides

CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.o.provides.build: CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.o


CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.o: CMakeFiles/positron_gamma_birth.exe.dir/flags.make
CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.o: ../src/GeneralParticleSource.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/npm-geant/CLionProjects/antidwyer_geant4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.o -c /home/npm-geant/CLionProjects/antidwyer_geant4/src/GeneralParticleSource.cc

CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/npm-geant/CLionProjects/antidwyer_geant4/src/GeneralParticleSource.cc > CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.i

CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/npm-geant/CLionProjects/antidwyer_geant4/src/GeneralParticleSource.cc -o CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.s

CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.o.requires:

.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.o.requires

CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.o.provides: CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.o.requires
	$(MAKE) -f CMakeFiles/positron_gamma_birth.exe.dir/build.make CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.o.provides.build
.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.o.provides

CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.o.provides.build: CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.o


CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.o: CMakeFiles/positron_gamma_birth.exe.dir/flags.make
CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.o: ../src/InputParser.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/npm-geant/CLionProjects/antidwyer_geant4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.o -c /home/npm-geant/CLionProjects/antidwyer_geant4/src/InputParser.cc

CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/npm-geant/CLionProjects/antidwyer_geant4/src/InputParser.cc > CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.i

CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/npm-geant/CLionProjects/antidwyer_geant4/src/InputParser.cc -o CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.s

CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.o.requires:

.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.o.requires

CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.o.provides: CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.o.requires
	$(MAKE) -f CMakeFiles/positron_gamma_birth.exe.dir/build.make CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.o.provides.build
.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.o.provides

CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.o.provides.build: CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.o


CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.o: CMakeFiles/positron_gamma_birth.exe.dir/flags.make
CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.o: ../src/PhysicsList.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/npm-geant/CLionProjects/antidwyer_geant4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.o -c /home/npm-geant/CLionProjects/antidwyer_geant4/src/PhysicsList.cc

CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/npm-geant/CLionProjects/antidwyer_geant4/src/PhysicsList.cc > CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.i

CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/npm-geant/CLionProjects/antidwyer_geant4/src/PhysicsList.cc -o CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.s

CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.o.requires:

.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.o.requires

CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.o.provides: CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.o.requires
	$(MAKE) -f CMakeFiles/positron_gamma_birth.exe.dir/build.make CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.o.provides.build
.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.o.provides

CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.o.provides.build: CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.o


CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.o: CMakeFiles/positron_gamma_birth.exe.dir/flags.make
CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.o: ../src/SensitiveDetector.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/npm-geant/CLionProjects/antidwyer_geant4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.o -c /home/npm-geant/CLionProjects/antidwyer_geant4/src/SensitiveDetector.cc

CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/npm-geant/CLionProjects/antidwyer_geant4/src/SensitiveDetector.cc > CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.i

CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/npm-geant/CLionProjects/antidwyer_geant4/src/SensitiveDetector.cc -o CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.s

CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.o.requires:

.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.o.requires

CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.o.provides: CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.o.requires
	$(MAKE) -f CMakeFiles/positron_gamma_birth.exe.dir/build.make CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.o.provides.build
.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.o.provides

CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.o.provides.build: CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.o


CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.o: CMakeFiles/positron_gamma_birth.exe.dir/flags.make
CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.o: ../src/TrackingAction.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/npm-geant/CLionProjects/antidwyer_geant4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.o -c /home/npm-geant/CLionProjects/antidwyer_geant4/src/TrackingAction.cpp

CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/npm-geant/CLionProjects/antidwyer_geant4/src/TrackingAction.cpp > CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.i

CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/npm-geant/CLionProjects/antidwyer_geant4/src/TrackingAction.cpp -o CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.s

CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.o.requires:

.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.o.requires

CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.o.provides: CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.o.requires
	$(MAKE) -f CMakeFiles/positron_gamma_birth.exe.dir/build.make CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.o.provides.build
.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.o.provides

CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.o.provides.build: CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.o


CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.o: CMakeFiles/positron_gamma_birth.exe.dir/flags.make
CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.o: ../src/StackingAction.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/npm-geant/CLionProjects/antidwyer_geant4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.o -c /home/npm-geant/CLionProjects/antidwyer_geant4/src/StackingAction.cpp

CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/npm-geant/CLionProjects/antidwyer_geant4/src/StackingAction.cpp > CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.i

CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/npm-geant/CLionProjects/antidwyer_geant4/src/StackingAction.cpp -o CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.s

CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.o.requires:

.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.o.requires

CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.o.provides: CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.o.requires
	$(MAKE) -f CMakeFiles/positron_gamma_birth.exe.dir/build.make CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.o.provides.build
.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.o.provides

CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.o.provides.build: CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.o


# Object files for target positron_gamma_birth.exe
positron_gamma_birth_exe_OBJECTS = \
"CMakeFiles/positron_gamma_birth.exe.dir/main.cc.o" \
"CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.o" \
"CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.o" \
"CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.o" \
"CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.o" \
"CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.o" \
"CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.o" \
"CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.o" \
"CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.o"

# External object files for target positron_gamma_birth.exe
positron_gamma_birth_exe_EXTERNAL_OBJECTS =

positron_gamma_birth.exe: CMakeFiles/positron_gamma_birth.exe.dir/main.cc.o
positron_gamma_birth.exe: CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.o
positron_gamma_birth.exe: CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.o
positron_gamma_birth.exe: CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.o
positron_gamma_birth.exe: CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.o
positron_gamma_birth.exe: CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.o
positron_gamma_birth.exe: CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.o
positron_gamma_birth.exe: CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.o
positron_gamma_birth.exe: CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.o
positron_gamma_birth.exe: CMakeFiles/positron_gamma_birth.exe.dir/build.make
positron_gamma_birth.exe: /usr/local/lib/libG4Tree.so
positron_gamma_birth.exe: /usr/local/lib/libG4GMocren.so
positron_gamma_birth.exe: /usr/local/lib/libG4visHepRep.so
positron_gamma_birth.exe: /usr/local/lib/libG4RayTracer.so
positron_gamma_birth.exe: /usr/local/lib/libG4VRML.so
positron_gamma_birth.exe: /usr/local/lib/libG4OpenGL.so
positron_gamma_birth.exe: /usr/local/lib/libG4gl2ps.so
positron_gamma_birth.exe: /usr/local/lib/libG4interfaces.so
positron_gamma_birth.exe: /usr/local/lib/libG4persistency.so
positron_gamma_birth.exe: /usr/local/lib/libG4analysis.so
positron_gamma_birth.exe: /usr/local/lib/libG4error_propagation.so
positron_gamma_birth.exe: /usr/local/lib/libG4readout.so
positron_gamma_birth.exe: /usr/local/lib/libG4physicslists.so
positron_gamma_birth.exe: /usr/local/lib/libG4parmodels.so
positron_gamma_birth.exe: /usr/local/lib/libG4FR.so
positron_gamma_birth.exe: /usr/local/lib/libG4vis_management.so
positron_gamma_birth.exe: /usr/local/lib/libG4modeling.so
positron_gamma_birth.exe: /usr/lib/x86_64-linux-gnu/libSM.so
positron_gamma_birth.exe: /usr/lib/x86_64-linux-gnu/libICE.so
positron_gamma_birth.exe: /usr/lib/x86_64-linux-gnu/libX11.so
positron_gamma_birth.exe: /usr/lib/x86_64-linux-gnu/libXext.so
positron_gamma_birth.exe: /usr/lib/x86_64-linux-gnu/libGLU.so
positron_gamma_birth.exe: /usr/lib/x86_64-linux-gnu/libGL.so
positron_gamma_birth.exe: /usr/lib/x86_64-linux-gnu/libXmu.so
positron_gamma_birth.exe: /usr/lib/x86_64-linux-gnu/libQtOpenGL.so
positron_gamma_birth.exe: /usr/lib/x86_64-linux-gnu/libQtGui.so
positron_gamma_birth.exe: /usr/lib/x86_64-linux-gnu/libQtCore.so
positron_gamma_birth.exe: /usr/lib/x86_64-linux-gnu/libxerces-c.so
positron_gamma_birth.exe: /usr/local/lib/libG4run.so
positron_gamma_birth.exe: /usr/local/lib/libG4event.so
positron_gamma_birth.exe: /usr/local/lib/libG4tracking.so
positron_gamma_birth.exe: /usr/local/lib/libG4processes.so
positron_gamma_birth.exe: /usr/local/lib/libG4zlib.so
positron_gamma_birth.exe: /usr/lib/x86_64-linux-gnu/libexpat.so
positron_gamma_birth.exe: /usr/local/lib/libG4digits_hits.so
positron_gamma_birth.exe: /usr/local/lib/libG4track.so
positron_gamma_birth.exe: /usr/local/lib/libG4particles.so
positron_gamma_birth.exe: /usr/local/lib/libG4geometry.so
positron_gamma_birth.exe: /usr/local/lib/libG4materials.so
positron_gamma_birth.exe: /usr/local/lib/libG4graphics_reps.so
positron_gamma_birth.exe: /usr/local/lib/libG4intercoms.so
positron_gamma_birth.exe: /usr/local/lib/libG4global.so
positron_gamma_birth.exe: /usr/local/lib/libG4clhep.so
positron_gamma_birth.exe: CMakeFiles/positron_gamma_birth.exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/npm-geant/CLionProjects/antidwyer_geant4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable positron_gamma_birth.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/positron_gamma_birth.exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/positron_gamma_birth.exe.dir/build: positron_gamma_birth.exe

.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/build

CMakeFiles/positron_gamma_birth.exe.dir/requires: CMakeFiles/positron_gamma_birth.exe.dir/main.cc.o.requires
CMakeFiles/positron_gamma_birth.exe.dir/requires: CMakeFiles/positron_gamma_birth.exe.dir/src/ActionInitialization.cc.o.requires
CMakeFiles/positron_gamma_birth.exe.dir/requires: CMakeFiles/positron_gamma_birth.exe.dir/src/DetectorConstruction.cc.o.requires
CMakeFiles/positron_gamma_birth.exe.dir/requires: CMakeFiles/positron_gamma_birth.exe.dir/src/GeneralParticleSource.cc.o.requires
CMakeFiles/positron_gamma_birth.exe.dir/requires: CMakeFiles/positron_gamma_birth.exe.dir/src/InputParser.cc.o.requires
CMakeFiles/positron_gamma_birth.exe.dir/requires: CMakeFiles/positron_gamma_birth.exe.dir/src/PhysicsList.cc.o.requires
CMakeFiles/positron_gamma_birth.exe.dir/requires: CMakeFiles/positron_gamma_birth.exe.dir/src/SensitiveDetector.cc.o.requires
CMakeFiles/positron_gamma_birth.exe.dir/requires: CMakeFiles/positron_gamma_birth.exe.dir/src/TrackingAction.cpp.o.requires
CMakeFiles/positron_gamma_birth.exe.dir/requires: CMakeFiles/positron_gamma_birth.exe.dir/src/StackingAction.cpp.o.requires

.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/requires

CMakeFiles/positron_gamma_birth.exe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/positron_gamma_birth.exe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/clean

CMakeFiles/positron_gamma_birth.exe.dir/depend:
	cd /home/npm-geant/CLionProjects/antidwyer_geant4/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/npm-geant/CLionProjects/antidwyer_geant4 /home/npm-geant/CLionProjects/antidwyer_geant4 /home/npm-geant/CLionProjects/antidwyer_geant4/cmake-build-debug /home/npm-geant/CLionProjects/antidwyer_geant4/cmake-build-debug /home/npm-geant/CLionProjects/antidwyer_geant4/cmake-build-debug/CMakeFiles/positron_gamma_birth.exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/positron_gamma_birth.exe.dir/depend

