#! /bin/bash


while read line
do
	echo $line
	/usr/bin/mv $line  /mnt//hold/
done < /home/ubuntu//files_to_move.txt
