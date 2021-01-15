Iterative Spaced Seed Hashing: Closing the gap between spaced seed hashing and k-mer hashing

Background:
Alignment-free classification of sequences has enabled high-throughput processing of sequencing data in many bioinformatics pipelines. Much work has been done to speed-up the indexing of $k$-mers through hash-table and other data structures. These efforts have led to very fast indexes, but because they are $k$-mer based, they often lack sensitivity due to sequencing errors or polymorphisms. Spaced seeds are a special type of pattern that accounts for errors or mutations. They allow to improve the sensitivity and they are now routinely used instead of $k$-mers in many applications. The major drawback of spaced seeds is that they cannot be efficiently hashed and thus their usage increases substantially the computational time.
Results:
In this paper we address the problem of efficient spaced seed hashing. We propose an iterative algorithm that combines multiple spaced seed hashes by exploiting the similarity of adjacent hash values in order to efficiently compute the next hash. We report a series of experiments on HTS reads hashing, with several spaced seeds. Our algorithm can compute the hashing values of spaced seeds with a speedup of 6x, outperforming previous methods. 



To compile the program open terminal inside the Release folder and use:

    make all

To run the program call it from the same folder.

Execution parameters:

-si followed by the relative path of the file containing the single_end sequence.
    
    ./ISSH -si ../TestInputFile/reads_800.fa

    
-pi followed by the two relative paths of the two files containing the paired_end sequence.
    
    ./ISSH -pi ../TestInputFile/paired.fna.1 ../TestInputFile/paired.fna.2

    
-dirO followed by the relative path where the program will save the processing times. Default: output/
    
    ./ISSH -si ../TestInputFile/reads_800.fa -dirO output/test1/

    
-num followed by the max number of previous hashes which the algorithm ISSH can use for a new computation. This parameter has to be set before the option -q. If not it won't have any effect.
    
    ./ISSH -pi ../TestInputFile/paired.fna.1 ../TestInputFile/paired.fna.2 -num 2


-q followed by the relative path of the file containing the spaced seeds which will be used.
  If not used default spaced seeds are:
  1111011101110010111001011011111 -> CLARK-S paper
  1111101011100101101110011011111 -> CLARK-S paper
  1111101001110101101100111011111 -> CLARK-S paper
  1111010111010011001110111110111 -> rasbhari minimizing overlap complexity
  1110111011101111010010110011111 -> rasbhari minimizing overlap complexity
  1111101001011100111110101101111 -> rasbhari minimizing overlap complexity
  1111011110011010111110101011011 -> rasbhari maximizing sensitivity
  1110101011101100110100111111111 -> rasbhari maximizing sensitivity
  1111110101101011100111011001111 -> rasbhari maximizing sensitivity 
    
    ./ISSH -si ../TestInputFile/reads_800.fa -q ../Seeds/Seed_test.fna
    

Other examples of execution:
    
    ./ISSH -si ../TestInputFile/reads_800.fa -num 2 -q ../Seeds/Seed_test.fna
    ./ISSH -pi ../TestInputFile/paired.fna.1 ../TestInputFile/paired.fna.2 -num 3 -q ../Seeds/Seed_test.fna
    

All the examples use test files which are present in this program.


Reference
Please cite the following paper:
E.Petrucci, L.Noé, C. Pizzi, M. Comin
"Iterative Spaced Seed Hashing: Closing the gap between spaced seed hashing and k-mer hashing"
In Proceedings of the 15th International Symposium on Bioinformatics Research and Applications, pp. 208-219.

