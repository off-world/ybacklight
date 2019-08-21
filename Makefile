PREFIX = /usr
CC = gcc
CFLAGS ?= -O2 -fPIC -pedantic -Wall

.PHONY: clean all install uninstall

all: ybacklight

ybacklight: ybacklight.o
	$(CC) -o $@ $^

ybacklight.o: ybacklight.c
	$(CC) $(CFLAGS) -c $^

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp ybacklight $(DESTDIR)$(PREFIX)/bin/ybacklight

uninstall:
	rm $(DESTDIR)$(PREFIX)/bin/ybacklight

clean:
	rm *.o
