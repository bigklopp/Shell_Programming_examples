#!/bin/sh
NUM1=10
NUM2=2
NUM3=`echo "sqrt(${NUM1}^${NUM2})"|bc`
NUM4=`echo "3.2+5.1"|bc`
echo ${NUM3}
echo "3.2+5.1=${NUM4}"
