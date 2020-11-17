# Find the assembler
find_program(
    CMAKE_VASM_COMPILER 
        NAMES "vasmm68k_mot"
        HINTS "${CMAKE_SOURCE_DIR}"
        DOC "VASM assembler" 
)

mark_as_advanced( CMAKE_VASM_COMPILER )

set( CMAKE_VASM_SOURCE_FILE_EXTENSIONS asm;s )
set( CMAKE_VASM_OUTPUT_EXTENSION .o )
set( CMAKE_VASM_COMPILER_ENV_VAR "FOO" )

# Configure variables set in this file for fast reload later on
configure_file( ${CMAKE_CURRENT_LIST_DIR}/CMakeVASMCompiler.cmake.in
                ${CMAKE_PLATFORM_INFO_DIR}/CMakeVASMCompiler.cmake )