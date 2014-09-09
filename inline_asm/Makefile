main.bin : cfile.o
	arm-none-eabi-ld cfile.o -Ttext 0x0 -o main.out
	arm-none-eabi-objdump -S main.out > main.lst
	arm-none-eabi-objcopy -Obinary main.out main.bin

cfile.o : cfile.c
	arm-none-eabi-gcc -nostdlib -ffreestanding -mcpu=cortex-m3 -mthumb -O0 -c cfile.c -o cfile.o

clean :
	rm -f *.o
	rm -f *.out
	rm -f *.bin
	rm -f *.lst
