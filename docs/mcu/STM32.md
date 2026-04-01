STM32 Commands Cheat Sheet

## Description

This is a quick reference of useful STM32 commands for development with VSCode + WSL Remote and flashing/debugging over ST-Link.

## Flashing / Reading Memory
```bash
# Read first 512 KB flash into dump.bin
st-flash read dump.bin 0x08000000 0x80000

# Read entire 2 MB flash (STM32F769NI)
st-flash read full_flash.bin 0x08000000 0x200000

# Write program to flash
st-flash write my_program.bin 0x08000000

# Erase entire flash
st-flash erase
```
## Serial / Logging
```bash
# View serial output at 115200 baud
screen /dev/ttyACM0 115200

# List all serial devices
ls /dev/ttyACM* /dev/serial/by-id/
```

## Binary Inspection
```bash
# View raw bytes in hex
hexedit dump.bin

# Extract strings from binary
strings dump.bin

# Disassemble binary using Ghidra / radare2 (load address = 0x08000000)
radare2 -a arm -b 32 -e io.cache=true -B 0x08000000 dump.bin
```

## SWD / Debugging
```bash
# Check connected ST-Link and MCU info
st-info --probe

# OpenOCD example for debugging
openocd -f interface/stlink.cfg -f target/stm32f7x.cfg
```
## Miscellaneous
```bash
# Check st-flash version
st-flash --version

# List devices in WSL
ls /dev/stlinkv2-* /dev/ttyACM*
```
