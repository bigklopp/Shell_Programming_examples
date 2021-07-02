#!/bin/bash
k=0
n=5
m=5
i=1
while [ ${k} != 25 ]
do
	for ((j=1;j<=${n};j++))
	do
		let "k+=1"
		

		Line=${array[$i]}
		Line[$j]=${k}
		array+=("${k}")
		if [ ${j} -eq ${n} ]
		then
			let "n-=1"
			break
		fi
	done
	for ((i=1;i<=${n};i++))
	do
		let "k+=1"
		array2+=("${k}")
	done
	break
done
echo ${array[*]}
echo ${array2[*]}
echo ${array3[*]}
echo ${array4[*]}
#echo ${array[*]}
