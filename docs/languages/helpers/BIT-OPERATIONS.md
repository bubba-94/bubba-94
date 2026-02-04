# 🧩 Bit Operations Cheat Sheet (Hex & Embedded Style)

## Basic Bitwise Operators

| Operator | Description              | Example  | Result (Binary / Hex)         | Comment                          |
| -------- | ------------------------ | -------- | ---------------------------- | -------------------------------- |
| `&`      | AND                      | `5 & 3`  | `0101 & 0011 = 0001 (0x1)`  | 1 only where both bits are 1     |
| `|`      | OR                       | `5 \| 3`| `0101 | 0011 = 0111 (0x7)`  | 1 where either bit is 1          |
| `^`      | XOR                      | `5 ^ 3`  | `0101 ^ 0011 = 0110 (0x6)`  | 1 where bits differ              |
| `~`      | NOT (bitwise complement) | `~5`     | `~00000101 = 11111010 (0xFA)`| Inverts all bits                  |
| `<<`     | Left shift               | `5 << 1` | `00000101 << 1 = 00001010 (0xA)` | Shifts bits left (×2 per shift) |
| `>>`     | Right shift              | `5 >> 1` | `00000101 >> 1 = 00000010 (0x2)` | Shifts bits right (÷2 per shift) |

## Bit Masks

```c
uint8_t x = 0x55;  // 0b01010101
uint8_t mask = 0x04; // bit 2
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

| Operation               | Example               | Result            | Description           |                 |
| ----------------------- | --------------------- | ----------------- | --------------------- | --------------- |
| Multiply by 2ⁿ          | `x << n`              | `x * 2^n`         | Shift left            |                 |
| Divide by 2ⁿ            | `x >> n`              | `x / 2^n`         | Shift right           |                 |
| Extract n-th bit        | `(x >> n) & 1`        | –                 | Get bit n (0-indexed) |                 |
| Set n-th bit            | `x                    | = (1 << n)`       | –                     | Turn bit n on   |
| Clear n-th bit          | `x &= ~(1 << n)`      | –                 | Turn bit n off        |                 |
| Toggle n-th bit         | `x ^= (1 << n)`       | –                 | Flip bit n            |                 |
| Extract multi-bit field | `(x >> shift) & mask` | –                 | Field extraction      |                 |
| Insert multi-bit field  | `x = (x & ~mask)      | (value << shift)` | –                     | Field insertion |


## Common Bit Patterns

| Pattern               | Expression                  | Comment                     |                          |
| --------------------- | --------------------------- | --------------------------- | ------------------------ |
| Lowest bit            | `x & 1`                     | Checks if number is odd     |                          |
| Clear lowest set bit  | `x & (x - 1)`               | Removes rightmost 1 bit     |                          |
| Is power of two       | `(x & (x - 1)) == 0`        | True if only one bit is set |                          |
| Get lowest set bit    | `x & -x`                    | Isolates rightmost 1 bit    |                          |
| Count bits (popcount) | `__builtin_popcount(x)`     | Counts number of 1s         |                          |
| Reverse bits (32-bit) | `__builtin_bitreverse32(x)` | Reverses bit order          |                          |
| Set multiple bits     | `x                          | = mask`                     | Turn on all bits in mask |
| Clear multiple bits   | `x &= ~mask`                | Turn off all bits in mask   |                          |
| Toggle multiple bits  | `x ^= mask`                 | Flip all bits in mask       |                          |

## Hex focuesed Field Ops

| Operation                       | Example            | Result         |      |
| ------------------------------- | ------------------ | -------------- | ---- |
| Extract high nibble             | `(x >> 4) & 0xF`   | 0xA for x=0xAB |      |
| Extract low nibble              | `x & 0xF`          | 0xB for x=0xAB |      |
| Replace high nibble             | `x = (x & 0x0F)    | (0x9 << 4)`    | 0x9B |
| Replace low nibble              | `x = (x & 0xF0)    | 0x3`           | 0xA3 |
| Pack two fields (5-bit + 3-bit) | `x = (field1 << 3) | field2`        | –    |


## Field Packing / Extraction

```c
uint8_t reg = 0xD6;   // 1101 0110
uint8_t field = (reg >> 2) & 0x07; // extract bits 2-4 -> 0x5

uint8_t reg = 0xC2;
reg = (reg & ~0x1C) | (0x3 << 2); // insert value 0x3 into bits 2-4
```

### Start / Stop Bit Framing (Serial / UART Style)

```c
uint8_t data = 0x5A;      // 0b01011010

uint16_t frame = (data << 1); // insert start bit at LSB = 0
frame |= (1 << 9);            // insert stop bit at bit 9
```

### Extract data from frame
```c
uint8_t extracted = (frame >> 1) & 0xFF; // remove start bit

Check start / stop bits
if ((frame & 1) == 0) printf("Start bit OK");
if ((frame >> 9) & 1) printf("Stop bit OK");
```

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