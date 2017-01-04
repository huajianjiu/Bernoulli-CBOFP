VECTORDIR=tuning_vectors
RESULTDIR=tuning_result

mkdir -p "${VECTORDIR}"
mkdir -p "${RESULTDIR}"

for i in `seq 100 50 800`
do
	echo size=${i};
	time ./fuzzypp_word2vec -train text9 -output "${VECTORDIR}"/fuzzy_t9_s${i}w8n25 -cbow 1 -size ${i} -window 8 -negative 25 -sample 1e-4 -threads 20 -iter 15 -dropout 1;
	./compute-accuracy "${VECTORDIR}"/fuzzy_t9_s${i}w8n25.bin < questions-words.txt > "${RESULTDIR}"/qw_fuzzy_t9_s${i}w8n25.txt;
	python compute-wordsim.py "${VECTORDIR}"/fuzzy_t9_s${i}w8n25.bin.txt WS353.csv > "${RESULTDIR}"/353_fuzzy_t9_s${i}w8n25.txt;
	python compute-wordsim.py "${VECTORDIR}"/fuzzy_t9_s${i}w8n25.bin.txt SimLex999.csv > "${RESULTDIR}"/999_fuzzy_t9_s${i}w8n25.txt;
done
