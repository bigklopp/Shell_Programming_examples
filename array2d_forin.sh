#!/bin/bash

array1=(11 12 13 14 15)
array2=(21 22 23 24 25)
array3=(31 32 33 34 35)
array4=(41 42 43 44 45)
array5=(51 52 53 54 55)

array=(array1 array2 array3 array4 array5)
for Temp in ${array[@]}
do
#printf "$Temp"
#printf "\n"
	Line="${Temp}[*]"
	Line=${!Line}[*]
    printf "$Line \n"
	printf "${Temp[*]} \n"
	printf "${Temp} \n"
#	for Temp1 in ${Line[@]}
#do
#printf "${Temp1} "
#	done
	echo
done
