#! /bin/bash

set -e

#f=$(ls -1 /Users//Desktop/data/AR*.gpr)

#f=$(ls  /Users/Desktop/data/AR*.gpr)
#echo @f

for sample in $(ls  /Users//Desktop//AR*.gpr)
do
s=$(echo   $sample | cut -d '/' -f 8 | sed 's/AR/AR_2016/g')

#echo "$s"

cp $sample  /Users//Desktop//$s

done

############

for sample in $(ls  /Users//Desktop///AT*.gpr)
do
s=$(echo   $sample | cut -d '/' -f 8 | sed 's/AT/AT_2017/g')

#echo "$s"

cp $sample  /Users//Desktop//data/$s

done
