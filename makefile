CC = gcc
CFLAGS = -std=c89 -Wall -ansi -pedantic
OBJ = main.o #game.o interface.o terminal.o
EXEC = 

$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(EXEC)


main.o: main.c main.h
	$(CC) $(CFLAGS) main.c -c

clean:
	rm $(EXEC) $(OBJ)
