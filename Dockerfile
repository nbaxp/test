FROM ubuntu:18.04 as build

RUN cat /etc/apt/sources.list && \
    sed -i s/archive.ubuntu.com/mirrors.ustc.edu.cn/g /etc/apt/sources.list && \
    sed -i s/security.ubuntu.com/mirrors.ustc.edu.cn/g /etc/apt/sources.list && \
    sed -i s/ports.ubuntu.com/mirrors.ustc.edu.cn/g /etc/apt/sources.list && \
    apt update -y && \
    rm -rf /var/lib/apt/lists/*

FROM ubuntu:18.04

LABEL org.opencontainers.image.authors=76527413@qq.com

RUN dpkg --print-architecture && uname -apt

RUN env > /temp.txt

CMD dpkg --print-architecture