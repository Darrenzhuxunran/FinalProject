import pymysql
import config
from pymysql.cursors import DictCursor

# Link Database
def dbLink():
    db = pymysql.connect(
        host=config.HOST,
        user=config.USERNAME,
        password=config.PASSWORD,
        database=config.DATABASE,
        port=3306
    )
    cursor = db.cursor(DictCursor)   # Create cursor objects using db's methods
    return cursor,db

# Direct sql statements
def executionSql(sql,isSubmit=False):
    cursor,db = dbLink()
    if isSubmit:
        cursor.execute(sql)  # Execute sql commands with cursor object execute() method
        db.commit()   # Submit to database for execution
    else:
        cursor.execute(sql)
    res = cursor.fetchall()
    cursor.close()
    db.close()
    return res
# 创建
def CreateSql(sql):
    cursor,db = dbLink()
    cursor.execute(sql)
    db.commit()
    res = cursor.rowcount
    cursor.close()
    db.close()
    return res

# 删除
def deleteSql(sql):
    cursor,db = dbLink()
    cursor.execute(sql)
    db.commit()
    res = cursor.rowcount
    cursor.close()
    db.close()
    return res
    
# 更新
def updateSql(sql):
    cursor,db = dbLink()
    cursor.execute(sql)
    db.commit()
    res = cursor.rowcount
    cursor.close()
    db.close()
    return res
