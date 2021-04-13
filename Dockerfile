FROM alpine:latest as builder

ARG GITHUB_USER_PASSWORD

RUN apk update && \
    apk add  \
        gcc \
        g++ \
        musl-dev \
        linux-headers \
        libgmpxx \
        cmake \
        make \
        git \
        perl \
        python3 \
        py3-pip \
        py3-setuptools && \
     pip3 install --user gitpython

ADD . /koinos-cpp-dependencies
WORKDIR /koinos-cpp-dependencies

RUN cmake -DCMAKE_BUILD_TYPE=Release .
