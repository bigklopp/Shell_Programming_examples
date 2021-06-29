#!/bin/bash
function ParamTest
{
	echo "ParamTest : ${1}, ${2}"
	return `expr ${1} + ${2}`
}

ParamTest 30 40
echo "함수 반환값 [${?}]"
