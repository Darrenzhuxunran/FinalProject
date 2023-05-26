from app import app
from flask import render_template,request,redirect,url_for,session
from database import queryTypeData,queryTypeRandomData,inquire_user,register,queryData
import json
import math

@app.route('/',methods=['GET','POST'])
def index():
    pagesize = 10
    data,countdata = queryTypeRandomData(0,3)
    p = request.args.get('p')
    page = 0
    if session.get('username') != None:
        if p == None:
            data,countdata = queryTypeRandomData(0,10)
            page = math.ceil(countdata/ pagesize)
        elif p != None:
            data,countdata = queryTypeRandomData((int(p) - 1)* pagesize,int(p) * pagesize)
            page = math.ceil(countdata/ pagesize)
    if request.method == 'POST':
        if session.get('username') == None:
            return redirect(url_for('Login'))
        types = request.form.getlist('type')
        data,countdata = queryTypeData(types)
        page = math.ceil(countdata / pagesize)
    return render_template('index.html',data=data,page=page)

@app.route('/parity',methods=['GET','POST'])
def parity():
    data = []
    if request.method == 'POST':
        if session.get('username') == None:
            return redirect(url_for('Login'))
        name = request.form.get('name')
        data = queryData(name,['京东','淘宝'])
    return render_template('parity.html',data=data)



@app.route('/Login',methods=['GET','POST'])
def Login():
    error = None
    if request.method == 'POST':
        username = request.form.get('username')
        password = request.form.get('password')
        if len(username) < 6 or len(password) < 6:
            error =  'User name or password length less than 6 bits'
        if inquire_user(username,password):
            session['username'] = username
            return redirect(url_for('index'))
        else:
            error = 'Incorrect username or password'
    return render_template('Login.html',error=error)


@app.route('/Register',methods=['GET','POST'])
def Register():
    error = None
    # 方法的大小写
    if request.method == 'POST':
        username = request.form.get('username')
        password = request.form.get('password')
        repassword = request.form.get('repassword')
        if len(username) < 6 or len(password) < 6:
            error = 'User name or password length less than 6 bits'
        elif password != repassword:
            error = 'Two password outputs do not match'
        elif inquire_user(username, password):
            error = 'User presence'
        elif error is None:
            register(username, password)
            return redirect(url_for ('Login'))  # 重定向
    return render_template('Register.html',error=error)


@app.route('/Logout')
def Logout():
    session.clear()
    return redirect(url_for('Login'))