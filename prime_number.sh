#!/bin/bash

for ((i=2;i<=100;i++))
do
	if [ ${i} -eq 2 ]
	then
		echo "${i}(은)는 소수입니다."
		continue
	fi
	for((j=2;j<${i};j++))
	do
		if [ `expr ${i} % ${j}` -eq 0 ]
		then
				break
		fi
		if [ "${i}" -eq `expr ${j} + 1` ]
		then
			echo "${i}(은)는 소수입니다."
		fi
	done
	
done
