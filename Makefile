BSP_DIR = ../../newlib-bsp

all:
	scons --config-dir=examples/riscv32/proteusverilator \
	    cc=$(CC) \
	    cflags="$(CFLAGS)" \
	    ldflags="-T $(BSP_DIR)/link.ld -L$(BSP_DIR)" \
	    user_libs="-lm -lproteus" \
	    warmup_heat=0

clean:
	scons -c

include $(BSP_DIR)/Makefile.include
