import pymysql

# 使用python连接mysql数据库，并对数据库进行添加数据的方法
# 创建连接，数据库主机地址 数据库用户名称 密码 数据库名 数据库端口 数据库字符集编码
conn = pymysql.connect(host='127.0.0.1',
                       user='root',
                       password='zxr57344',
                       database='compare',
                       port=3306,
                       charset='utf8')
print("Successful connection")

# 创建游标
cursor = conn.cursor()


# 添加一条数据数据
def insertdata1(names,imgs,prices,num,item_type,fromweb='京东'):
    print("tet")
    for i in range(num):
        name = names[i]
        img = imgs[i]
        price = prices[i]
    
    # 执行语句
        cursor.execute('insert into commodity (product_name, img, product_describe,price,product_type,platform) values (%s,%s,%s,%s,%s,%s)',
            (name,img,name,price,item_type,fromweb))
    # 提交数据
    conn.commit()
    # closeconn()




# 关闭游标跟连接
def closeconn():
    # 关闭游标
    cursor.close()
    # 关闭连接
    conn.close()


# closeconn()