# C Compiling and Executing

## Basic compilation

```bash
gcc file.c -o <program> # compile <program>
./program               # Execute <program>
```

## Common flags

```bash
-Wall                   # Enable common warnings
-Wextra                 # Enable aditional warnings
-Werror                 # Treat warnings as errors
-g                      # Include debug info for gdb
-O0                     # No optimization
-O2                     # Standard optimization for release builds
-O3                     # Aggresive optimization
-std=c11                # Specify C standard (c99, c 11, c17)

# Example 
gcc -Wall -Wextra -g -O0 -std=c11 main.c -o main
```

## Multi-file projects

```bash
# Separate compilation
gcc -c file1.c          # Compile single to object
gcc -c file2.c          # Compile single to object
gcc file1.o file2.o -o <program> # Compile into executable <program>
```

## Include & Library paths

```bash
-I<dir>                 # Add custom include directory for headers
-L<dir>                 # Add library search directory
-l<name>                # Link with library lib<name>.so or lib<name>.a
# Example 
gcc main.c -Iinclude -Llib -lmylib -o main
```

## Linking standard libraries (flags)

```bash
-lm                     # Link with math library (libm)
-lpthread               # Link with POSIX threads
# Example 
gcc calc.c -lm -lpthread -o calc # Compile executeable <calc>
```

## Preprocessor options

```bash
-DNAME                  # Define a macro
-DNAME=value            # Define a macro with a value
-E                      # Stop after preprocesssing (output preprocessed code)
# Example
gcc -DDEBUG -E main.c
```

## Debuggning

```bash
gcc -g main.c -o main   # Compile with debug info
gdb ./main              # Start debugger
(gdb) run               # Run program
(gdb) break main        # Set breakpoint at main()
(gdb) next / step       # Step over / step into
(gdb) print var         # Inspect variable
(gdb) backtrace         # Show call stack
(gdb) quit              # Exit debugger
```

## Common one liners

```bash
gcc main.c && ./a.out                       # Quick compile & run
gcc main.c -Wall -Wextra -pedantic -std=c11 # Strict compile
gcc main.c -o main && valgrind ./main       # Compile & check memory
```
