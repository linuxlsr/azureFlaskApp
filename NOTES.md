Challenges so far:
- Alpine image compiler chain is broken so flask-sqlalchemy wouldn't install, so had to switch to python-slim.
- Brave browser keeps adding a trailing slash to the url when connected to a local host port, but not when the app is run locally.
Issue is not reproducible in Chrome, so that's fun...
-