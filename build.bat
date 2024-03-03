@echo off
mkdir bin
i686-elf-gcc -std=gnu99 -ffreestanding -g -c root/boot.s -o bin/boot.o
i686-elf-gcc -std=gnu99 -ffreestanding -g -c src/kernel/kernel.c -o bin/kernel.o
i686-elf-gcc -ffreestanding -nostdlib -g -T linker.ld bin/boot.o bin/kernel.o -o nostalin.elf -lgcc
qemu-system-i386 -kernel nostalin.elf
rmdir /s /q bin
del nostalin.elf
pause