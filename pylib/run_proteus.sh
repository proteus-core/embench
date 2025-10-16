llvm-objcopy -O binary $1 $1.bin
# proteus-dynamic --dump-fst $1.fst --dump-mem $1.mem --dump-stores $1.stores $1.bin
proteus-static --dump-fst $1.fst --dump-mem $1.mem --dump-stores $1.stores $1.bin
# proteus-dynamic $1.bin
# proteus-static $1.bin
