#! /bin/bash

#/home/ubuntu/libsvm-3.23/svm-predict  /home/ubuntu/libsvm-3.23/heart_scale  /home/ubuntu/libsvm-3.23/heart_scale.model  out.txt
#/home/ubuntu/libsvm-3.23/svm-train -s 0 -t 2 -m 1000 /home/ubuntu/libsvm-3.23/tools/file2 /home/ubuntu/libsvm_1July2019/out.model
#/home/ubuntu/libsvm-3.23/svm-predict  /home/ubuntu/libsvm-3.23/tools/file1  /home/ubuntu/libsvm_1July2019/out.model  out.txt

######################rbf 
#output print to console
#infile=`ls /home/ubuntu/*/out_*/Train_*_svm.txt`
for f in $(/bin/ls /home/ubuntu/*/out_*/Train_*_svm.txt)
do	
	echo $f
	F=$(echo $f | cut -d '/' -f 6)
	g=$(echo $f | cut -d '/' -f 6 | cut -d '_' -f 2)
	test_in="Test_"$g"_svm.txt"
	echo $F $test_in
	#model file saved to working dir
/home/ubuntu/libsvm-3.23/svm-train -s 0 -t 2 -m 2000 $f 

/home/ubuntu/libsvm-3.23/svm-predict  /home/ubuntu//out_*/$test_in  $F.model  /home/ubuntu/*/out_*/$F"_results.txt"
done
