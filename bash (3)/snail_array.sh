#!/bin/bash
array1=(0 0 0 0 0)
array2=(0 0 0 0 0)
array3=(0 0 0 0 0)
array4=(0 0 0 0 0)
array5=(0 0 0 0 0)
array=(array1 array2 array3 array4 array5)

n=5
i=0
j=-1
k=1
num=1
while [ $num -lt 26 ]
do
	for l in $(seq 1 $n)
	do
		j=`expr $j + $k`
		record=${array[$i]}
		let $record[$j]=$num
		num=`expr $num + 1`
	done
	n=`expr $n - 1`
	if [ ${n} -eq 0 ];
	then
		break;
	fi
	for l in $(seq 1 $n)
	do
		i=`expr $i + $k`
		record=${array[$i]}
		let $record[$j]=$num
		num=`expr $num + 1`
	done		
	k=`expr $k*-1|bc`
done

for((i=0; i<${#array[*]}; ++i))
do
        Line=${array[i]}[*]
        Line=(${!Line})
        for((j=0; j<${#Line[*]}; ++j))
        do
                printf "${Line[j]} "
        done
        echo

done
