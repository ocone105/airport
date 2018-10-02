'''
Created on 2018. 9. 23.

@author: dy
'''

from bs4 import BeautifulSoup
from selenium import webdriver
import sys
import pymongo

def getNormalInfo(inputdate):
    options = webdriver.ChromeOptions()
    options.add_argument('headless')
    options.add_argument("disable-gpu")

    driver = webdriver.Chrome("../driver/chromedriver", chrome_options=options)
    driver.get("http://www.airportal.go.kr/life/airinfo/RbHanFrmMain.jsp")

    mypage = driver.page_source
    driver.switch_to_frame("main")
    current_date = driver.find_element_by_id("current_date")
    current_date.clear()
    current_date.send_keys(inputdate)
    driver.find_element_by_xpath(""" //*[@id="ui-datepicker-div"]/div[2]/button[2]""").click()
    driver.find_element_by_xpath(""" //*[@id="depArr_D"]""").click()
    driver.execute_script('go_search()')
    driver.implicitly_wait(5)
    
    driver.switch_to_frame("sframe")
    mypage = driver.page_source
    soup = BeautifulSoup(mypage, "html.parser")
    datalist1 = soup.find_all("td")
    tdlist=[]
    #test=[]
    for i in range(len(datalist1)):
        data = soup.find_all("td")[i].get_text()
        if data=="\xa0" or len(data)>=30: 
            pass
        else:
            #print(data)
            tdlist.append(data)
            
    title=["checkday","항공사","편명","목적지","계획","예상","출발","구분","현황"]                   
    
    normallist=[]
    listlen = int(len(tdlist)/9)
    for i in range(listlen):    
        if i!=0:
            name = tdlist[9*i]
            normal = {
                    title[0]:inputdate,
                    title[1]:name[2:], 
                    title[2]:tdlist[9*i+1], 
                    title[3]:tdlist[9*i+2], 
                    title[4]:tdlist[9*i+3], 
                    title[5]:tdlist[9*i+4], 
                    title[6]:tdlist[9*i+5], 
                    title[7]:tdlist[9*i+6], 
                    title[8]:tdlist[9*i+7], 
                    }
            normallist.append(normal) 
    
    return normallist
    
#2017 20171001~20171021
#2018
if __name__=="__main__":
    num = 20180927
    for i in range(0,1):
        alldata = getNormalInfo(num)
        num = num+1
        print(alldata)
        print(i)
        
        connection = pymongo.MongoClient("mongodb://localhost")
        db = connection.airport
        allflight = db.allflight

        try:
            allflight.insert(alldata)
        except:
            print ("insert failed"),sys.exc_info()[0]
    

    