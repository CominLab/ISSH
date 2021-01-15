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
