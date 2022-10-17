TOOL    :=  loongarch64-linux-gnu-
CC      :=  $(TOOL)gcc
OBJCOPY :=  $(TOOL)objcopy
OBJDUMP :=  $(TOOL)objdump
QEMU    :=  qemu-system-loongarch64

.PHONY: clean qemu

start.elf: start.S main.c lab0.ld
	$(CC) -nostdlib -T lab0.ld start.S main.c -O3 -o $@

qemu: start.elf
	$(QEMU) -M virt -m 1G -kernel start.elf -nographic

debug: obj/ucore-kernel-$(USER_OBJ_MODE)
	$(V)$(QEMU) $(QEMUOPTS) -kernel $(OBJDIR)/ucore-kernel-$(USER_OBJ_MODE) -S -s

gdb: $(OBJDIR)/ucore-kernel-$(USER_OBJ_MODE)
	$(V)$(GDB) $(OBJDIR)/ucore-kernel-$(USER_OBJ_MODE)

clean:
	rm start.elf