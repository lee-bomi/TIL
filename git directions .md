git사용법
==============
git
-----------
#### 1. git 사용절차
- Working directory(working tree) : 파일을 만들어 저장하는 공간  
  | `add`    <-> `git reset`
- Staging area : add한 파일이 모여있는곳(선별적으로 `원하는것만 커밋`하기위함)  
  | `commit`
- Repository : working tree에 변경이력이 저장되어 있는곳

-__staging area의 존재이유__ : 파일수정은 했찌만, 최신모습으로 커밋하고 싶지않은경우를 대비하기 위함  


#### 2. git 파일상태
- untracked : add X
- tracked 
  1. __staged__ : 처음 add했거나, commit된걸 수정하고 add한 상태
  2. __unmodified__ : commit직후 working directory내부 파일
  3. __modified__ : 수정된 상태  


#### 3. 기타 command 
- git help add = man git-add   /  나갈때는 q (quit의 줄임말)
- git init : 현재 디렉토리를 working tree로 지정 및 그안에 디렉토리 생성
- git config user.name 'bomi' & user.email 'bomvll@naver.com'  



git-hub
---------------
: remote repository라 칭함
- cat readme.md : pull해온 내용을 확인
- git clone 주소 : 다른사람꺼 복사해올때
