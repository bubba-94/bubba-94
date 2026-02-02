# Bit Operations Cheat Sheet

## Basic Bitwise Operators

| Operator | Description              | Example  | Result (Binary)                 | Comment                          |       |                  |                         |
| -------- | ------------------------ | -------- | ------------------------------- | -------------------------------- | ----- | ---------------- | ----------------------- |
| `&`      | AND                      | `5 & 3`  | `0101 & 0011 = 0001 (1)`        | 1 only where both bits are 1     |       |                  |                         |
| `        | `                        | OR       | `5                              | 3`                               | `0101 | 0011 = 0111 (7)` | 1 where either bit is 1 |
| `^`      | XOR                      | `5 ^ 3`  | `0101 ^ 0011 = 0110 (6)`        | 1 where bits differ              |       |                  |                         |
| `~`      | NOT (bitwise complement) | `~5`     | `~00000101 = 11111010 (-6)`     | Inverts all bits                 |       |                  |                         |
| `<<`     | Left shift               | `5 << 1` | `00000101 << 1 = 00001010 (10)` | Shifts bits left (×2 per shift)  |       |                  |                         |
| `>>`     | Right shift (arithmetic) | `5 >> 1` | `00000101 >> 1 = 00000010 (2)`  | Shifts bits right (÷2 per shift) |       |                  |                         |

## Bit Masks

```c
unsigned char x = 0b01010101;  // 85
unsigned char mask = 0b00000100; // select bit 2
```

### Set a bit

```c
x |= mask;  // set bit 2 → 0b01010101 | 0b00000100 = 0b01010101

```

### Clear a bit

```c
x &= ~mask; // clear bit 2 → 0b01010101 & 0b11111011 = 0b01010001
```

### Toggle a bit

```c
x ^= mask;  // flip bit 2 → 0b01010101 ^ 0b00000100 = 0b01010001
```

### Check if bit is set

```c
if (x & mask) {
    // bit 2 is set
}
```

## Shifting Tricks

| Operation        | Example          | Result      | Description           |               |
| ---------------- | ---------------- | ----------- | --------------------- | ------------- |
| Multiply by 2ⁿ   | `x << n`         | `x * (2^n)` | Shift left            |               |
| Divide by 2ⁿ     | `x >> n`         | `x / (2^n)` | Shift right           |               |
| Extract n-th bit | `(x >> n) & 1`   | –           | Get bit n (0-indexed) |               |
| Set n-th bit     | `x               | = (1 << n)` | –                     | Turn bit n on |
| Clear n-th bit   | `x &= ~(1 << n)` | –           | Turn bit n off        |               |
| Toggle n-th bit  | `x ^= (1 << n)`  | –           | Flip bit n            |               |

## Common Bit Patterns

| Pattern              | Expression                              | Comment                              |
| -------------------- | --------------------------------------- | ------------------------------------ |
| Lowest bit           | `x & 1`                                 | Checks if number is odd (`1` if odd) |
| Clear lowest set bit | `x & (x - 1)`                           | Removes rightmost 1 bit              |
| Is power of two      | `(x & (x - 1)) == 0`                    | True if only one bit is set          |
| Get lowest set bit   | `x & -x`                                | Isolates rightmost 1 bit             |
| Count bits           | `__builtin_popcount(x)` *(GCC/Clang)*   | Counts number of 1s                  |
| Reverse bits         | `__builtin_bitreverse32(x)` *(GCC 12+)* | Reverses bit order                   |

## Practical Examples

### Swap two numbers without temp variable

```c
a = a ^ b;
b = a ^ b;
a = a ^ b;
```

### Check if integer is even or odd

```c
if (x & 1) printf("Odd");
else printf("Even");
```

### Toggle case of ASCII character

```c
char c = 'A';
c ^= 0x20;  // 'A' → 'a', 'a' → 'A'
```

### Binary Display Helper

To print a number in binary (C): 

```c
void printBinary(unsigned int n) {
    for (int i = 31; i >= 0; i--) {
        printf("%d", (n >> i) & 1);
    }
    printf("\n");
}
```