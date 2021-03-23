#! /bin/bash

for file in ~/Original_Data/*.xlsx
do 
echo $file
/Library/Frameworks/R.framework/Versions/3.3/Resources/library/gdata/perl/xls2csv.pl $file
done
