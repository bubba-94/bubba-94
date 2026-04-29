# Makefile Cheat Sheet

## Useful built-in functions

| Function                       | Description         | Example               |
| ------------------------------ | ------------------- | --------------------- |
| `$(wildcard pattern)`          | Matches files       | `$(wildcard src/*.c)` |
| `$(patsubst %.c, %.o, $(SRC))` | Replace suffix      | Convert `.c` → `.o`   |
| `$(dir $(SRC))`                | Extract directories |                       |
| `$(notdir $(SRC))`             | Extract filenames   |                       |
| `$(basename $(SRC))`           | Remove extension    |                       |
| `$(addprefix dir/, file)`      | Add prefix          |                       |

## Basic structure

```makefile
# target: dependencies
# (tab) command(s)

main: main.c                   # Target depends on main.c
	gcc main.c -o main         # Command to build executable

```

## Variable and Substitution

```makefile
CC      = gcc                  # Compiler
CFLAGS  = -Wall -Wextra -std=c11 -g  # Compiler flags
SRC     = main.c utils.c        # Source files
OBJ     = $(SRC:.c=.o)          # Convert .c → .o
TARGET  = program               # Executable name

$(TARGET): $(OBJ)               # Link object files
	$(CC) $(CFLAGS) $(OBJ) -o $(TARGET)

clean:                          # Remove build artifacts
	rm -f $(OBJ) $(TARGET)

```

## Automatic variables

| Variable | Meaning                             |
| -------- | ----------------------------------- |
| `$@`     | The target filename                 |
| `$<`     | The first prerequisite (dependency) |
| `$^`     | All prerequisites (space-separated) |
| `$?`     | Prerequisites newer than target     |

```makefile 
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@ # Example
```

## Pattern rules & special variables

```makefile
%.o: %.c                       # Rule for any .c → .o
	$(CC) $(CFLAGS) -c $< -o $@
# Pattern rules help handle many files with one definition
```

## Automatic dependency generation

* Keep your .o files aware of header changes
```makefile
CFLAGS += -MMD -MP             # Auto-generate .d files

SRC = main.c utils.c
OBJ = $(SRC:.c=.o)
DEP = $(OBJ:.o=.d)

program: $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $@

-include $(DEP)                # Include generated dependency files

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
make -j4       # Build using 4 cores
make -n        # Print commands without executing (dry run)
make -B        # Force rebuild everything
make VERBOSE=1 # Use your own flags for debugging
```

## Multi directory example
```makefile
CC      = gcc
CFLAGS  = -Wall -Wextra -std=c11 -g -Iinclude
SRC_DIR = src
OBJ_DIR = build
BIN_DIR = bin

SRC     = $(wildcard $(SRC_DIR)/*.c)
OBJ     = $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRC))
TARGET  = $(BIN_DIR)/program

all: $(TARGET)

$(TARGET): $(OBJ)
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) $(OBJ) -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)

.PHONY: all clean
```
