VECTORDIR=/media/ke/Data/Experiment_Vectors_Results_Dec25-Jan/FuzzyJointCBOFP/parameter-tuning-text9
RESULTDIR=cbofp_rw_tuning_result

mkdir -p "${RESULTDIR}"

for i in `seq 100 50 800`
do
	echo size=${i};
	python compute-wordsim.py "${VECTORDIR}"/t9_s${i}w8ns25.bin.txt rw.csv > "${RESULTDIR}"/rw_cbofp_t9_s${i}w8ns25.txt;
done

VECTORDIR=/media/ke/Data/Experiment_Vectors_Results_Dec25-Jan/FuzzyJointCBOFP/parameter-tuning-text9-f1
RESULTDIR=f1_rw_tuning_result

mkdir -p "${RESULTDIR}"

for i in `seq 100 50 800`
do
	echo size=${i};
	python compute-wordsim.py "${VECTORDIR}"/f1_t9_s${i}w8ns25.bin.txt rw.csv > "${RESULTDIR}"/f1_cbofp_t9_s${i}w8ns25.txt;
done

VECTORDIR=/media/ke/Data/Experiment_Vectors_Results_Dec25-Jan/w2v/vectors
RESULTDIR=cbow_rw_tuning_result

mkdir -p "${RESULTDIR}"

for i in `seq 100 50 800`
do
	echo size=${i};
	python compute-wordsim.py "${VECTORDIR}"/t9_s${i}w8ns25_cbow.bin.txt rw.csv > "${RESULTDIR}"/cbow_t9_s${i}w8ns25.txt;
done

VECTORDIR=/media/ke/Data/Experiment_Vectors_Results_Dec25-Jan/fastText/fastText/tuning_vectors
RESULTDIR=encbow_rw_tuning_result

mkdir -p "${RESULTDIR}"

for i in `seq 100 50 800`
do
	echo size=${i};
	python compute-wordsim.py "${VECTORDIR}"/encbow_t9_s${i}w8ns25.vec rw.csv > "${RESULTDIR}"/encbow_t9_s${i}w8ns25.txt;
done

VECTORDIR=/media/ke/Data/Experiment_Vectors_Results_Dec25-Jan/fastText/fastText/tuning_vectors
RESULTDIR=ensg_rw_tuning_result

mkdir -p "${RESULTDIR}"

for i in `seq 100 50 800`
do
	echo size=${i};
	python compute-wordsim.py "${VECTORDIR}"/ensg_t9_s${i}w8ns25.vec rw.csv > "${RESULTDIR}"/ensg_t9_s${i}w8ns25.txt;
done

VECTORDIR=/media/ke/Data/Experiment_Vectors_Results_Dec25-Jan/RetroCBOW/tuning_vectors
RESULTDIR=retro_cbow_rw_tuning_result

mkdir -p "${RESULTDIR}"

for i in `seq 100 50 800`
do
	echo size=${i};
	python compute-wordsim.py "${VECTORDIR}"/retro_cbow_t9_s${i}w8ns25.vec rw.csv > "${RESULTDIR}"/retro_cbow_t9_s${i}w8ns25.txt;
done
