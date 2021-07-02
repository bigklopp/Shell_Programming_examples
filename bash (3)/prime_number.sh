#!/bin/bash

for((i=2; i<100; i++))
do       
	 COUNT=0
	 j_num=`expr $i + 1`
	 for((j=1; j<$j_num; j++))
	 do	
		if [[ `expr $i%$j|bc` = 0 ]]
		then
			COUNT=`expr $COUNT + 1`
		fi
	 done
	 if [[ $COUNT = 2 ]]
	 then
		echo "$i"
	 fi

done	 
