#!/bin/bash

echo "행렬의 크기 n을 입력하세요. 달팽이 모양으로 나열합니다."
read n

b=0
t=`expr $n - 1`
i=0
k=0
j=0
#echo 'b = ' $b
#echo 't = ' $t
echo 'n = ' $n
#echo 'i = ' $i
#echo 'k = ' $k
#echo 'j = ' $j
################## 2차원 배열 선언 ##################
# array라는 이름으로 n의 개수에 따라 2차원 배열을    #
# 선언한다.                                         #
#####################################################

for ((p=0;p<=n;p++))
do
    Temp="array"${p}
    array+=( $Temp )
done


until [ $k -eq `expr $n \* $n` ]
do
    #k=`expr $k + 1`
    for ((j=$b;j<=$t;j++))
    do
        let k+=1
        Temp="${array[$i]}[$j]"
        eval ${Temp}=$k
        if [ $j -eq $t ]
        then
            let b+=1
            break
        fi
    done
    #디버그용 echo '첫 번째 for문 뒤에  i ='$i
    #디버그용 echo '첫 번째 for문 뒤에  j ='$j
    #디버그용 echo '첫 번째 for문 뒤에  b ='$b
    #디버그용 echo '첫 번째 for문 뒤에  t ='$t

    for ((i=$b;i<=$t;i++))
    do
        let k+=1
        Temp="${array[$i]}[$j]"
        eval ${Temp}=$k
        if [ $i -eq $t ]
        then
            let b-=1
            let t-=1
            break
        fi
    done
    #디버그용 echo '두 번째 for문 뒤에  i ='$i
    #디버그용 echo '두 번째 for문 뒤에  j ='$j
    #디버그용 echo '두 번째 for문 뒤에  b ='$b
    #디버그용 echo '두 번째 for문 뒤에  t ='$t
    for ((j=$t;j>=$b;j--))
    do
        let k+=1
        Temp="${array[$i]}[$j]"
        eval ${Temp}=$k
        if [ $j -eq $b ]
        then
            let b+=1
            break
        fi
    done
    
    for ((i=$t;i>=$b;i--))
    do
        let k+=1
        Temp="${array[$i]}[$j]"
        eval ${Temp}=$k
        if [ $i -eq $b ]
        then
            break
        fi
    done
    
    
done

for ((p=0;p<=$n;p++))
do
    Temp="${array[$p]}[*]"
    Temp=${!Temp}
    echo ${Temp}
done
