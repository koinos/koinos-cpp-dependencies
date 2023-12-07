#!/bin/bash

set -e
set -x

if [[ -z $BUILD_DOCKER ]]; then
   mkdir build
   cd build

   cmake -DCMAKE_BUILD_TYPE=Release ..
else
   docker build . --build-arg GITHUB_USER_PASSWORD
fi
