FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    python3.6 \
    python3-pip \
    libffi-dev \
    libxml2-dev \
    libxmlsec1-dev \
    libxmlsec1-openssl \
    git

ADD . /src
WORKDIR /src

RUN pip3 install -r requirements.txt