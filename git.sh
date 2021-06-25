#!/bin/bash
Today=$(date)
echo "스마트 팩토리 학우 여러분 환영합니다"
if [ -e '/usr/bin/git' ]
   then
      echo "설치된 깃을 발견했습니다."
   else
      echo "깃을 설치합니다..."
      sudo apt-get install git -y
      git config --global user.name bigklopp
      git config --global user.email zmxncbv4@naver.com      
      

fi

if [ -e './.git' ] 
   then
      git add .
      git commit -m "$Today"

      echo ==========================================
      echo ==========================================
      echo ==========================================
      git push
      git config credential.helper store
      echo "커밋&푸시 완료!"

   else
      git clone https://github.com/bigklopp/Shell_Programming_examples.git
      echo "저장소를 받아왔습니다. 이제부터 이 곳에 파일을 저장하시면 됩니다."
      echo "이 파일과 지금까지 하신 작업물을 생성된 저장소에 넣고 다시 한번 이 쉘을 실행해 주세요."
      echo "감사합니다"
      
fi
