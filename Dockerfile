# this dockerfile use the ubuntu image
# version 1.0
# author: amos tsai
FROM ubuntu

MAINTAINER Amos Tsai <amos.tsai@gmail.com>

# ENV DEBIAN_FRONTEND=noninteractive

ENV TZ=Asia/Taipei

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    sed -i 's/archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y build-essential && \
    apt-get install -y software-properties-common && \
    apt-get install -y curl man wget nano && \
    rm -rf /var/lib/apt/lists/*
