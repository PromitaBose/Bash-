#! /bin/bash
#$ -N tophat

# load module 
# it's best to use the full path
# in case there are multiple versions
module load tophat/2.0.13/gcc.4.4.7

f1=/home//data/PICARD_Bo/data/J436_AHLT7TBCXX_Lane1_AGGCAGAA-AGAGTAGA_RBY5.1.fastq.gz
f2=/home//data/PICARD_Bo/data/J436_AHLT7TBCXX_Lane1_AGGCAGAA-AGAGTAGA_RBY5.2.fastq.gz
 
#####################################
# no need to use the full path to tophat
tophat -o  /home//TopHat/RBY5/  /home//data/hg19/Homo_sapiens/UCSC/hg19/Sequence/Bowtie2Index/genome  $f1  $f2  

