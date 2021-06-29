#!/bin/bash

Value1="지옥으로 키티"
Value11="Value1"
Value2="Value1"
Value2=${!Value2}
Value3=($!Value2)
echo $Value1
echo $Value11
echo $Value2
echo $Value3
