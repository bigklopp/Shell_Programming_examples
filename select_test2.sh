#!/bin/bash

PS3="오늘 날씨는?"
CORRECT="맑음"
EXIT="모름"

select CHOICE in "비" "흐림" "${CORRECT}" "${EXIT}"
do
if [ ${CHOICE} = "${CORRECT}" ]
then
echo "오늘 날씨는 맑음"
exit 0
elif [ ${CHOICE} = "${EXIT}" ]
then
echo "종료합니다."
exit 0
else
echo "[${CHOICE}]는 틀렸습니다."
fi
done
