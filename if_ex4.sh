#!/bin/sh
if [ -r /etc/passwd ]
then
	echo "/etc/passwd는 읽기 가능합니다."
else
	echo "/etc/passwd는 읽기 불가능합니다."
fi
