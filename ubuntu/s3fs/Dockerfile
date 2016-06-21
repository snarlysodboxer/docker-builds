FROM ubuntu:12.04
MAINTAINER david amick <docker@davidamick.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && apt-get install -y build-essential libfuse-dev fuse-utils libcurl4-openssl-dev libxml2-dev mime-support automake libtool wget tar rsync && apt-get clean

RUN wget https://github.com/s3fs-fuse/s3fs-fuse/archive/v1.77.tar.gz -O /usr/src/v1.77.tar.gz
RUN tar xvz -C /usr/src -f /usr/src/v1.77.tar.gz
RUN cd /usr/src/s3fs-fuse-1.77 && ./autogen.sh && ./configure --prefix=/usr && make && make install

RUN mkdir /to

COPY rsync.sh /rsync.sh
RUN chmod +x /rsync.sh
ENTRYPOINT /bin/bash
CMD -l
