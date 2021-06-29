#!/bin/bash
read -p "실행할까요? (y/n)" CHOICE
if [[ $CHOICE = [yY]* ]] || [ "$CHOICE" = "" ]
then
echo "실행됨"
else
echo "실행 취소됨"
fi
