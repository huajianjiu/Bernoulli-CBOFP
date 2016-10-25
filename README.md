# Learning Word Embedding from a corpus and a lexicon by "Word Replacing with Confidence"

The source code is based on the source code of word2vec(https://code.google.com/archive/p/word2vec/)[1,2,3].    
We add a semantic lexicon layer between the input layer and the hidden layer to train word embeddings with a corpus and a lexicon.   
The output of the lexicon layer is weighted by a confidence coeffience that depends on different words in the context.  
The sample code use enwiki9 and PPDB2.0[4] to train the word embeddings..

## References    
  [1]Tomas Mikolov, Kai Chen, Greg Corrado, and Jeffrey Dean. Efficient Estimation of Word Representations in Vector Space. In Proceedings of Workshop at ICLR, 2013.>   
  [2]Tomas Mikolov, Ilya Sutskever, Kai Chen, Greg Corrado, and Jeffrey Dean. Distributed Representations of Words and Phrases and their Compositionality. In Proceedings of NIPS, 2013.>   
  [3]Tomas Mikolov, Wen-tau Yih, and Geoffrey Zweig. Linguistic Regularities in Continuous Space Word Representations. In Proceedings of NAACL HLT, 2013.   
  [4]Ganitkevitch, Juri and Van Durme, Benjamin and Callison-Burch, Chris, "PPDB: The Paraphrase Database", In Proceedings of NAACL-HLT, pp.758-764, June, 2013 
