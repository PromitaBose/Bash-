#! /bin/bash
##
/usr/bin/sftp -oPort=22 promita@serverxxx.uni-heidelberg.de:/BigData//ctrl16/ <<EOF
mput /Users//Downloads//data/200721_A00382_0156_AHNWT3DMXX/AS-504503-LR-5145[8,9]/fastq/*.fastq.gz
###---------------------------------------------------------------------------
##cd /BigData//Nash_9b_fastq/  
mput /Users/bosep/Downloads//data/200721_A00382_0156_AHNWT3DMXX/AS-504505-LR-5145[8,9]/fastq/*.fastq.gz
##cd /BigData//Nash_9c_fastq/
mput /Users/Downloads//data/200721_A00382_0156_AHNWT3DMXX/AS-504507-LR-5145[8,9]/fastq/*.fastq.gz
##cd /BigData//Nash_9d_fastq/ 
mput /Users//Downloads//data/200721_A00382_0156_AHNWT3DMXX/AS-504509-LR-5145[8,9]/fastq/*.fastq.gz
exit
EOF
