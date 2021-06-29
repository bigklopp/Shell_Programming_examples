#!/bin/bash

set $(date)

for VAL in $@
do
	echo $VAL
done

echo =========================
array=("년" "월" "일" "요일" "시분초" "시간 기준")
set ${array[*]}

for VAL in $@
do 
	echo $VAL
done
