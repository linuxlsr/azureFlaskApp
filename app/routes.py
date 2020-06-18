from flask import render_template
from app import app

@app.route('/')
@app.route('/index')
def index():
    user = {'username': 'Charles'}
    title = 'My Page'
    return render_template('index.html', title=title, user=user)