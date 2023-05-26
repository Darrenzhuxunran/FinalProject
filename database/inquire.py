import random
import time
from .db import executionSql,CreateSql

def queryTypeRandomData(s,r):
    list = ['手机','电脑','图书','家电']
    dt = []
    for i in list:
        sql = f"SELECT * FROM commodity WHERE product_type ='{i}' LIMIT {s},{r}"
        data = executionSql(sql)
        dt.extend(data)
    dts = []
    for i in list:
        sql = f"SELECT * FROM commodity WHERE product_type ='{i}'"
        data = executionSql(sql)
        dts.extend(data)
    return dt,len(dts)

def queryTypeData(ds,s=0,r=10):
    dt = []
    for i in ds:
        sql = f"SELECT * FROM commodity WHERE product_type ='{i}'"
        data = executionSql(sql)
        dt.extend(data)
    dts = []
    for i in ds:
        sql = f"SELECT * FROM commodity WHERE product_type ='{i}' LIMIT {s},{r}"
        data = executionSql(sql)
        dts.extend(data)
    return dt,len(dts)

def queryData(name,ds):
    dt = []
    for i in ds:
        sql = f"SELECT * FROM `commodity` WHERE product_name LIKE '%{name}%' AND platform = '{i}' LIMIT 20"
        data = executionSql(sql)
        dt.extend(data)
    return dt



def inquire_user(username,password):
    sql = f"SELECT * FROM user WHERE username='{username}' and password ='{password}'"
    data = executionSql(sql)
    return data


def register(username,password):
    create_time = time.strftime('%Y-%m-%d %H:%M:%S')
    sql = f"INSERT INTO user(username,password,create_time) VALUES ('{username}','{password}','{create_time}')"
    CreateSql(sql)