FROM debian:bullseye as builder

RUN apt-get update -y && apt-get -y install git gcc g++ make libcurl4-openssl-dev \
    && git clone https://github.com/cppla/ServerStatus.git

WORKDIR /ServerStatus/server

RUN make
RUN pwd && ls -la

FROM nginx:latest

RUN mkdir -p /ServerStatus/server/

COPY --from=builder /ServerStatus/server /ServerStatus/server
COPY --from=builder /ServerStatus/web /usr/share/nginx/html/

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 80 35601

CMD nohup sh -c '/etc/init.d/nginx start && /ServerStatus/server/sergate --config=/ServerStatus/server/config.json --web-dir=/usr/share/nginx/html'
