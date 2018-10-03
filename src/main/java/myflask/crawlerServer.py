'''
Created on 2018. 3. 25.

@author: kim
'''
from flask import Flask
from bs4 import BeautifulSoup
from selenium import webdriver
from datetime import datetime
import time
import json
app = Flask(__name__)
@app.route("/")
def hell():
    return "hello"

@app.route("/test")
def requestTest():
    driver = webdriver.Chrome("../driver/chromedriver")
    driver.get("https://datalab.naver.com/")
    driver.implicitly_wait(1)
    driver.find_element_by_xpath("""//*[@id="content"]/div[1]/div[3]/div[1]/a""").click()
    driver.find_element_by_xpath("""//*[@id="content"]/div[1]/div[3]/div[1]/ul/li[3]""").click()
    driver.get("https://datalab.naver.com/")
    res = driver.page_source
    soup = BeautifulSoup(res, "html.parser")
    
    
    top10 = soup.select("div.rank_inner.v2 > .rank_scroll > .rank_list > li a" )
    print(len(top10))
    #print("크롤링시작+++++++++++++++++++++++")
    result=[]
    mydate = datetime.today().strftime("%Y%m%d")
    with open("result_"+mydate+".txt","w",encoding="utf-8") as file:
        for e in top10:
            file.writelines(e.find("em").string +","+ e.find("span").string+"\n" )
        
    #print(json.dumps(result))
    time.sleep(3)
    #driver.close()
    driver.quit()
    
    return "ok"

if __name__ == '__main__':
    app.run(debug=True,host="127.0.0.1",port=5000)