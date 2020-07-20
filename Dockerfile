FROM ubuntu:18.04

RUN apt-get update && apt-get install -y python3 python3-pip && python3 -m pip install --no-cache --upgrade pip && pip3 install --no-cache rasa==1.8.2 && pip3 install ujson

COPY app /app
COPY server.sh /app/server.sh

#RUN cd app
#RUN rasa train nlu

ENTRYPOINT ["run", "--cors", "*", "--debug","/app/server.sh"]
