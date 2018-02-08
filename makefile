all: clean hello.so main

main: main.o
	c89 main.c -L/home/mlange/dvp/c/shared -lhello -o main

hello.so: hello.o
	ld -G hello.o -lc -o libhello.so

hello.o:
	c89 -c +z hello.c

clean:
	-@rm -f main.o 
	-@rm -f hello.o 
	-@rm -f hello.sl
