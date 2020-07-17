FROM ubuntu:18.04

ENV LANG C.UTF-8

#RUN sudo su
RUN apt-get update
RUN yum install python3-dev 
RUN yum install python3-pip	


RUN pip install rasa
RUN pip install ujson

