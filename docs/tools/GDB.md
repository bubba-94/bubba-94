# GDB Cheat Sheet

## Compile with debug symbols

```bash
# Build with debugging info and no optimizations
gcc -g -O0 main.c -o main
# or for C++
g++ -g -O0 main.cpp -o main
```

## Start GDB

```bash
# Start GDB with executable
gdb ./main

# Start and run the program immediately
gdb --args ./main arg1 arg2
```

## Basic session commands

```bash
# Start execution
run

# Restart after program exits
run

# Quit GDB
quit
```

## Breakpoints

```bash
# Break at a function
break main

# Break at a specific source line
break main.c:42

# Break at a file and line
break src/util.c:108

# Break when a function is called with arguments
break foo if x == 5

# List breakpoints
info breakpoints

# Delete one breakpoint
delete 1

# Delete all breakpoints
delete

# Disable/enable breakpoint
disable 2
enable 2
```

## Running and stepping

```bash
# Continue until next breakpoint
continue

# Step into functions
step

# Step over function calls
next

# Step until current function returns
finish

# Execute one machine instruction
stepi

# Continue for N steps
step 10
```

## Inspecting variables

```bash
# Print expression or variable value
print x
print my_struct.field

# Print value with type
ptype my_struct

# Print in hexadecimal
print/x x

# Print as string
print s

# Print the value of a register
info registers rip

# Display a variable automatically after each stop
display x

# Remove a display expression
undisplay 1
```

## Stack and frames

```bash
# Show current call stack
backtrace

# Show only top N frames
backtrace 5

# Select a stack frame
frame 3

# Print local variables in current frame
info locals

# Print function arguments in current frame
info args
```

## Examining memory

```bash
# Examine memory at address
x/16xb &buffer
x/8xw buffer
x/32s str

# Display memory as bytes, words, or strings
# format/count/size
x/10i $pc
```

## Watchpoints and conditions

```bash
# Stop when variable changes
watch x

# Stop when expression changes
watch my_ptr->value

# Conditional watchpoint
watch x if x == 0

# Stop when memory is written
rwatch x

# Stop when memory is read or written
awatch x
```

## Breakpoint commands

```bash
# Run commands automatically when breakpoint hits
break 3
commands
  printf "hit breakpoint 3: x=%d\n", x
  continue
end
```

## Useful info commands

```bash
# Show source code around current line
list
list 10

# Show file and line information
info source

# Show all loaded shared libraries
info sharedlibrary

# Show register state
info registers

# Show threads
info threads

# Switch thread
thread 2
```

## Attach to a running process

```bash
# Attach by PID
gdb ./main 12345
# or inside gdb:
attach 12345
```

## Core dumps

```bash
# Open executable with core file
gdb ./main core
```

## Multiarch / cross-debugging

```bash
# Install a multiarch-capable GDB on Debian/Ubuntu
apt install gdb-multiarch

# Start GDB for a cross target
gdb-multiarch ./main

# Set the target architecture inside GDB
(gdb) set architecture aarch64
(gdb) set architecture arm
(gdb) set architecture i386

# Connect to a remote target
(gdb) target remote 192.168.0.10:1234
```

## Quick tips

```bash
# Use set pagination off to avoid "--More--"
(gdb) set pagination off

# Show hint for commands
(gdb) help

# Use layout sources for curses UI
(gdb) layout src
```
