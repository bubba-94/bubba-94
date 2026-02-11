# Hex Table 

## Descrtiption

Provide a table for the most commmon hex combinations in Software Programming.

## Bit Masks & Commmon bit patterns

| HEX Value | Binary     | Description       | Typical Use                 |
| --------- | ---------- | ----------------- | --------------------------- |
| `0x00`    | `00000000` | All bits cleared  | Reset value, empty byte     |
| `0xFF`    | `11111111` | All bits set      | Full mask, broadcast, erase |
| `0x0F`    | `00001111` | Lower nibble mask | Extract lower 4 bits        |
| `0xF0`    | `11110000` | Upper nibble mask | Extract upper 4 bits        |
| `0x01`    | `00000001` | Bit 0 set         | Flag check (LSB)            |
| `0x02`    | `00000010` | Bit 1 set         | Flag check                  |
| `0x04`    | `00000100` | Bit 2 set         | Flag check                  |
| `0x08`    | `00001000` | Bit 3 set         | Flag check                  |
| `0x80`    | `10000000` | MSB set           | Sign bit, high flag         |
| `0x7F`    | `01111111` | MSB cleared       | Remove sign bit             |
| `0xAA`    | `10101010` | Alternating bits  | Bit pattern testing         |
| `0x55`    | `01010101` | Alternating bits  | Signal integrity tests      |

## Common Protocol Control Bytes

| HEX    | Binary     | Meaning                   | Common Context       |
| ------ | ---------- | ------------------------- | -------------------- |
| `0x02` | `00000010` | STX (Start of Text)       | Serial protocols     |
| `0x03` | `00000011` | ETX (End of Text)         | Serial protocols     |
| `0x04` | `00000100` | EOT (End of Transmission) | Serial communication |
| `0x06` | `00000110` | ACK                       | Handshaking          |
| `0x10` | `00010000` | DLE                       | Framing/escaping     |
| `0x15` | `00010101` | NAK                       | Error handling       |
| `0x1B` | `00011011` | ESC                       | Terminal control     |
| `0x0D` | `00001101` | CR                        | Text protocols       |
| `0x0A` | `00001010` | LF                        | Text protocols       |
| `0x7E` | `01111110` | Frame delimiter           | HDLC, PPP            |
| `0x7F` | `01111111` | DEL                       | ASCII control        |

## Networking & Internet Protocol Constants

| HEX          | Binary                                | Description            | Protocol          |
| ------------ | ------------------------------------- | ---------------------- | ----------------- |
| `0x0800`     | `00001000 00000000`                   | IPv4 EtherType         | Ethernet          |
| `0x86DD`     | `10000110 11011101`                   | IPv6 EtherType         | Ethernet          |
| `0x0806`     | `00001000 00000110`                   | ARP EtherType          | Ethernet          |
| `0x06`       | `00000110`                            | TCP Protocol Number    | IP header         |
| `0x11`       | `00010001`                            | UDP Protocol Number    | IP header         |
| `0x01`       | `00000001`                            | ICMP Protocol Number   | IP header         |
| `0xFFFF`     | `11111111 11111111`                   | Broadcast (16-bit)     | Various protocols |
| `0xFFFFFFFF` | `11111111 11111111 11111111 11111111` | IPv4 Broadcast Address | Networking        |

## File magic Numbers / Signature

| Format | HEX Sequence    | Binary                                |
| ------ | --------------- | ------------------------------------- |
| JPEG   | `0xFF D8 FF`    | `11111111 11011000 11111111`          |
| PNG    | `0x89 50 4E 47` | `10001001 01010000 01001110 01000111` |
| ZIP    | `0x50 4B 03 04` | `01010000 01001011 00000011 00000100` |
| PDG    | `0x25 50 44 46` | `00100101 01010000 01000100 01000110` |
| ELF    | `0x7F 45 4C 46` | `01111111 01000101 01001100 01000110` |

## Example Bit Flags 

### Individual

| HEX    | Binary     | Flag Name | Description        |
| ------ | ---------- | --------- | ------------------ |
| `0x01` | `00000001` | ENABLE    | Feature enabled    |
| `0x02` | `00000010` | WRITE     | Write permission   |
| `0x04` | `00000100` | EXEC      | Execute permission |
| `0x08` | `00001000` | ERROR     | Error state        |
| `0x10` | `00010000` | READY     | Ready state        |
| `0x20` | `00100000` | BUSY      | Busy state         |

### Combined bit flags

| HEX    | Binary     | Meaning               |
| ------ | ---------- | --------------------- |
| `0x03` | `00000011` | ENABLE + WRITE        |
| `0x07` | `00000111` | ENABLE + WRITE + EXEC |
| `0x18` | `00011000` | ERROR + READY         |

