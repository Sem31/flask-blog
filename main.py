from flask import Flask, render_template,request,redirect,url_for,flash,session
from datetime import datetime
from flask_mail import Message,Mail
from flask_sqlalchemy import SQLAlchemy
import os
import json
import math

local_server = 'True'
with open('C:/Users/hp/Desktop/python/Flask__Framwork/Blog/config.json','r') as c:
    params = json.load(c)["params"]
app = Flask(__name__)


#this code for database 
if (local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params["local"]
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params["prod"]


app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SQLALCHEMY_ECHO'] = True

db = SQLAlchemy(app)
app.secret_key = 'shhhh...iAmASecret!'

class Contacts(db.Model):
    name = db.Column(db.String(50)) 
    email = db.Column(db.String(50))
    phone = db.Column(db.Integer, primary_key=True)
    msg = db.Column(db.String(500))
    def __init__(self,  name, email, phone, msg):
        self.name = name
        self.email = email
        self.phone = phone
        self.msg = msg
# end Database
#post
class Post(db.Model):
    sno = db.Column(db.Integer, primary_key=True) 
    name = db.Column(db.String(50))
    title = db.Column(db.String(50))
    tag_line = db.Column(db.String(50))
    content = db.Column(db.String(500))
    img_file = db.Column(db.String(500))
    date = db.Column(db.String(500))
    slug = db.Column(db.String(50))
    def __init__(self,  sno,name,title,tag_line,content,img_file,date,slug):
        self.sno = sno
        self.name = name
        self.title = title
        self.tag_line = tag_line
        self.content = content
        self.img_file = img_file
        self.date = date
        self.slug = slug
#end post

# this code for email sending to user

app.config['MAIL_SERVER'] = 'smtp.gmail.com'
app.config['MAIL_PORT'] = 465
app.config['MAIL_USERNAME'] = params["gmail_name"]
app.config['MAIL_PASSWORD'] = params['gmail_pass']
app.config['MAIL_USE_TLS'] = False
app.config['MAIL_USE_SSL'] = True

mail = Mail(app)
#end Email

#file uploaded
UPLOAD_FOLDER = 'C:/Users/hp/Desktop/python/Flask__Framwork/Blog/static/img'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

@app.route('/upload', methods = ['GET','POST'])
def uploaded():
    if request.method == 'POST':
        file = request.files['file']
        f = os.path.join(app.config['UPLOAD_FOLDER'], file.filename)
        file.save(f)
        posts = Post.query.filter_by().all()
        return render_template('dash.html',params = params, posts = posts)

#end uploAD

@app.route('/')
def index():
    pos = Post.query.filter_by().all()
    last = math.ceil(len(pos)/int(params["post_no"]))

    page  = request.args.get("page")
    if( not str(page).isnumeric()):
        page =1
    page = int(page)
    pos = pos[(page-1)*int(params["post_no"]): (page-1)*int(params["post_no"])+int(params["post_no"])]

    #first page
    if(page == 1):
        prev  = "#"
        next = "/?page=" +str(page+1)
    elif (page == last):
        next  = "#"
        prev = "/?page=" +str(page-1)
    else:
        prev  = "/?page=" +str(page-1)
        next = "/?page=" +str(page+1)
    return render_template('index.html',params = params, pos = pos,prev = prev,next = next)


@app.route('/about')
def about():
    return render_template('about.html',params=params)


@app.route('/dashboard', methods = ['GET' , 'POST'])
def login():
    #admin already in session
    if 'user' in session and session['user'] == params['admin_user']:
        posts = Post.query.all()
        return render_template('dash.html',params=params,posts = posts)


    if request.method == "POST":
        username = request.form.get('uname')
        passwd = request.form.get('passwd')
        if username == params['admin_user'] and passwd == params['admin_pass']:
            #set the session variable
            session['user'] = username
            posts = Post.query.all()
            return render_template('dash.html',params=params, posts = posts)

    return render_template('login.html',params=params)

@app.route('/logout')
def logout():
    session.pop('user',None)
    return redirect(url_for('index'))

@app.route('/edit/<string:sno>',methods = ['GET','POST'])
def edit_post(sno):
    if 'user' in session and session['user'] == params['admin_user']:
        if request.method == "POST":
            box_sno = request.form.get('sno')
            box_name = request.form.get('name')
            box_title = request.form.get('title')
            box_tag = request.form.get('tag')
            box_slug = request.form.get('slug') 
            box_content = request.form.get('content')
            box_img = request.form.get('img')

            if (sno == '0'):
                posts = Post(sno = box_sno,name = box_name,title = box_title,tag_line =box_tag,content =box_content,img_file = box_img,date = datetime.now(),slug =box_slug)
                db.session.add(posts)
                db.session.commit()
            else:
                posts = Post.query.filter_by(sno = sno).first()
                posts.name = box_name
                posts.title = box_title
                posts.tag_line = box_tag
                posts.content = box_content
                posts.img_file = box_img
                posts.date = datetime.now()
                posts.slug = box_slug
                db.session.commit()
        postes = Post.query.filter_by(sno = sno).first()
        return render_template("edit_post.html", params = params,sno = sno, post = postes)

@app.route('/delete/<string:sno>',methods = ['GET','POST'])
def delete(sno):
    if 'user' in session and session['user'] == params['admin_user']:
        post= Post.query.filter_by(sno = sno).first()
        db.session.delete(post)
        db.session.commit()
    return redirect('/dashboard')


@app.route("/contact", methods = ['GET', 'POST'])
def contact():
    if request.method=='POST':
        name = request.form['name']
        email = request.form['email']
        phone = request.form['phone']
        msg = request.form['msg']
        '''Add entry to the database'''
        if not name or not email  or not phone  or not msg:
            flash('Please enter all the fields', 'error')
        else:
            student = Contacts(name, email, phone, msg)     
        db.session.add(student)
        db.session.commit()
        flash('Record was successfully added')
        msg = Message('New Message from Bolg',sender= email, recipients=['semprajapat31@gmail.com'], body=  msg +"\n" +  phone)
        mail.send(msg)
    return render_template('contact.html',params=params)

@app.route('/post/<string:post_slug>',methods=["GET","POST"])
def post_route(post_slug):
    posts = Post.query.filter_by(slug = post_slug).first()
    return render_template('post.html',params=params,post = posts)

if __name__ == '__main__':
    app.run(debug=True)