FROM ubuntu:16.04

ENV LANG C.UTF-8

RUN sudo su
RUN apt-get update
RUN apt install python3-dev 
RUN apt install python3-pip	


RUN pip install rasa
RUN pip install ujson

