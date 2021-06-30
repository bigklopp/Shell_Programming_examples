#!/bin/bash

echo "년도를 입력하세요"
read INPUT

if [ `expr ${INPUT} % 4` -eq 0 ] 
then
		if [ `expr ${INPUT} % 100` -ne 0 ]
			then
				echo "${INPUT}년은 윤년입니다."
			else
				if [ `expr ${INPUT} % 400` -eq 0 ]
				then
					echo "${INPUT}년은 윤년입니다."
				else
					echo "${INPUT}년은 윤년이 아닙니다."
			
				fi
			fi
else
	echo "${INPUT}년은 윤년이 아닙니다."
fi
