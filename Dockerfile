FROM ubuntu:16.04

ENV LANG C.UTF-8

RUN apt-get update
RUN apt install -y python3-dev python3-pip
RUN pip3 install -U pip3
RUN pip3 install rasa
