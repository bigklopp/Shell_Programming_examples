#!/bin/bash
for((i=1; i<10; i++))
do
	for((j=1; j<10; j++))
	do
	multiple=`expr "$j*$i"|bc` 
	echo " $j * $i = `expr $j*$i|bc`"
	done
	echo " "
done

