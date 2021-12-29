FROM alpine
LABEL maintainer="soops@ucla.edu"
RUN apk update && apk upgrade

EXPOSE 5000

COPY microblog .

RUN apk add build-base python3 py3-pip
RUN apk add --no-cache supervisor
#RUN apk add --no-cache --virtual .build-deps libc-dev python3 py3-pip gcc musl-dev \
RUN pip3 install -r requirements.txt
#  && apk del .build-deps gcc musl-dev

RUN export FLASK_APP=microblog.py

ENTRYPOINT ["/usr/bin/flask", "run", "--host=0.0.0.0"]