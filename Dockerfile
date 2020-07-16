FROM ubuntu:16.04

ENV LANG C.UTF-8

#RUN sudo su
RUN apt-get update
RUN sudo apt install python3-dev 
RUN sudo apt install python3-pip	


RUN sudo pip install rasa
RUN sudo pip install ujson

