#! /bin/bash

#missing entries in file 
##attach clinical info to  output 
while read -r line
do
#echo $line
tcga_id=$(echo $line | awk '{print $1}')
echo $tcga_id
hit_days_to_last_follow_up=$( /usr/bin/grep "$tcga_id" /Users//Desktop//params.txt)
#echo $hit_days_to_last_follow_up
done < /Users///colon_102cases.txt
