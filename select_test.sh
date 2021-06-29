#!/bin/bash
PS3="번호를 입력하세요 : "
select CHOICE in "Date" "Tree" "Exit" "파일 리스트"
do
case ${CHOICE} in
"파일 리스트")
clear
ls -l
;;
"Tree")
tree
;;
"Date")
date
;;
"Exit")
exit 0
;;
*)
echo "입력 오류"
;;
esac
done
