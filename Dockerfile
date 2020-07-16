FROM ubuntu:16.04

ENV LANG C.UTF-8

RUN apt-get update
RUN apt install -y python3-dev python3-pip
RUN pip install -U pip
RUN pip install rasa
RUN pip install ujson
RUN pip install -U pip
