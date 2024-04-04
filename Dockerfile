FROM python:3.6-slim

ENV PYTHONUNBUFFERED 1

WORKDIR /app

ADD . /app
RUN apt-get update
RUN apt-get install gcc python3-dev
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
