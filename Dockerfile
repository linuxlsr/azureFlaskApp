FROM alpine
LABEL maintainer="soops@ucla.edu"
RUN apk update && apk upgrade
RUN apk add python3 py3-pip
RUN pip3 install flask flask_wtf
EXPOSE 5000
COPY microblog .
RUN export FLASK_APP=microblog.py

ENTRYPOINT ["/usr/bin/flask", "run", "--host=0.0.0.0"]