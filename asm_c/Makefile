main.bin : asmfile.o cfile.o
	arm-none-eabi-ld asmfile.o cfile.o -Ttext 0x0 -o main.out
	arm-none-eabi-objdump -S main.out > main.lst
	arm-none-eabi-objcopy -Obinary main.out main.bin

asmfile.o : asmfile.s
	arm-none-eabi-as -mcpu=cortex-m3 -mthumb asmfile.s -o asmfile.o

cfile.o : cfile.c
	arm-none-eabi-gcc -nostdlib -nostartfiles -ffreestanding -mcpu=cortex-m3 -mthumb -O0 -c cfile.c -o cfile.o

clean :
	rm -f *.o
	rm -f *.out
	rm -f *.bin
	rm -f *.lst
