FROM rasa/rasa:1.2.4

COPY app /app
COPY server.sh /app/server.sh

RUN rasa train nlu

ENTRYPOINT ["/app/server.sh"]

#FROM rasa/rasa:1.9.3

#RUN apt-get update && apt-get install -y python3 python3-pip && python3 -m pip install --no-cache --upgrade pip && pip3 install --no-cache rasa==1.2.4 && pip3 install ujson && pip3 install --no-cache python-engineio==3.8.1

#COPY app /app
#COPY server.sh /app/server.sh

#RUN cd app
#RUN rasa train nlu
#ENTRYPOINT ["/app/server.sh","--cors", "*"]
#ENTRYPOINT ["run", "--cors", "*", "--debug","/app/server.sh"]
