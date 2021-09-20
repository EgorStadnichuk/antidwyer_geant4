CMAKE_MINIMUM_REQUIRED(VERSION 2.6 FATAL_ERROR)

PROJECT(seed)

set(Geant4_DIR /home/npm/GEANT4/install/)

FIND_PACKAGE(Geant4 REQUIRED ui_all)

IF (NOT Geant4_FOUND)
    MESSAGE(FATAL_ERROR "Geant4 not found!")
ENDIF (NOT Geant4_FOUND)

INCLUDE(${Geant4_USE_FILE})

INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR}/include)
#  ${CMAKE_CURRENT_BINARY_DIR})

FILE(GLOB sources ${PROJECT_SOURCE_DIR}/src/*.cc)
FILE(GLOB headers ${PROJECT_SOURCE_DIR}/include/*.hh)

ADD_EXECUTABLE(positron_gamma_birth.exe main.cc ${sources} ${headers} src/TrackingAction.cpp include/TrackingAction.h src/StackingAction.cpp include/StackingAction.h)
TARGET_LINK_LIBRARIES(positron_gamma_birth.exe ${Geant4_LIBRARIES})






