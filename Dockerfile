FROM ubuntu:22.04

RUN apt-get update \
 && apt-get install -y build-essential libnode-dev

COPY main.cc v8api.h v8api.cc Makefile /src/

WORKDIR /src
CMD ["/bin/bash", "-c", "make && ulimit -c unlimited && ./a.out"]
