FROM docker.io/python:3.9-bookworm

RUN apt-get update && \
    apt upgrade -y && \
    apt -y install build-essential vim && \
    pip3 install --upgrade pip && \
    mkdir /src


RUN apt install -y curl graphviz font-manager git 

COPY requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN pip install jupyter

WORKDIR /src

