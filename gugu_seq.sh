#!/bin/bash

for DAN in `seq 1 9`
do
	for CNT in `seq 1 9`
	do
    echo "$DAN * $CNT = `expr $DAN \* $CNT`"
	done
done
