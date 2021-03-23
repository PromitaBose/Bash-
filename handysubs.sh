####run on terminal 
gawk '{sub(/HMDB/,"\"HMDB");print}'  Metabolon_test_3.txt  > out_1.txt
 gawk '{sub(/\t\/cygdrive/, "\"\t \/cygdrive");print}'   out_1.txt  > out_2.txt

 gawk '{sub(/HMDB_splitfiles/,"HMDB_XML_700files");print}'  get_xml_files.sh
