#!/bin/bash

for((i=1;i<=9;i++))
do
	for((j=1;j<=9;j++))
	do
		echo "$i * $j =" `expr $i \* $j`
	done
done		
