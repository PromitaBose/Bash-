#! /bin/bash
#$ -N cufflinks_STAR_bam
#$ -l h_vmem=10G



module load cufflinks/2.2.1/gcc.4.4.7
for file in /home//data/STAR_bam_2/*RBY[[:digit:]][[:digit:]]Aligned*.bam 
do
f=$(echo $file | cut -d '/' -f 6 | cut -d '.' -f 1)
d=$(echo $file | cut -d '/' -f 6 | cut -d '_' -f 5  | cut -d '.' -f 1)
#echo $f.gtf  $d
cufflinks -G /home//data/hg19/genes.gtf  -o /home//data/STAR_bam_2/cufflinks_only_G_params/$d  $file
done
