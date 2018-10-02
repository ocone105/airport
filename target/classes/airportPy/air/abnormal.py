'''
Created on 2018. 9. 23.

@author: dy
'''

from bs4 import BeautifulSoup
from selenium import webdriver
import sys
import pymongo
#cmd에서 easy_install pymongo 해서 pymongo먼저 설치
def getAbnormalInfo(inputdate):
    options = webdriver.ChromeOptions()
    options.add_argument('headless')
    options.add_argument("disable-gpu")

    driver = webdriver.Chrome("../driver/chromedriver", chrome_options=options)
    driver.get("http://www.airportal.go.kr/life/airinfo/RbHanFrmMain.jsp")
    driver.implicitly_wait(3)

    mypage = driver.page_source
    driver.find_element_by_xpath("""  /html/body/table/tbody/tr[5]/td[1]/table/tbody/tr[3]/td/table/tbody/tr[3]/td[2]/a""").click()
    
    driver.switch_to_frame("main")
    current_date = driver.find_element_by_id("current_date")
    current_date.clear()
    current_date.send_keys(inputdate)
    driver.find_element_by_xpath(""" //*[@id="ui-datepicker-div"]/div[2]/button[2]""").click()
    driver.find_element_by_xpath(""" /html/body/form/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td/table/tbody/tr[2]/td[2]/input[2]""").click()
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
        if data=="\xa0" or len(data)>=30 or data=="비고": 
            pass
        else:
            #print(data)
            tdlist.append(data)
            
    title=["checkday"]                   
    for i in range(0,18):
        if(i%2==0):
            title.append(tdlist[i])
    #print(title)
    
    abnormallist=[]
    listlen = int(len(tdlist)/11)
    #print(listlen)
    for i in range(listlen):    
        if i!=0:
            name = tdlist[11*i+7]
            abnormal = {
                    title[0]:inputdate,
                    title[1]:name[2:], 
                    title[2]:tdlist[11*i+8], 
                    title[3]:tdlist[11*i+9], 
                    title[4]:tdlist[11*i+10], 
                    title[5]:tdlist[11*i+11], 
                    title[6]:tdlist[11*i+12], 
                    title[7]:tdlist[11*i+13], 
                    title[8]:tdlist[11*i+14], 
                    title[9]:tdlist[11*i+15] 
                    }
            abnormallist.append(abnormal) 
    
    return abnormallist
    
#2017 10, 11, 12
#2018 01, 02, 03, 04, 05, 06, 07, 08, ~09/27
if __name__=="__main__":
    num = 20180719
    for i in range(0,1):
        abnormaldata = getAbnormalInfo(num)
        num = num+1
        print(abnormaldata)
        print(i)
        
        connection = pymongo.MongoClient("mongodb://localhost")
        db = connection.airport
        abnormals = db.abnormal

        try:
            abnormals.insert(abnormaldata)
        except:
            print ("insert failed"),sys.exc_info()[0]

        


    