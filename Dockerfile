FROM alpine:3.13

RUN apk add --update --no-cache python3 coreutils iproute2 procps
RUN mkdir -p /ServerStatus/clients

COPY ./client-linux.py /ServerStatus/clients/client-linux.py
COPY ./client-psutil.py /ServerStatus/clients/client-psutil.py

WORKDIR /ServerStatus/clients

CMD python3 -u /ServerStatus/clients/client-linux.py
