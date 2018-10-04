'''
Created on 2018. 10. 1.

@author: kitri
'''
import pymongo
import sys

#############몽고db연동#####################

from bs4 import BeautifulSoup
from selenium import webdriver
 
#창 안열리게 하는 option
options = webdriver.ChromeOptions()
options.add_argument('headless')
options.add_argument("disable-gpu")
 
driver = webdriver.Chrome("../driver/chromedriver", chrome_options=options)
driver.get("http://amo.kma.go.kr/new/html/weather/weather01_03.jsp")
kmapage = driver.page_source
soup = BeautifulSoup(kmapage,"html.parser")
 
date = soup.select("tr.t_date > td > div")  #날짜
time = soup.select("tr.t_time > td > div.box > span")   #시각
weather = soup.select("tr.t_weather > td > span")   #날씨
base = soup.select("tr.t_base > td > table > tbody > tr > td")  #운고
speed = soup.select("tr.t_speed > td > span")   #풍속
 
daydata=[]
for i in date:
    daydata.append(i.string)
for i in range(len(daydata)):
    j = daydata[i]
    daydata[i] = j[11:]
    j = daydata[i]
    daydata[i]=j[:-17]
     
timedata=[]
for i in time:
    timedata.append(i.string)
     
weatherdata=[]
for i in weather:
    weatherdata.append(i.string)
     
basedata=[]
basedataone=[]
for i in base:
    basedataone.append(i.string)
    if len(basedataone)==4: 
        basedata.append(basedataone)
        basedataone=[]
    
speeddata=[]
for i in speed:
    speeddata.append(i.string)
 
 
result=[]
if (int)(timedata[0]) > 12:
    num = 24 - (int)(timedata[0])
    dayday = daydata[0]
    for x in range(len(timedata)):
        if (int)(timedata[x])==0 and dayday==daydata[0]:
            dayday = daydata[2]
        elif (int)(timedata[x])==0 and dayday==daydata[2]:
            dayday = daydata[3]
        resultone = {"날짜":dayday,"시각":timedata[x],"날씨":weatherdata[x],"운고1":basedata[x][3],"풍속":speeddata[x]}
        result.append(resultone)
        resultone = {"날짜":dayday,"시각":timedata[x],"날씨":weatherdata[x],"운고2":basedata[x][2],"풍속":speeddata[x]}
        result.append(resultone)
        resultone = {"날짜":dayday,"시각":timedata[x],"날씨":weatherdata[x],"운고3":basedata[x][1],"풍속":speeddata[x]}
        result.append(resultone)
        resultone = {"날짜":dayday,"시각":timedata[x],"날씨":weatherdata[x],"운고4":basedata[x][0],"풍속":speeddata[x]}
        result.append(resultone)
elif (int)(timedata[0]) < 12:
    num = 12 - (int)(timedata[0]) 
    dayday = daydata[0]
    for x in range(len(timedata)):
        if (int)(timedata[x])==0:
            dayday = daydata[2]
        resultone = {"날짜":dayday,"시각":timedata[x],"날씨":weatherdata[x],"운고1":basedata[x][3],"풍속":speeddata[x]}
        result.append(resultone)
        resultone = {"날짜":dayday,"시각":timedata[x],"날씨":weatherdata[x],"운고2":basedata[x][2],"풍속":speeddata[x]}
        result.append(resultone)
        resultone = {"날짜":dayday,"시각":timedata[x],"날씨":weatherdata[x],"운고3":basedata[x][1],"풍속":speeddata[x]}
        result.append(resultone)
        resultone = {"날짜":dayday,"시각":timedata[x],"날씨":weatherdata[x],"운고4":basedata[x][0],"풍속":speeddata[x]}
        result.append(resultone)

connection = pymongo.MongoClient("mongodb://localhost")
db = connection.airport
weather2 = db.weather2

try:
    weather2.insert(result)
except:
    print ("insert failed"),sys.exc_info()[0]