FROM ubuntu:18.04

ENV LANG C.UTF-8

#RUN sudo su
RUN apt-get update
RUN apt install -y python3-dev python3-pip


RUN pip3 install rasa
RUN pip install ujson

