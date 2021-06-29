  
#!/bin/bash
Today=$(date)
clear
echo "스마트 팩토리 학우 여러분 환영합니다"
echo "배우신 내용을 입력하세요. 입력하지 않고 엔터를 누르면 현재 시간이 등록됩니다."
read MSG


if [ -e '/usr/bin/git' ]
	then
		echo "설치된 깃을 발견했습니다."
		git config --global user.name [이 곳에 사용자 명 입력, 대괄호 지울것]
		git config --global user.email [이 곳에 사용자 이메일 입력, 대괄호 지울것]
	else
		echo "깃을 설치합니다..."
		sudo apt-get install git -y
fi



if [ -e './.git' ] 
	then
		git add .
		git commit -m "${MSG:-$Today}"
		if [ -e '~/.git-credentials' ] 
			then 
				echo "로그인 정보가 저장되어 있습니다."
			else
				echo "로그인 정보를 저장합니다."
				git config credential.helper store
		fi

		echo ================================================================
		echo =========="자동 git-설치&커밋&푸시 쉘"===========================
		echo ========================================================="by 김보성"
		git push
		git pull

		echo "프로세스 완료. 문제가 있으시다면 해당 쉘 파일을 뜯어봅시다."

	else
		git clone [이곳에 저장소 주소 입력,대괄호 지울것]
		mv ./git.sh ./[저장소 이름 입력, 대괄호 지울것]/git.sh
		
		echo "저장소를 받아왔습니다. 이제부터 실행하실때마다 커밋&푸시 됩니다."
		
		
fi
#6월 27일 수정사항 : 처음에 헷갈려들 하는 저장소 받아온 후 저장소 안에 git.sh을 넣는 과정을 자동화했습니다.
