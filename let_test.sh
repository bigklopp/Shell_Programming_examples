#!/bin/bash

let NUM1=13
let NUM1=NUM1+7
echo "13 + 7 = $NUM1"
let "NUM1 = NUM1+7"
echo "20 + 7 = $NUM1"

let NUM2=16
let "NUM2 /= 4"
echo "16 /4 = $NUM2"
let "NUM2 -= 5"
echo "4 - 5 =$NUM2"

let NUM3=7
let "NUM3 = NUM3 * 10"
echo "7 * 10 =$NUM3"
let "NUM3 %= 8"
echo "70을 8로 나눈 나머지는 = $NUM3"
