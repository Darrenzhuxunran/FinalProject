import time
import pandas as pd
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.action_chains import ActionChains
import CRUD

def get_infos(driver, pagenum):
    titles = []
    prices = []
    pic_urls = []
    for i in range(pagenum):
        # 模拟逐步滚动页面到页面底部
        for j in range(8):
            driver.execute_script("window.scrollBy(0, 500);")
            time.sleep(3)
        content_div = driver.find_element(By.XPATH, '//div[@class="Content--content--sgSCZ12"]')
        items = content_div.find_elements(By.XPATH, './/a[@class="Card--doubleCardWrapper--L2XFE73"]')
        print(len(items))
        for item in items:
            img_url = item.find_element(By.XPATH, './/img[@class="MainPic--mainPic--rcLNaCv"]').get_attribute('src')
            price = item.find_element(By.XPATH, './/span[@class="Price--priceInt--ZlsSi_M"]').text + item.find_element(
                By.XPATH, './/span[@class="Price--priceFloat--h2RR0RK"]').text
            title = item.find_element(By.XPATH, './/div[@class="Title--descWrapper--HqxzYq0 "]').text
            print(title, price, img_url)
            titles.append(title)
            prices.append(price)
            pic_urls.append(img_url)

        next_page = driver.find_element(By.XPATH, '//button[@class="next-btn next-medium next-btn-normal next-pagination-item next-next"]')
        driver.execute_script('arguments[0].click()', next_page)
        time.sleep(5)

    return titles,prices,pic_urls

def create_driver():
    options = webdriver.ChromeOptions()
    options.add_argument("--user-data-dir=C:\\Users\\Darren\\AppData\\Local\\Google\\Chrome\\User Data")
    options.add_argument("--profile-directory=Default")
    driver = webdriver.Chrome(options=options)
    return driver

def main(keyword,pagenum,item_type):
    driver = create_driver()
    driver.get('https://s.taobao.com/search?q=' + keyword)
    # wait until the element appear
    wait = WebDriverWait(driver, 10)
    sale_desc = wait.until(EC.presence_of_element_located((By.XPATH, '//li[@class="next-tabs-tab SortBar--customTabItem--YnxmQgr"]')))
    # sale sort button click
    driver.execute_script('arguments[0].click()', sale_desc)
    time.sleep(5)
    # get page infos
    titles, prices, pic_urls = get_infos(driver, pagenum)
    # insert DataBase
    CRUD.insertdata1(titles, pic_urls, prices, len(titles), item_type, '淘宝')
    # close the driver
    driver.quit()

# when crawling data, only modify params here
'''
keyword  -- keyword to search
pagenum -- number of page to crawl
item_type -- type of shop items
'''
main(keyword='huawei hornor',pagenum=2,item_type='手机')