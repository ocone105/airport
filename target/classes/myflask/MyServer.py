'''
Created on 2018. 3. 25.

@author: kim
'''
from flask import Flask

import urllib.request
from urllib.parse import urlparse
app = Flask(__name__)

@app.route("/")
def hell():
    return "hello"

@app.route("/test")
def requestTest():
    url = "http://www.encar.com/"
    
    mem = urllib.request.urlopen(url)
    '''
    print(type({}))
    print(type([]))
    print(type(()))'''
    #
    print(type(mem))
    print("geturl :",mem.geturl())
    print("status :",mem.status)
    print("headers :",mem.getheaders())#리스트를 이용해서 처리하며 이게 보기 힘들기 때문에
    print("info :",mem.info(),"\n")#이와 같은 방법으로 접근할 수 있다.
    
    print("getcode :",mem.getcode())
    print("read :",mem.read(10).decode('utf-8'))#숫자를 넣으면 해당 숫자만큼 데이터를 읽어온다.
                                                #문자열이 깨지거나 문자열을 맞춰야 할때
    return "read :"

if __name__ == '__main__':
    app.run(debug=True,host="127.0.0.1",port=5000)