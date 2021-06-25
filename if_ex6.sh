#!/bin/sh
if [ -f ~/.vimrc ]
then
	echo "~/.vimrc는 일반 파일입니다."
else
	echo "~/.vimrc는 일반 파일이 아닙니다."
fi
