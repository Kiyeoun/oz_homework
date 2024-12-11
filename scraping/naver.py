import requests
from bs4 import BeautifulSoup

base_url = "https://search.naver.com/search.naver?ssc=tab.blog.all&sm=tab_jum&query="
keyword = input("검색을 원하는 키워드를 입력해주세요")
url = base_url + keyword
req = requests.get(base_url)

html = req.text
soup = BeautifulSoup(html,"html.parser")

results = soup.select_one(".title_link").text

for i in results :
    title = i.select_one
print(html)