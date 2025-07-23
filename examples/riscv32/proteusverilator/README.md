# Configuration

## Building

```sh
scons --config-dir=examples/riscv32/proteusverilator/                      \
      cc=riscv32-unknown-elf-clang                                         \
      cflags="-O2 -fdata-sections -ffunction-sections -march=rv32im_zicsr -mabi=ilp32" \
      ldflags="-Tproteus.ld -Wl,-gc-sections" \
      user_libs="-lm -lproteus"
```
