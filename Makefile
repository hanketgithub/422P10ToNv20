target  = 422P10ToNv20
sources = main.c pack.c
objects = $(patsubst %.c,%.o,$(sources))
CC = gcc
OPTS = -Wall

all: $(objects)
	$(CC) $(OPTS) -o $(target) $(objects)

clean:
	$(RM) $(target) $(objects)
