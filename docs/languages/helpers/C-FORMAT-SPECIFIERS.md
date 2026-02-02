# C Format modifiers/specifiers

## Table of content

* [Signed integers](#signed-integers)
* [Unsigned inegers](#unsigned-integers)
* [Octal & Hexadecimal](#octal-&-hexadecimal)
* [Character / strings](#character-/-strings)
* [Pointers](#pointers)
* [Floating point](#floating-point)
* [Length modifier](#length-modifier)
* [Flags](#flags)
* [Width / precision](#width-/-precision)

## Signed integers

| **Specifier** | **Length modifier** | **Example type** | **Description/explanation** |
|---------------|---------------------|------------------|-----------------------------|
|%d, %i|(none)|`int`|Signed decimal integer|
|%hd, ¤hi|h|`short int`|Signed short integer|
|%hhd, %hhi|hh|`signed char`|Signed char (small integer)|
|%ld, %li|l|`long int`|Signed long integer|
|%lld, %lli|ll|`long long int`|Signed long long integer|
|%jd, %ji|j|`intmax_t`|Largest signed integer type|
|%td, %ti|t|`ptrdiff_t`|Difference between pointers|
|%zd, %zi|z|`ssize_t/size_t`|Signed size type(`size_t` equivalent)|

## Unsigned integers

| **Specifier** | **Length modifier** | **Example type** | **Description/explanation** |
|---------------|---------------------|------------------|-----------------------------|
|%u|(none)|`unsigned int`|Unsigned decimal integer|
|%hu|h|`unsigned short`|Unsigned short integer|
|%hhu|hh|`unsigned char`|Unsigned 8-bit value|
|%lu|l|`unsigned long`|Unsigned long integer|
|%llu|ll|`unsigned long long`|Unsigned long long integer|
|%ju|j|`uintmax_t`|Largest unsigned integer type|
|%zu|z|`size_t`|Unsigned size type|

## Octal & Hexadecimal

| **Specifier** | **Length modifier** | **Example type** | **Description/explanation** |
|---------------|---------------------|------------------|-----------------------------|
|%o|(none)|`unsigned int`|Unsigned octal (base 8)|
|%x|(none)|`unsigned int`|Unsigned hexadecimal (lowercase)|
|%X|(none)|`unsigned int`|Unsigned hexadecimal (uppercase)|
|%lo, %lx, %lX|l|`unsigned long`|Octal/hex for unsigned long|
|%llo, %llx, %llX|ll|`unsigned long long`|Octal/hex for unsigned long long|

## Character / strings

| **Specifier** | **Length modifier** | **Example type** | **Description/explanation** |
|---------------|---------------------|------------------|-----------------------------|
|%c|(none)|`char`|Single character|
|%lc|l|`wint_t`|Wide character (wchar_t)|
|%s|(none)|`char *`|Null-terminated string|
|%ls|l|`wchar_t *`|Wide-character string|

## Pointers

| **Specifier** | **Length modifier** | **Example type** | **Description/explanation** |
|---------------|---------------------|------------------|-----------------------------|
|%p|(none)|`void *`|Pointer (implementation-defined format)|

## Floating point

| **Specifier** | **Length modifier** | **Example type** | **Description/explanation** |
|---------------|---------------------|------------------|-----------------------------|
|%f|(none)|`float/double`|Fixed-point decimal notation|
|%F|(none)|`float/double`|Fixed-point, uppercase output|
|%e|(none)|`float/double`|Scientific notation (lowercase e)|
|%E|(none)|`float/double`|Scientific notation (uppercase E)|
|%g|(none)|`float/double`|Shorter of %e or %f|
|%G|(none)|`float/double`|Shorter of &E or &F|
|%a|(none)|`float/double`|Hexadecimal floating-point(C99+, uppercase)|
|%A|(none)|`float/double`|Hexadecimal floating-point(C99+, uppercase)|
|%Lf, %Le, %Lg, %LA|L|`long double`|Long double precision float|

## Length modifiers

| **Modifier** | **Types** | **Description** |
|--------------|-----------|-----------------|
|%hh|`char`|For signed/unsigned char|
|%h|`short`|For short integers|
|(none)|`int`|Default (no modifier)|
|%l|`long, double`|For long integers or wide chars|
|%ll|`long long`|For 64-bit integers|
|%j|`intmax_t/uintmax_t`|Max integers types|
|%z|`size_t`|Size type|
|%t|`ptrdiff_t`|Pointer difference|
|%L|`long double`|Extended precision float|

## Flags

| **Flag** | **Description** | **Example usage** |
|----------|-----------------|-------------------|
|-|Left-align the output|`%-5d`|
|+|Always print the sign(+ or -)|`%+d`|
|0|Pad with zeros instead of spaces|`%05d`|
|(space)|Print a space if no sign is present|`& d`|
|#|Alternate form (prefix `0, 0x, 0X` for octal/hex)|`%#x`|

## Width / precision

| **Syntax** | **Description** |
|------------|-----------------|
|%5d|Minimum field width of 5(right-align default)|
|%-5d|Left-align within a field width of 5|
|%05d|Pad number with zeros to width 5|
|%.3f|Precision after decimal point is 3(float)|
|%8.2f|Width 8, precision 2|
|%.*f|Precision specified as an argument at runtime|
