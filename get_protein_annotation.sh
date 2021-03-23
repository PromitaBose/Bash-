#! /bin/bash

#LC_CTYPE=C
#############
while IFS= read -r protein_id
do
#echo $protein_id "Description"
description=$(LC_CTYPE=C  /usr/bin/grep "$protein_id"  /Users//UniprotDB/humchr*.txt)
echo $protein_id  "--"  $description 
done < /Users//UniprotDB/Protein_Id.txt
