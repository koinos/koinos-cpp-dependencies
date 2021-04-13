#!/bin/bash

set -e
set -x

if [ $BUILD_DOCKER ]; then
   docker build .
else
   mkdir build
   cd build

   cmake -DCMAKE_BUILD_TYPE=Release ..
fi
