#!/bin/bash

PS3="번호를 입력하세요 : "

select CHOICE in ls pwd date exit
do
${CHOICE}
done
