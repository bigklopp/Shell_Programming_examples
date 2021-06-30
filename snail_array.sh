#!/bin/bash

#array1=(11 12 13 14 15)
#array2=(21 22 23 24 25)
#array3=(31 32 33 34 35)
#array4=(41 42 43 44 45)
#array5=(51 52 53 54 55)
#array=(array1 array2 array3 array4 array5)
k=0
n=5
array=()
for ((i=1;i<=5;i++))
do
#array+=(${i})
#echo ${array[*]}
	for ((j=1;j<=5;j++))
	do
		let "k+=1"
		if [ ${j} -eq ${n} ]
		then
			let "n-=1"
			break
		fi
		array+=("${k}")
		echo $k
		echo ${array[*]}
	done
done
