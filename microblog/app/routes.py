from flask import render_template
from app import app

@app.route('/')
@app.route('/index')
def index():
    user = {'username': 'carl'}
    posts = [
        {
            'author': {'username': 'John'},
            'body': 'More damage in the PNW!'
        },
        {
            'author': {'username': 'Susan'},
            'body': 'The Marvel Movies make me sqwee!'
        }
    ]
    return render_template('index.html', title='Home', user=user, posts=posts)