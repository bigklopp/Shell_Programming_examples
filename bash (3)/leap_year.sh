#!/bin/bash

read -p "년도를 입력하세요" YEAR

if [[ `expr $YEAR%400|bc` = 0 ]];
then
	echo "$YEAR는 윤년입니다."
else
	if [[ `expr $YEAR%4|bc` = 0 ]];
	then
		if [[ `expr $YEAR%100|bc` = 0 ]];
		then
			echo "$YEAR는 평년입니다."
		else
			echo "$YEAR는 윤년입니다."
		fi
	else
		echo "$YEAR는 평년입니다."
	fi

fi
