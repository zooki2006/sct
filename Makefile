IDIR=../include
CC=cc
.DEFAULT_GOAL := sct
PREFIX   ?= /usr/local
sct: 
	$(CC) -std=c99 -O2 -I /usr/X11R6/include -o sct sct.c -L /usr/X11R6/lib -lm -lX11 -lXrandr
install: 
	cp -f ./sct $(PREFIX)/bin/sct

