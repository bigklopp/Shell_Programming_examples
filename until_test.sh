#!/bin/sh
COUNT=1
SUM=0

until [ $COUNT -gt 10 ]
do
	SUM=`expr ${SUM} + ${COUNT}`
	COUNT=`expr ${COUNT} + 1`
done

echo "1부터 10까지 합 : $SUM"
