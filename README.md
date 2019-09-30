# Simple Amiga Project Template

This is a simple project template for assembly programming projects for cross-developing for Commodore Amiga computers. You'll need [make][3], [vasm][1], and [vlink][2] installed for it to work.

The example code in this repository is taken from Tuomas Järvensivu's [repository][4], which in turn is part of his [excellent introduction to programming the Amiga][5].

There is one key difference though: I prefer to assemble files into object files first and link them into an executable in a separate step. So if you prefer to translate your assembly "directly" into executables, you'll have to modify this template. Please see the [blog post I linked above][6] to see which commands you have to use.


# Usage 

Use git to clone this repository:

```bash
git clone https://github.com/georgjz/amiga-project-template
cd amiga-project-template
make
```

The makefile will look for all source files ending with `*.s` in the directory `src/` and all its subdirectories. These files are translated into object files and listings that will be placed in the directory `obj/`. Finally, the linker will build the final executable and place it in `build/release`.

**NOTE**: There's no difference between the `debug` and `release` configuration as of now. Standard is `release`. I plan add a `debug` configuration that will allow for debugging on an actual Amiga.