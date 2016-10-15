CC = gcc
#Using -Ofast instead of -O3 might result in faster code, but is supported only by newer GCC versions
CFLAGS = -lm -pthread -O3 -march=native -Wall -funroll-loops -Wno-unused-result

all: word2vec read_ppdb_test

word2vec : word2vec.c MT.h
	$(CC) word2vec.c -o word2vec $(CFLAGS)
read_ppdb_test : read_ppdb_test.c
	$(CC) read_ppdb_test.c -o read_ppdb_test $(CFLAGS)

clean:
	rm -rf word2vec read_ppdb_test
