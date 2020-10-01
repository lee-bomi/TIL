import dload
from bs4 import BeautifulSoup
from selenium import webdriver
import time

driver = webdriver.Chrome('chromedriver')
driver.get("https://search.daum.net/search?nil_suggest=btn&w=img&DA=SBC&q=%EC%9E%A5%EC%9A%B0%EC%98%81") # 여기에 URL을 넣어주세요
time.sleep(5)

req = driver.page_source     # 페이지에서 받아온걸 모두 저장해서 변수에 저장
soup = BeautifulSoup(req, 'html.parser')     # beautifulsoup에다 넣고 내가 원하는부분만 솎아내겠다.


thumbnails = soup.select('#imgList > div > a > img')

i = 1
for thumbnail in thumbnails:
    img = thumbnail['src']
    dload.save(img, f'img_homework/{i}.jpg')
    i += 1

driver.quit() # 끝나면 닫아주기