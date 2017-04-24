CC = gcc
CFLAGS = -Wall -Werror
TESTFLAGS = -I thirdparty -I src -Wall -Werror
EXECUTABLE = bin/prog
EXECUTABLE_TEST = bin/prog-test
SRC_BUILD_DIR = build/src
TEST_BUILD_DIR = build/test
SRC_BIN_DIR = bin



	
all:     $(SRC_BUILD_DIR)/main.o $(SRC_BUILD_DIR)/deposit.o
	$(CC) $(SRC_BUILD_DIR)/main.o $(SRC_BUILD_DIR)/deposit.o -o $(EXECUTABLE)

$(SRC_BUILD_DIR)/main.o: src/main.c
	$(CC) $(CFLAGS) -c src/main.c -o $(SRC_BUILD_DIR)/main.o

$(SRC_BUILD_DIR)/deposit.o: src/deposit.c
	$(CC) $(CFLAGS) -c src/deposit.c -o $(SRC_BUILD_DIR)/deposit.o

all: deposit-calc-test

deposit-calc-test: $(TEST_BUILD_DIR)/main.o $(TEST_BUILD_DIR)/deposit_test.o $(TEST_BUILD_DIR)/validation_test.o $(SRC_BUILD_DIR)/deposit.o
	$(CC) $(TEST_BUILD_DIR)/main.o $(TEST_BUILD_DIR)/deposit_test.o $(TEST_BUILD_DIR)/validation_test.o $(SRC_BUILD_DIR)/deposit.o -o $(EXECUTABLE_TEST)

$(TEST_BUILD_DIR)/main.o: test/main.c 
	$(CC) $(TESTFLAGS) -c test/main.c -o $(TEST_BUILD_DIR)/main.o
$(TEST_BUILD_DIR)/deposit_test.o: test/deposit_test.c
	$(CC) $(TESTFLAGS) -c test/deposit_test.c -o $(TEST_BUILD_DIR)/deposit_test.o 
$(TEST_BUILD_DIR)/validation_test.o: test/validation_test.c
	$(CC) $(TESTFLAGS) -c test/validation_test.c -o $(TEST_BUILD_DIR)/validation_test.o 

        


.PHONY: clean
clean:
	rm -rf build/* bin/*
