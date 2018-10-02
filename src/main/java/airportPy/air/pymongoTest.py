'''
Created on 2018. 9. 28.

@author: kitri
'''
import sys
import pymongo

#cmd에서 easy_install pymongo 해서 pymongo먼저 설치
connection = pymongo.MongoClient("mongodb://localhost")
db = connection.pytest
users = db.users

doc = {'_id':'myid2','firstname':'Terry','lastname':'Cho2'}
try:
    users.insert(doc)
except:
    print ("insert failed"),sys.exc_info()[0]
