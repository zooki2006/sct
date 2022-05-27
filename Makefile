IDIR=../include
CC=cc
.DEFAULT_GOAL := sct
PREFIX = /usr/local

all: sct
sct: 
	$(CC) -std=c99 -O2 -I /usr/X11R6/include -o sct sct.c -L /usr/X11R6/lib -lm -lX11 -lXrandr
install: all
	mkdir -p ${PREFIX}/bin
	cp -f sct ${PREFIX}/bin
	chmod 755 ${PREFIX}/bin/sct

clean:
	rm -f sct
uninstall:
	rm -f ${PREFIX}/bin/sct

