# -*- encoding: utf-8 -*-

import requests
import time
import os
import bs4
import CRUD

def get_one_html(url):  # Get the html page of a page and return
    try:
        #模拟浏览器
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.5615.50 Safari/537.36'}
        time.sleep(5)
        r = requests.get(url, headers=headers)
        # print(r.text)
        if r.status_code == 200:
            r.encoding = r.apparent_encoding
            return r.text
    except Exception as er:
        print(er)


def get_pic_url(html):  # Regularly extract key information of each page and return
    soup=bs4.BeautifulSoup(html,'html.parser')
    #去源代码中找到对应的图片位置
    pic_urls = soup.find_all(attrs={'class': 'p-img'})

    # pic_urls = re.findall('"pic_url":"(.*?)"', html, re.S)
    img_url = []  # Create an empty list with links to all pictures on each page
    for one_pic_url in pic_urls:
        k=one_pic_url.find("a")
        img=one_pic_url.find("img")
        href= img.get('data-lazy-img')
        img_url.append('http:' + href)
    return img_url  # Returns a list of links to pictures

def get_name(html):  # Regularly extract key information of each page and return
    soup=bs4.BeautifulSoup(html,'html.parser')
    pic_urls = soup.find_all(attrs={'class': 'p-name'})

    # pic_urls = re.findall('"pic_url":"(.*?)"', html, re.S)
    names = []  # Create an empty list with links to all pictures on each page
    for one_pic_url in pic_urls:
        k=one_pic_url.find("a")
        # name=one_pic_url.find("a").get("title")
        name=one_pic_url.text
        names.append(name)
    return names

def get_price(html):  # Regularly extract key information of each page and return
    soup=bs4.BeautifulSoup(html,'html.parser')
    pic_urls = soup.find_all(attrs={'class': 'p-price'})
    prices = []
    for one_pic_url in pic_urls:
        price = one_pic_url.find("i").contents
        prices.append(price)
    return prices


def write_to_file(page, img_urls,keyword):  # Write file (download)
    i = page  # Use page numbers to prevent subsequent writes from overwriting previous ones
    n = 0
    rootpath='./picture/1/'
    for pic_url in img_urls:
        pic = requests.get(pic_url)
        if not os.path.exists(rootpath):
            os.makedirs(rootpath)
            print("Directory created successfully!")
        with open(rootpath + str(i) +"-" +str(n) + '.jpg', 'wb') as f:
            f.write(pic.content)
        print('---Page {} Image {} downloaded successfully---'.format(str(i), str(n)))
        n += 1


def main(keyword, page, url,item_type):
    html = get_one_html(url)  # Call the function to get the hml of the page
    img_urls = get_pic_url(html)  #Call the function to get the links of all pictures on the page
    names = get_name(html)
    prices = get_price(html)
    CRUD.insertdata1(names, img_urls, prices, len(names),item_type)

    # write_to_file(page, img_urls,keyword)  # Call the function to download the picture upon writing
cloth_dict={
6   :'手机',
7   :'笔记本电脑',
8   :'书籍',
9   :'家电'

}

if __name__ == '__main__':
    # 关键字
    keyword = input('Please enter keywords:')
    # 爬几页
    page_num = eval(input('Please enter the number of pages to crawl:'))

    for page in range(1, page_num+1):
            url = "https://search.jd.com/Search?keyword=%s&enc=utf-8&page=%s"%(keyword,page*2-1)
            main(keyword, page, url,'手机')
            if page % 2 == 0:
                time.sleep(2)  # Stay for 10 seconds every 2 pages
