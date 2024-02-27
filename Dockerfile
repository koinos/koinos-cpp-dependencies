FROM alpine:latest as builder

ARG GITHUB_USER_PASSWORD

RUN apk update && \
    apk add  \
        gcc-12 \
        g++-12 \
        musl-dev \
        linux-headers \
        libgmpxx \
        cmake \
        make \
        git \
        perl

ADD . /koinos-cpp-dependencies
WORKDIR /koinos-cpp-dependencies

ENV CC=gcc-12
ENV CXX=g++-12
RUN cmake -DCMAKE_BUILD_TYPE=Release .
