VECTORDIR=tuning_vectors
RESULTDIR=tuning_result

mkdir -p "${VECTORDIR}"
mkdir -p "${RESULTDIR}"

for i in `seq 100 50 800`
do
	echo size=${i};
	time ./fuzzypp_word2vec -train text9 -output "${VECTORDIR}"/f1_t9_s${i}w8n25 -cbow 1 -size ${i} -window 8 -negative 25 -sample 1e-4 -threads 20 -iter 15 -dropout 0;
	./compute-accuracy "${VECTORDIR}"/f1_t9_s${i}w8n25.bin < questions-words.txt > "${RESULTDIR}"/qw_f1_t9_s${i}w8n25.txt;
	python compute-wordsim.py "${VECTORDIR}"/f1_t9_s${i}w8n25.bin.txt WS353.csv > "${RESULTDIR}"/353_f1_t9_s${i}w8n25.txt;
	python compute-wordsim.py "${VECTORDIR}"/f1_t9_s${i}w8n25.bin.txt SimLex-999.csv > "${RESULTDIR}"/999_f1_t9_s${i}w8n25.txt;
	python compute-wordsim.py "${VECTORDIR}"/f1_t9_s${i}w8n25.bin.txt rw.csv > "${RESULTDIR}"/rw_f1_t9_s${i}w8n25.txt;
done
