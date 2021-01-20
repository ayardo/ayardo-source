FROM debian:stretch
LABEL maintainer="Ayardo Developers <dev@ayardo.org>"
LABEL description="Dockerised AyardoCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
