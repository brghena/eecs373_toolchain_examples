example.bin : example.o
	arm-none-eabi-ld example.o -Ttext 0x0 -o example.out
	arm-none-eabi-objdump -S example.out > example.lst
	arm-none-eabi-objcopy -Obinary example.out example.bin

example.o : example.s
	arm-none-eabi-as example.s -o example.o

clean :
	rm -f *.o
	rm -f *.out
	rm -f *.bin
	rm -f *.lst
