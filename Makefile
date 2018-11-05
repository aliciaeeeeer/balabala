OBJ= alicia.o bob.o main.o
all:$(OBJ)
	gcc $^ -g -Wall -o $@
alicia.o:alicia.c my.h
	gcc $^ -g -Wall -c -o $@
bob.o:bob.c my.h
	gcc $^ -g -Wall -c -o $@
.PHONY:clean
clean:
	rm -rf *.o all

