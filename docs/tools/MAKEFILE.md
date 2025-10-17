# Makefile Cheat Sheet

## Basic structure

```makefile
# target: dependencies
# (tab) command(s)

main: main.c                         # Target depends on main.c
	gcc main.c -o main              # Command to build executable
```

## Variable examples

```makefile
CC = gcc                             # Compiler
CFLAGS = -Wall -Wextra -std=c11 -g   # Compiler flags
SRC = main.c utils.c                 # Source files
OBJ = $(SRC:.c=.o)                   # Convert .c to .o file names
TARGET = program                     # Output name

$(TARGET): $(OBJ)                    # Target depends on object files
	$(CC) $(CFLAGS) $(OBJ) -o $(TARGET)  # Link object files

clean:                               # Clean build artifacts
	rm -f $(OBJ) $(TARGET)           # Delete object files and executable
```

## Pattern rules & special variables

```makefile
%.o: %.c                             # Pattern: build .o from .c
	$(CC) $(CFLAGS) -c $< -o $@     # $< = first dependency (.c file)
                                     # $@ = target name (.o file)
```

## Phony targets

```makefile
.PHONY: all clean run                # Mark these as not actual files

all: program                         # Default target
run: program
	./program                        # Run built program
clean:
	rm -f *.o program                # Remove binaries
```

## Parallel builds

```makefile
make -j4                             # Build using 4 CPU cores in parallel
make -n                              # Show what would be executed (dry run)
```

## Multi file project example
```makefile
CC = gcc                             # Compiler
CFLAGS = -Wall -Wextra -Iinclude -std=c11 -g  # Flags + include dir
SRC = src/main.c src/utils.c         # Source files
OBJ = $(SRC:.c=.o)                   # Object files
TARGET = bin/program                 # Output binary

all: $(TARGET)                       # Default target builds program

$(TARGET): $(OBJ)
	mkdir -p bin                     # Ensure bin/ exists
	$(CC) $(OBJ) -o $(TARGET)       # Link object files

clean:
	rm -rf $(OBJ) $(TARGET)          # Clean build artifacts

.PHONY: all clean                    # Prevent confusion with file names
```
