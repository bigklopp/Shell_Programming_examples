#!/bin/bash
array1=(1 2 3 4 5)
array2=(6 7 8 9 10)
array3=(11 12 13 14 15)
array4=(16 17 18 19 20)
array5=(21 22 23 24 25)
#array1=()
#array2=()
#array3=()
#array4=()
#array5=()
array=(array1 array2 array3 array4 array5)
j=0
echo "행, 열의 개수를 입력"
read n
k=0
i=0
m=0 
p=$n
t=$n-1
b=0
#while [ $k -ne `expr $n \* $n` ]
#do
for ((j=$b;j<=$t;j++))
do
	let "k+=1"
	Line="${array[$i]}[$j]"
	eval ${Line}=${k}
	
	if [ $j -eq `expr $n - 1` ]
	then
		let "b+=1"
		break
	fi
done
echo 'n ='$n
for ((i=$b;i<=$t;++i))
do
	let "k+=1"
	Line="${array[$i]}[$j]"	
	eval ${Line}=${k}
	if [ $i -eq `expr $n` ]
	then
		let "t-=1"
		let "b-=1"
		break
	fi
	echo 'i ='$i
done
echo '두 번째 for문이 끝난 후 i = '$i
for ((j=$t;j>$b;--j))
do
	let "k+=1"	
	Line="${array[$i]}[$j]"
	eval ${Line}=${k}
	if [ $j -eq 0 ]
	then
		let "b-=1"
		break
	fi
done
echo '세 번째 for문이 끝난 후 i = '$i
echo '세 번째 for문이 끝난 후 j = '$j
for ((i=$t;i>=$b;--i))
do
	let "k+=1"
	Line="${array[$i]}[$j]"
	eval ${Line}=${k}
	if [ $i -eq `expr $n - 1` ]
	then
		let "n-=1"
		break
	fi
done
echo 'k = '$k
#done

#echo ${array[$i]}[$j]		

#Line="${array[$i]}[${j}]"
#Line=${!Line}
#echo $Line
#"${Line}"=${j}
#echo $Line
#echo ${Line[*]}
#echo ${array[*]}
echo ${array1[*]}
echo ${array2[*]}
echo ${array3[*]}
echo ${array4[*]}
echo ${array5[*]}
#echo ${Line[*]}
