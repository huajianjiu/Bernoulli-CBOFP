CC = gcc
#Using -Ofast instead of -O3 might result in faster code, but is supported only by newer GCC versions
CFLAGS = -lm -pthread -O3 -march=native -Wall -funroll-loops -Wno-unused-result

all: word2vec

word2vec : bwrwc_word2vec.c
	$(CC) bwrwc_word2vec.c -o bwrwc_word2vec $(CFLAGS)

debug : bwrwc_word2vec.c
	$(CC) bwrwc_word2vec.c -o bwrwc_debug $(CFLAGS) -g

clean:
	rm -rf bwrwc_word2vec bwrwc_debug
