#!/bin/bash

set -e
set -x

if [ $BUILD_DOCKER ]; then
   docker build . --build-arg GITHUB_USER_PASSWORD
else
   mkdir build
   cd build

   cmake -DCMAKE_BUILD_TYPE=Release ..
fi
