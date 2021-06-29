#!/bin/bash

set $(date)
trap 'echo "$LINENO : VAL=$VAL"' DEBUG
for VAL in $@
do
	echo $VAL
done
echo "a"
echo "b"
