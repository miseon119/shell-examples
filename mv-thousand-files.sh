# move thousand of files using ls command
for i in $(ls /reference/images/train);
do 
	mv /src-dir/"$i" /target-dir/train/;

done; 
