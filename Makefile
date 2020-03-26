CPP=g++
CFLAGS=-c
all: clean exe test

test:
	./exe
exe:  Main.o
	$(CPP) Main.o -o exe

Main.o:
	$(CPP) Main.c $(CFLAGS)


editeur:
	geany Makefile *c *h &

indent:
	indent -linux *c *h

clean:
	rm -f *.o
