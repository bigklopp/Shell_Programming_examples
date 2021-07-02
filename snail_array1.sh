#!/bin/bash

echo "행렬의 크기 n을 입력하세요. 달팽이 모양으로 숫자를 나열합니다."
read n
echo 'n = '$n
l=$n # limit
for ((p=0;p<=n;p++))
do
    Temp="array"${p}
    array+=($Temp)
done

i=0 # 행 번호
j=0 # 열 번호
m=0 # m은 limit를 만난 횟수
p=0 # p는 limit를 짝수 번 만난 횟수 m이 짝수일 때 1씩 올라간다.
sign=1 # 부호 : i와 j에 더할 숫자. 증가하거나 감소한다.


for ((k=1;k<=$n*$n;k++))
do
    Temp="${array[$i]}[$j]"
    eval ${Temp}=$k
    
    if [ $k -eq $l ]
    then
        let "m+=1"
        if [ `expr $m % 2` -eq 1 ]
        then
            let "p+=1"
        else
            let "sign*=-1"
        fi
        
        let "l+=$n-$p"
        #echo 'l = '$l

    fi       
    case `expr $m % 2` in
    0)
        let "j+=$sign"
        ;;
    1)
        let "i+=$sign"
        ;;
    esac          
done

for ((p=0;p<=$n;p++))
do
    Temp="${array[$p]}[*]"
    Temp=${!Temp}
    echo ${Temp}
done
