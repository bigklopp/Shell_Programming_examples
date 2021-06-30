#!/bin/bash

array=("Apple" 200 3.14 400 "냠" 600) # 아무거나 다 들어감		

echo ${array[@]}				# 배열 전체	
echo ${array[*]}				# 배열 전체
echo ${#array[@]}				# 배열 크기/길이/요소 개수
echo ${#array[*]}				# 배열 크기/길이/요소 개수
