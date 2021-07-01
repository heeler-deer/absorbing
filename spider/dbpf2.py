import requests
from bs4 import BeautifulSoup  

#请求网页
url = "https://movie.douban.com/cinema/later/chengdu/"
# 伪装成浏览器的header
fake_headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36'
}
response = requests.get(url, headers=fake_headers) 
# 保存网页到本地
file_obj = open('douban.html', 'w') 
file_obj.write(response.content.decode('utf-8'))  
file_obj.close()

# 解析网页
# 初始化BeautifulSoup方法：利用网页字符串自带的编码信息解析网页
soup = BeautifulSoup(response.content.decode('utf-8'), 'lxml')
all_movies = soup.find('div', id="showing-soon")  
for each_movie in all_movies.find_all('div', class_="item"):  
    all_a_tag = each_movie.find_all('a')
    all_li_tag = each_movie.find_all('li')
    movie_name = all_a_tag[1].text
    moive_href = all_a_tag[1]['href']
    movie_date = all_li_tag[0].text
    movie_type = all_li_tag[1].text
    movie_area = all_li_tag[2].text
    movie_lovers = all_li_tag[3].text
    print('名字：{}，链接：{}，日期：{}，类型：{}，地区：{}， 关注者：{}'.format(
        movie_name, moive_href, movie_date, movie_type, movie_area, movie_lovers))
