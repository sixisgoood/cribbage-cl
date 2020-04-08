TARGET=main.out
OBJS=Deck.o Card.o bmp.o main.o Player.o Board.o LocalBoard.o HumanPlayer.o ComputerPlayer.o
LIBS=-lncursesw
CC=g++
CPPFLAGS=-g

all : $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CPPFLAGS) -o $(TARGET) $(OBJS) $(LIBS)

clean:
	@rm -f $(OBJS) $(TARGET)

Deck.o: $(@:.o=.c) Card.h Deck.h

Card.o: $(@:.o=.c) Card.h

Player.o: $(@:.o=.c) Card.h

Board.o: $(@:.o=.c) Card.h Deck.h Player.h Board.h

LocalBoard.o: $(@:.o=.c) Board.h LocalBoard.h

HumanPlayer.o: $(@:.o=.c) Player.h HumanPlayer.h

ComputerPlayer.o: $(@:.o=.c) Player.h ComputerPlayer.h

bmp.o: $(@:.o=.c) bmp.h

main.o: $(@:.o=.c) Card.h Deck.h LocalBoard.h bmp.h splash.xbm
