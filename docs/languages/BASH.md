# Bash Cheat Sheet

## Scripts Essentials

```bash
#!/bin/bash             # Shebang – must be the first line
./script.sh             # Run script (needs execute permission)
bash script.sh          # Run script explicitly with Bash
chmod +x script.sh      # Make script executable
```

## Useful Built-in Variables

```bash
HOME     # User home directory
PWD      # Current working directory
USER     # Current username
RANDOM   # Random number
HOSTNAME # System hostname
SECONDS  # Seconds since script started
```

## Defining & Accessing Variables

```bash
MY_VAR="Hello World"    # Create variable (no spaces around =)
echo $MY_VAR            # Access variable
echo "${MY_VAR}"        # Safer syntax (preserves spacing)
```

## Special variables

```bash
$0                      # Script name
$1-$9                   # Positional args (first 9)
$#                      # Number of args passed
$@                      # All args (separate words)
$*                      # All args (as one string)
$?                      # Exit status of last command
$$                      # PID of current shell
$!                      # PID of last background command
$_                      # Last argument of previous command
```

## User input

```bash
read NAME                      # Wait for input
echo "Hello $NAME"
read -p "Enter age: " AGE      # Prompt inline
read -s -p "Password: " PASS   # Silent input (no echo)
```

## Functions

```bash
say_hello() {
  echo "Hello, $1"
}
say_hello "World"

```

## For loop

```bash
for i in 1 2 3; do
  echo "Count $i"
done

for f in *.txt; do
  echo "File: $f"
done

```

## While loop

```bash
count=1
while [ $count -le 5 ]; do
  echo "Count: $count"
  ((count++))
done

```

## Control flow in loops

```bash
break        # Exit loop
continue     # Skip to next iteration
exit 0       # Exit script successfully

```

## Conditionals (if/else)

```bash
if [ condition ]; then
    commands
elif [ other_condition ]; then
    commands
else
    commands
fi

# Common examples
if [ "$a" -eq 5 ]; then echo "Equal"; fi
if [ "$a" = "$b" ]; then echo "Strings match"; fi
if [ -f "file.txt" ]; then echo "File exists"; fi
if [ -d "dir" ]; then echo "Directory exists"; fi
```

## Common test operators

| Type        | Operator | Meaning          |
| ----------- | -------- | ---------------- |
| **Numbers** | `-eq`    | equal            |
|             | `-ne`    | not equal        |
|             | `-lt`    | less than        |
|             | `-le`    | less or equal    |
|             | `-gt`    | greater than     |
|             | `-ge`    | greater or equal |
| **Strings** | `=`      | equal            |
|             | `!=`     | not equal        |
|             | `-z`     | empty string     |
|             | `-n`     | non-empty string |
| **Files**   | `-e`     | exists           |
|             | `-f`     | regular file     |
|             | `-d`     | directory        |
|             | `-r`     | readable         |
|             | `-w`     | writable         |
|             | `-x`     | executable       |

## Combining conditions

```bash
if [ "$a" -eq 5 ] && [ "$b" -gt 10 ]; then
if [ "$a" -eq 5 -a "$b" -gt 10 ]; then    # also valid
if [ "$a" -eq 5 ] || [ "$b" -gt 10 ]; then
if [ ! -f "file.txt" ]; then
```

## Common commands

```bash
echo, printf     # Output text
ls, cd, pwd      # File navigation
cp, mv, rm       # Copy, move, remove files
cat, head, tail  # View files
grep, find       # Search text/files
chmod, chown     # Change permissions / ownership
date, sleep      # Time utilities
basename, dirname # Path manipulation

```
