for DAN in `seq 2 9`
do
	for count in `seq 1 9`
	do
		echo "$DAN * $count = " `expr $DAN*$count|bc`
	done
	echo " "
done
