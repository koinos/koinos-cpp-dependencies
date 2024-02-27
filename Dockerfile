FROM alpine:3.18 as builder

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
        perl

ADD . /koinos-cpp-dependencies
WORKDIR /koinos-cpp-dependencies

RUN cmake -DCMAKE_BUILD_TYPE=Release .
