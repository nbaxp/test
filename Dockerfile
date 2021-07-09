FROM ubuntu:18.04

LABEL org.opencontainers.image.authors="76527413@qq.com"

RUN cat /etc/apt/sources.list && \
    sed -i s/archive.ubuntu.com/mirrors.ustc.edu.cn/g /etc/apt/sources.list && \
    sed -i s/security.ubuntu.com/mirrors.ustc.edu.cn/g /etc/apt/sources.list && \
    apt update -qqy && \
    rm -rf /var/lib/apt/lists/*

CMD uname -a