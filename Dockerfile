# Dockerfile for 'rmuller/jessie-oraclejdk8-wine'
#
FROM rmuller/jessie-oraclejdk8:1.0.0
MAINTAINER Ronald K. Muller <rmuller@xiam.nl>
WORKDIR /root/
RUN export DEBIAN_FRONTEND=noninteractive &&\
    dpkg --add-architecture i386 &&\
    apt-get update -qq &&\
    apt-get install -qq lib32z1 lib32ncurses5 libbz2-1.0:i386 wine:i386 &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* /var/log/apt/*
CMD /bin/bash
