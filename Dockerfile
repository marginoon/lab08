FROM ubuntu:latest
RUN apt update

RUN apt install -yy g++ cmake
RUN apt install -yy gcc 

COPY . print/
WORKDIR print

RUN cmake -H. -B_build
RUN cmake --build _build

ENV LOG_PATH /home/logs/log.txt
