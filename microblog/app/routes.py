from flask import render_template
from app import app
from app.forms import LoginForm

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

@app.route('/login', methods=['GET', 'POST'])
def login():
    form = LoginForm()
    if form.validate_on_submit():
        flash('Login requested for user {}, remember_me={}'.format(
            form.username.data, form.remember_me.data))
        return redirect(url_for('index'))
    return render_template('login.html', title='Sign In', form=form)