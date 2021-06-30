#!/bin/bash
function RetValue
{	
	echo "RetValue"
	return 100
}

RetValue
echo "함수 반환값1 : [${?}]" 
