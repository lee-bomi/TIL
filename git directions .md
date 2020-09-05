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

-__staging area의 존재이유__ : 파일수정은 했자만, 최신모습으로 커밋하고 싶지않은경우를 대비하기 위함  


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


commit 다루기
-------------------
#### 1. git log : 현재까지 모든 커밋 소환(4줄형태로_ID,사용자ID,날짜,커밋메세지)
  * __git log --prety=oneline__ : (1줄 형태로 나타낸다)
#### 2. git show + ID : 각 기록에 무슨일이 있었는지 확인
#### 3. git commit => i(기록모드) => commit메세지(제목 / 내용) => 맨아래 :wq 써서 마무리
#### 4. git alias : 자주쓰는 Command에 별명을 붙임
  * git config alias.history 'log --prety=oneline' : alias.원하는별명 '원래의 Command'  
#### 5. git diff ____ ____ : Command사이에 어떤 다른점이 있는지 확인(보통 더 과거프로젝트 ID를 먼저쓴다)
#### 6. git reset : 어느시점이후로 작업이 맘에안들때 돌아간다.(Working tree도 과거의 모습으로 돌아간다)
#### 7. 최근커밋 수정법(a.k.a ctrl z와 같다)
  * 내용수정 => git add. => git commit --amend => commit message수정하여 commit
### ___Commit Message Write Method___ 
" 첫글자는 대문자, 명령조로 쓸것(Fix the code), 끝에 온점x
" 내용은 `왜 했는지`, `어떤 문제가 있었는지`, `적용한게 어떤효과가 가는지`
