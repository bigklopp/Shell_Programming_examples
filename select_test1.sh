#!/bin/bash

PS3="번호를 입력하세요 : "

select CHOICE in "Date" "Tree" "Exit"
do
	case ${CHOICE} in
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
