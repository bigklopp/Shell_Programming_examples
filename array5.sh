#!/bin/bash

array=("Apple" 200 3.14 400 "냠" 600) 		

for((i=0; i<6; ++i))
do
echo array[$i] =  ${array[i]}
done

for((i=0; i<${#array[*]}; ++i))
do
echo array[$i] =  ${array[i]}
done

