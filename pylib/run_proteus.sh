riscv32-unknown-elf-objcopy -O binary $1 $1.bin
proteus-dynamic $1.bin
