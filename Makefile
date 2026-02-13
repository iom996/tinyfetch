CC = gcc
CFLAGS = -Wall -Wextra -O2
TARGET = tinyfetch
SRC = src/tinyfetch.c
PREFIX = /usr/local

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET)

clean:
	rm -f $(TARGET)

install: $(TARGET)
	mkdir -p $(PREFIX)/bin
	cp -f $(TARGET) $(PREFIX)/bin
	chmod 755 $(PREFIX)/bin/$(TARGET)

uninstall:
	rm -f $(PREFIX)/bin/$(TARGET)

.PHONY: clean install uninstall
