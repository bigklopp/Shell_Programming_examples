#!/bin/bash

set $(date)

while [ "$1" != "" ]
do
	echo $1
	shift
done

echo =========================
array=(11 12 13 14 15)

set ${array[*]}

while [ "$1" != "" ]
do
	echo $1
	shift
done
