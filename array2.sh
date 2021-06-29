#!/bin/bash

array=(100 200 300 400 500)		

echo ${array[@]}				# 배열 전체	
echo ${array[*]}				# 배열 전체
echo ${#array[@]}				# 배열 크기/길이/요소 개수
echo ${#array[*]}				# 배열 크기/길이/요소 개수
