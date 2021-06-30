#!/bin/bash
while [ 1 ]
do
read -p "비밀번호를 입력하세요 : "
if [ "${REPLY}" != "1234" ]
then
continue
fi
break
done
echo "비밀번호를 맞게 입력하셨습니다."
