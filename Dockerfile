FROM ubuntu:22.04

RUN apt-get update \
 && apt-get install -y build-essential libnode-dev

COPY hello-world.cc Makefile /src/

WORKDIR /src
CMD ["/bin/bash", "-c", "make && ./hello-world"]
