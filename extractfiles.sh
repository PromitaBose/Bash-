#! /bin/bash


####################
for file in  /Volumes///TCGARAWreads/f*/*.tar.gz
do
#echo $file
f=$(echo $file | /usr/bin/cut -d '/' -f  7)
g=$(echo $f | /usr/bin/cut -d '.' -f  1)
#echo $g
/usr/bin/tar -xzvf  $file  
mv /Volumes//TCGARAWreads/$g*    /Volumes//TCGARAWreads/Fastq_f/
done 
