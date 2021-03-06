# How to build objects 
set( CMAKE_VASM_COMPILE_OBJECT
    "<CMAKE_VASM_COMPILER> <FLAGS> -o <OBJECT> <SOURCE>"
)

# How to build executables 
set( CMAKE_VASM_LINK_EXECUTABLE 
    "vlink <LINK_FLAGS> -o <TARGET> <OBJECTS>"
)


set( CMAKE_Gambit_INFORMATION_LOADED 1 )


# CMAKE_(LANG)_CREATE_SHARED_LIBRARY
# CMAKE_(LANG)_CREATE_SHARED_MODULE
# CMAKE_(LANG)_CREATE_STATIC_LIBRARY
# CMAKE_(LANG)_COMPILE_OBJECT
# CMAKE_(LANG)_LINK_EXECUTABLE