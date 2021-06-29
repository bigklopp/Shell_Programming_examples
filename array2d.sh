#!/bin/bash

array1=(11 12 13 14 15)
array2=(21 22 23 24 25)
array3=(31 32 33 34 35)
array4=(41 42 43 44 45)
array5=(51 52 53 54 55)

array=(array1 array2 array3 array4 array5)
for((i=0; i<${#array[*]}; ++i))
do
	Line=${array[i]}[*]
	Line=(${!Line})
	for ((j=0; j<${#Line[*]}; ++j))
	do
		printf "${Line[j]} "
	done
	echo
done
