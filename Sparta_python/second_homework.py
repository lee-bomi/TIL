from openpyxl import Workbook
from bs4 import BeautifulSoup
from selenium import webdriver

driver = webdriver.Chrome('chromedriver')

from openpyxl import Workbook

wb = Workbook()
ws1 = wb.active
ws1.title = "articles"
ws1.append(["제목", "링크", "신문사", "썸네일"])

url = f"https://search.naver.com/search.naver?&where=news&query=추석"

driver.get(url)
req = driver.page_source
soup = BeautifulSoup(req, 'html.parser')

articles = soup.select('#main_pack > div.news.mynews.section._prs_nws > ul > li')

wb = Workbook()
ws1 = wb.active
ws1.title = "articles"
ws1.append(["제목", "링크", "신문사"])

for article in articles:
    title = article.select_one('dl > dt > a').text
    link = article.select_one('dl > dt > a')['href']
    company = article.select_one('span._sp_each_source').text.split(' ')[0].replace('언론사','')

    ws1.append([title, link, company])

##################################
# 각 요소 크롤링해서 엑셀에 붙여넣기
##################################

wb.save(filename='articles.xlsx')
driver.quit()
wb.save(filename='articles.xlsx')