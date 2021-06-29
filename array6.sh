#!/bin/bash

array=("Apple" 200 3.14 400 "냠" 600) 	

for Temp in ${array[*]}
do
	echo $Temp
done

echo =======================
for Temp in ${array[@]}
do
	echo $Temp
done
