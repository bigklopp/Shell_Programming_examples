#!/bin/bash

for ((i=1; i<10; i++))
do
	echo "5 * $i = "`echo 5*$i|bc`
done
