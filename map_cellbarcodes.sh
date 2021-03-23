#! /bin/bash

while read -r line
do
#/home//Desktop/pool_9N/projection9N.csv
n=$(echo $line | awk -F ',' '{print $1}') 
N=$(grep "$n" /BigData/Immune_Tumor/projection_I_T.csv)
echo $N $line
done < /BigData/Immune_Tumor/clusters_I_T.csv
