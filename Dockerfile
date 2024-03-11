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
        perl \
        python3 \
        py3-pip \
        py3-setuptools \
        py3-gitpython \
        py3-requests

ADD . /koinos-cpp-dependencies
WORKDIR /koinos-cpp-dependencies

RUN cmake -DCMAKE_BUILD_TYPE=Release .
