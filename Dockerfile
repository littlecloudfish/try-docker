FROM ubuntu:22.04
FROM python:3.8-slim-buster
# install app dependencies
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get update && apt-get install -y python3 python3-pip
RUN apt-get -y install git
COPY . .
RUN pip3 install -r requirements-dev.txt
# install app
# final configuration
