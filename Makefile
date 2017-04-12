CC = g++
CFLAGS = -c -Wall -Werror
MO = ./build/main.o
DO = ./build/deposit.o
MC = ./src/main.c
DC = ./src/deposit.c

all: $(DO) $(MO)
	$(CC) $(MO) $(DO) -o ./bin/deposit-calc

$(DO): $(DC)
	$(CC) $(CFLAGS) -c $(DC) -o $(DO)

$(MO): $(MC)
	$(CC) $(CFLAGS) -c $(MC) -o $(MO)
clean:
	rm -rf*.o *.exe
      
