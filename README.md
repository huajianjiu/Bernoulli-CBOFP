# Learning Word Embedding from a corpus and a lexicon using "Fuzzy Paraphrases"

The implement of the model and method in our paper "Fuzzy paraphrases in learning word representations with a corpus and a lexicon"  
The source code is based on the source code of word2vec(https://code.google.com/archive/p/word2vec/)[1,2,3].    
The sample code use enwiki9 and PPDB2.0[4,5,6] to train the word embeddings..

##FILES
bwrwc_word2vec.c: The implement of the model and method on the basis of the source code of word2vec by Mikolov et al.  
  compute-accuracy.c: The script to run the word analogical reasoning task by Mikolov et al.  
  demo-word.sh: The script to run a demo using enwiki9 and PPDB2.0 to learn word embeddings and then run the word analogical reasoning task.  
  PPDB2.txt: It is a paraphrase table extracted from PPDB2.0 for the vocabulary of enwiki9.  
  questions-words.txt: The word analogical reasoning task dataset.  
wikifill.pl: It is a wiki clearning script written by Matt Mahoney http://mattmahoney.net/dc/textdata  

## References    
  [1]Tomas Mikolov, Kai Chen, Greg Corrado, and Jeffrey Dean. Efficient Estimation of Word Representations in Vector Space. In Proceedings of Workshop at ICLR, 2013.>   
  [2]Tomas Mikolov, Ilya Sutskever, Kai Chen, Greg Corrado, and Jeffrey Dean. Distributed Representations of Words and Phrases and their Compositionality. In Proceedings of NIPS, 2013.>   
  [3]Tomas Mikolov, Wen-tau Yih, and Geoffrey Zweig. Linguistic Regularities in Continuous Space Word Representations. In Proceedings of NAACL HLT, 2013.   
  [4]Ganitkevitch, Juri and Van Durme, Benjamin and Callison-Burch, Chris, "PPDB: The Paraphrase Database", In Proceedings of NAACL-HLT, pp.758-764, June, 2013 
  [5]Ellie Pavlick, Pushpendre Rastogi, Juri Ganitkevich, Ben Van Durme, Chris Callison-Burch, PPDB 2.0: Better paraphrase ranking, fine-grained entailment relations, word embeddings, and style classification. ACL 2015 (Short papers), 2015.
  [6]Ellie Pavlick, Johan Bos, Malvina Nissim, Charley Beller, Ben Van Durme, Chris Callison-Burch, Adding Semantics to Data-driven Paraphrasing. ACL 2015, 2015.
