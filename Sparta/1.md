Python firstday
===============
1. str로 묶어줄 수 있다
```python
a = 2
b = 'lee'

print(str(a) + b)  # 결과물 : 2lee 
```

2. 배열형
 => 순서가 중요할때
```python
a_list.append('수박')      # 결과 :  해당값을 배열에 추가한다.
```

3. dictionary형
 => 순서가 중요치않음(key로 찾는다)
```python
b_list['name']    # 결과 : 해당 key값의 value값을 출력한다.
```
4. if문과 반복문은 붙여서 많이쓴다
  * for ___ in _____
5. 파이썬의 내장함수
```python
result = myemail.split('@')[1]          # myemail을 @기준으로 쪼갠 후 1번째 값만 출력한다
result = myemail.replace('naver', 'gmail')       # myemail에 naver를 gmail로 바꿔준다.
```
6. 라이브러리
  * 셀레늄 : 브라우저 자동제어(리스트로 받아옴)
  * bs4(Beautiful soup) : 브라우저로 보고있는것중 원하는걸 SELECT해온다(SELECT or SELECT ONE사용)

```python
import dload
from bs4 import BeautifulSoup
from selenium import webdriver
import time

driver = webdriver.Chrome('chromedriver')
driver.get("https://search.daum.net/search?nil_suggest=btn&w=img&DA=SBC&q=%EC%9E%A5%EC%9A%B0%EC%98%81")      # 괄호안에는 원하는 URL을 넣는다
time.sleep(5)                                                                                                # 파이썬이 쉬는시간

req = driver.page_source                     # 페이지에서 받아온걸 모두 저장해서 변수에 저장
soup = BeautifulSoup(req, 'html.parser')     # beautifulsoup에다 넣고 내가 원하는부분만 솎아내겠다.


thumbnails = soup.select('#imgList > div > a > img')        # 해당 URL에서 원하는사진에 검사 > COPY SELECTOR로 경로가져오기 / 여러개를 가져올경우 SELECT

i = 1
for thumbnail in thumbnails:                          # 배열길이만큼만 반복되므로, 따로 반복문은 쓰지않는다.(1부터시작해 1씩늘려갈뿐)
    img = thumbnail['src']                            # thumbnail에 src만 가져온다
    dload.save(img, f'img_homework/{i}.jpg')          # 원하는 폴더에, 원하는 폴더명으로 가져온다 (f {} 사용)
    i += 1

driver.quit() # 끝나면 닫아주기
```
