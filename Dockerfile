FROM alpine
LABEL maintainer="soops@ucla.edu"
RUN apk update && apk upgrade
RUN apk add python3 py3-pip
RUN pip3 install flask

COPY python/app .

RUN export FLASK_APP=app

ENTRYPOINT ["flask run --host=0.0.0.0"]