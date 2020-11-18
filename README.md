# Simple Amiga Project Template

This is a simple project template for assembly programming projects for cross-developing for Commodore Amiga computers. You'll need [CMake][7], [make][3], [vasm][1], and [vlink][2] installed for it to work.

The example code in this repository is taken from Tuomas Järvensivu's [repository][4], which in turn is part of his [excellent introduction to programming the Amiga][5].

There is one key difference though: I prefer to assemble files into object files first and link them into an executable in a separate step. So if you prefer to translate your assembly "directly" into executables, you'll have to modify this template. Please see the [blog post I linked above][5] to see which commands you have to use.

## Usage

Use git to clone this repository, then configure and build with CMake:

```bash
git clone https://github.com/georgjz/amiga-project-template
cd amiga-project-template
cmake -S . -Bbuild
cmake --build build
```

I added vasm as a "custom language" to CMake, see `cmake/` directory for details. It's not the most elegant solution, but it works. The linker/vlink is hard-coded into the build process, which I plan to change once I understand CMake better (there are [very useful entries in the offical docs](https://cmake.org/cmake/help/v3.18/variable/CMAKE_LANG_LINK_EXECUTABLE.html)).

You can add files in an arbitrary directory structure, as deeply nested as you like. Just make sure each directory contains a copy of `src/CMakeLists.txt` so the file(s) get built.

## License

All code in this repository is under the [MIT license][6]. Except for the two files `src/source.s` and `src/masters3.raw` which are taken from [this repository][4].

[1]: http://sun.hasenbraten.de/vasm/
[2]: http://sun.hasenbraten.de/vlink/
[3]: https://www.gnu.org/software/make/
[4]: https://github.com/uhef/amiga-assembly-crashcourse
[5]: https://www.reaktor.com/blog/crash-course-to-amiga-assembly-programming/
[6]: https://opensource.org/licenses/MIT
[7]: https://cmake.org
