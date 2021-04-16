FROM debian:latest

RUN apt-get update
RUN apt-get -y install python3 procps
RUN mkdir -p /ServerStatus/clients

COPY ./client-linux.py /ServerStatus/clients/client-linux.py
COPY ./client-psutil.py /ServerStatus/clients/client-psutil.py

WORKDIR /ServerStatus/clients

CMD python3 /ServerStatus/clients/client-linux.py