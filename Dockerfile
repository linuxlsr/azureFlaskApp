#FROM alpine
FROM python:3.9-slim
LABEL maintainer="soops@ucla.edu"


EXPOSE 5000

COPY microblog .

# alpine install instructions, fails on sqlalchemy / greenlet
#RUN apk update && apk upgrade
#RUN apk add build-base python3 py3-pip
#RUN apk add --no-cache supervisor
RUN pip3 install -r requirements.txt


RUN export FLASK_APP=microblog.py

#alpine entrypoint
#ENTRYPOINT ["/usr/bin/flask", "run", "--host=0.0.0.0"]

# python entrypoint
ENTRYPOINT ["/usr/local/bin/flask", "run", "--host=0.0.0.0"]