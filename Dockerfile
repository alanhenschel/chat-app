FROM python:3.9-slim

ENV PYTHONUNBUFFERED 1

# Install dependencies
COPY ./requirements.txt /requirements.txt
COPY ./requirements.txt /requirements.txt
RUN apt-get update \
    && apt-get -y install libpq-dev gcc
RUN pip install -r /requirements.txt

# Setup directory structure
RUN mkdir /app
WORKDIR /app
COPY ./app/ /app
