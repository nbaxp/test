ARG BUILD_IMAGE=ubuntu:18.04
ARG IMAGE=ubuntu:18.04
ARG BTANCH=master
ARG AUTHORS=76527413@qq.com

FROM $BUILD_IMAGE as build

RUN cat /etc/apt/sources.list && \
    sed -i s/archive.ubuntu.com/mirrors.ustc.edu.cn/g /etc/apt/sources.list && \
    sed -i s/security.ubuntu.com/mirrors.ustc.edu.cn/g /etc/apt/sources.list && \
    apt update -y && \
    rm -rf /var/lib/apt/lists/*

FROM $IMAGE

LABEL org.opencontainers.image.authors=$AUTHORS

RUN dpkg --print-architecture && uname -a

CMD dpkg --print-architecture