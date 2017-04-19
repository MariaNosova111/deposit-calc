CC = gcc
CFLAGS = -Wall -Werror

EXECUTABLE = bin/prog
 
SRC_BUILD_DIR = build

SRC_BIN_DIR = bin

	
all:     $(SRC_BUILD_DIR)/main.o $(SRC_BUILD_DIR)/deposit.o
	mkdir -p bin
	$(CC) $(SRC_BUILD_DIR)/main.o $(SRC_BUILD_DIR)/deposit.o -o $(EXECUTABLE)

$(SRC_BUILD_DIR)/main.o: src/main.c
	mkdir -p build
	$(CC) $(CFLAGS) -c src/main.c -o $(SRC_BUILD_DIR)/main.o

$(SRC_BUILD_DIR)/deposit.o: src/deposit.c
	$(CC) $(CFLAGS) -c src/deposit.c -o $(SRC_BUILD_DIR)/deposit.o


.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf build/* bin/*
