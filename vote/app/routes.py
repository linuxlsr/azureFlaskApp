from flask import render_template
from app import app

@app.route('/')

@app.route('/index')
def index():
    message = 'Hello World!'
    return render_template('index.html', title='Home', message=message)