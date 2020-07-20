#!/bin/sh

if [ -z "$PORT"]
then
  PORT=5005
fi

rasa run --model models --credentials credentials.yml  --enable-api --cors "*" --debug -p $PORT

#rasa run  --model models --enable-api --port $PORT
