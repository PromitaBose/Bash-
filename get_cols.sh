#! /bin/bash

for file in /Users//NHA*.txt
do
echo $file
/usr/bin/awk -F '\t' '{print $1,"\t",$4}' $file  > $file.ge.txt
done
