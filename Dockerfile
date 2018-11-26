# this dockerfile use the ubuntu image
# version 1.0
# author: amos tsai
FROM ubuntu:18.04

MAINTAINER Amos Tsai <amos.tsai@gmail.com>

# ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8
ENV TZ=Asia/Taipei

# RUN sed -i 's/archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    sed -i 's/archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y build-essential net-tools && \
    apt-get install -y software-properties-common && \
    apt-get install -y man wget nano && \
    rm -rf /var/lib/apt/lists/*
