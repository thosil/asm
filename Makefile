all: hello

hello: hello.o
	ld -o hello hello.o

hello.o: hello.asm
	nasm -f elf64 hello.asm

clean:
	rm -rf *.o

cleanall: clean
	rm -rf hello
