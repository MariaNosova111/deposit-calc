CC = g++
MO = ./build/main.o
DO = ./build/deposit.o
MC = ./src/main.cpp
DC = ./src/deposit.cpp

all: $(DO) $(MO)
	$(CC) $(MO) $(DO) -o ./bin/deposit-calc

$(DO): $(DC)
	$(CC) -c $(DC) -o $(DO)

$(MO): $(MC)
	$(CC)  -c $(MC) -o $(MO)
clean:
	rm ./build/*.o
