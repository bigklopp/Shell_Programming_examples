#!/bin/sh
echo "파일명을 입력하시오"
read DATa1
echo =============================================
if [ -e ${DATa1} ] && [ -r ${DATa1} ] ; then
	head -3 ${DATa1}
else
	echo "${DATa1}파일을 읽을 수 없습니다."
fi
echo =============================================
if [ -e ${DATa1} -a -r ${DATa1} ] ; then
	head -3 ${DATa1}
else
	echo "${DATa1}파일을 읽을 수 없습니다."
fi
echo =============================================
