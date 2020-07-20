FROM ubuntu:18.04

RUN apt-get update && apt-get install -y python3 python3-pip && python3 -m pip install --no-cache --upgrade pip && pip3 install --no-cache rasa==1.5.3 && pip3 install ujson

RUN sudo /sbin/iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport 5005 -j ACCEPT

RUN sudo /sbin/iptables-save

COPY app /app
COPY server.sh /app/server.sh

#RUN cd app
#RUN rasa train nlu

ENTRYPOINT ["/app/server.sh"]
