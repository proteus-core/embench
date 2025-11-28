BSP_DIR = ../../newlib-bsp

all:
	make -C $(BSP_DIR) $(BSP_LIB_NAME)
	scons --config-dir=examples/riscv32/proteusverilator \
	    cc=$(CC) \
	    cflags="$(CFLAGS)" \
	    ldflags="$(ARCHFLAGS) -T $(BSP_DIR)/link.ld -L$(BSP_DIR)" \
	    user_libs="-lm -lproteus" \
	    warmup_heat=0

clean:
	scons -c
	make -C $(BSP_DIR) clean

include $(BSP_DIR)/Makefile.include
