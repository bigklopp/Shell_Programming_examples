#!/bin/bash

array=("Apple" 200 3.14 400 "냠" 600) 	

for Temp in "${array[*]}"
do
	echo $Temp
done

echo =======================
for Temp in "${array[@]}"
do
	echo $Temp
done  3 array=("Apple" 200 3.14 400 "냠" 600)
  4
  5 for Temp in "${array[*]}"
  6 do
  7     echo $Temp
  8 done
  9
 10 echo =======================
 11 for Temp in "${array[@]}"
 12 do
 13     echo $Temp
 14 done

