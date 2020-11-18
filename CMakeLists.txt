cmake_minimum_required( VERSION 3.13 FATAL_ERROR )

# Give the project a name
project( amiga-project-template
    VERSION 0.1.0
    DESCRIPTION "A simple project template for programming in assembly for Amiga machines." )

# Add the VASM module to CMake
list( APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake" )

# Tell CMake this is a VASM project. The target executable will be the final ROM
# that will be built. 
enable_language( VASM )
add_executable( ${PROJECT_NAME} "" )
target_compile_options( ${PROJECT_NAME} 
    PRIVATE -Fvobj )
target_link_options( ${PROJECT_NAME} 
    PRIVATE -s -S -b amigahunk )
add_subdirectory( src )

### Use this if you need to copy data that isn't directly built into the ROM.
# Copy game assets
# add_custom_target(
#     copy-assets ALL
#     COMMENT "Copying assets"
#     COMMAND ${CMAKE_COMMAND} -E copy_directory
#     ${CMAKE_CURRENT_SOURCE_DIR}/assets ${CMAKE_BINARY_DIR}/assets )
