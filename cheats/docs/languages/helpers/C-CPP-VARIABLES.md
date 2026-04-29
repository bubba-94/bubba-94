# Values and traits of different C/C++ values.

## Description

Template or description of common and less common variables used in the C/C++ world.

## C Language Types

### Fundamental Integer Types

| Type                 | Minimum width | Typical width | Signed       | Notes                                                |
| -------------------- | ------------- | ------------- | ------------ | ---------------------------------------------------- |
| `bool`               | ≥ 1 byte      | 1 byte        | —            | Stored as 0 or 1, actual size implementation-defined |
| `char`               | ≥ 8 bits      | 8 bits        | Impl-defined | May be signed or unsigned                            |
| `signed char`        | ≥ 8 bits      | 8 bits        | Yes          | Always signed                                        |
| `unsigned char`      | ≥ 8 bits      | 8 bits        | No           | Often used for raw bytes                             |
| `short`              | ≥ 16 bits     | 16 bits       | Yes          | At least as wide as `char`                           |
| `unsigned short`     | ≥ 16 bits     | 16 bits       | No           | Unsigned arithmetic wraps                            |
| `int`                | ≥ 16 bits     | 32 bits       | Yes          | Fastest native integer on most platforms             |
| `unsigned int`       | ≥ 16 bits     | 32 bits       | No           | Modulo arithmetic                                    |
| `long`               | ≥ 32 bits     | 32 / 64 bits  | Yes          | Platform dependent (LP64 vs LLP64)                   |
| `unsigned long`      | ≥ 32 bits     | 32 / 64 bits  | No           | Size varies by OS                                    |
| `long long`          | ≥ 64 bits     | 64 bits       | Yes          | Guaranteed minimum 64-bit                            |
| `unsigned long long` | ≥ 64 bits     | 64 bits       | No           | Reliable for large values                            |

### Floating-Point Types

| Type          | Minimum precision  | Typical size | Notes                             |
| ------------- | ------------------ | ------------ | --------------------------------- |
| `float`       | ~6 decimal digits  | 4 bytes      | Usually IEEE-754 single precision |
| `double`      | ~15 decimal digits | 8 bytes      | Default floating-point type       |
| `long double` | ≥ double           | 8 / 16 bytes | Implementation-defined precision  |

### Pointer and Size Types

| Type        | Typical width | Signed | Notes                         |
| ----------- | ------------- | ------ | ----------------------------- |
| `void*`     | 32 / 64 bits  | —      | Can point to any object type  |
| `size_t`    | 32 / 64 bits  | No     | Used for sizes and indexing   |
| `ptrdiff_t` | 32 / 64 bits  | Yes    | Result of pointer subtraction |

### C Integer Promotion and Overflow Rules

| Rule                  | Description                                       |
| --------------------- | ------------------------------------------------- |
| Signed overflow       | Undefined behavior                                |
| Unsigned overflow     | Well-defined modulo arithmetic                    |
| Integer promotions    | Smaller types promoted to `int` or `unsigned int` |
| Bit shifts (signed)   | Implementation-defined                            |
| Bit shifts (unsigned) | Logical shift                                     |

## C++ Language Types

### Fixed-Width Integer Types (`<cstdint>`)

| Type       | Exact width | Signed | Notes                                |
| ---------- | ----------- | ------ | ------------------------------------ |
| `int8_t`   | 8 bits      | Yes    | Exists only if exact-width supported |
| `uint8_t`  | 8 bits      | No     | Often alias of `unsigned char`       |
| `int16_t`  | 16 bits     | Yes    | Exact-width integer                  |
| `uint16_t` | 16 bits     | No     | Exact-width integer                  |
| `int32_t`  | 32 bits     | Yes    | Exact-width integer                  |
| `uint32_t` | 32 bits     | No     | Exact-width integer                  |
| `int64_t`  | 64 bits     | Yes    | Exact-width integer                  |
| `uint64_t` | 64 bits     | No     | Exact-width integer                  |

### Least and Fast Integer Types

| Type             | Width guarantee | Purpose                         |
| ---------------- | --------------- | ------------------------------- |
| `int_least32_t`  | ≥ 32 bits       | Smallest available ≥32-bit type |
| `uint_least32_t` | ≥ 32 bits       | Unsigned least-width type       |
| `int_fast32_t`   | ≥ 32 bits       | Fastest available ≥32-bit type  |
| `uint_fast32_t`  | ≥ 32 bits       | Unsigned fast type              |

### Character Types (C++ Specific)

| Type       | Width        | Purpose           | Notes                              |
| ---------- | ------------ | ----------------- | ---------------------------------- |
| `char8_t`  | 8 bits       | UTF-8 code units  | Introduced in C++20                |
| `char16_t` | 16 bits      | UTF-16 code units | Encoding unit, not scalar          |
| `char32_t` | 32 bits      | UTF-32 code units | Can represent Unicode scalar       |
| `wchar_t`  | Impl-defined | Wide characters   | 16-bit on Windows, 32-bit on Linux |

### Boolean Type

| Type   | Width    | Notes                      |
| ------ | -------- | -------------------------- |
| `bool` | ≥ 1 byte | Not guaranteed to be 1 bit |

### Alignment and Object Layout

| Concept            | Description                             |
| ------------------ | --------------------------------------- |
| Padding            | Compiler may insert unused bytes        |
| Alignment          | Types require specific memory alignment |
| `sizeof(T)`        | Includes padding                        |
| `alignof(T)`       | Required alignment                      |
| `std::max_align_t` | Maximum fundamental alignment           |

### Common Data Model Differences

| Model | `char` | `short` | `int` | `long` | `long long` | Pointer |
| ----- | ------ | ------- | ----- | ------ | ----------- | ------- |
| ILP32 | 8      | 16      | 32    | 32     | 64          | 32      |
| LP64  | 8      | 16      | 32    | 64     | 64          | 64      |
| LLP64 | 8      | 16      | 32    | 32     | 64          | 64      |

### Practical Guidelines

* Use `int` for general-purpose arithmetic
* Use `size_t` for sizes and indexing
* Use `ptrdiff_t` for pointer differences
* Use fixed-width types for binary formats and networking
* Never assume:

  * `int` is 32 bits
  * `long` is 64 bits
  * `char` is signed
