#!/bin/bash

set -e
set -x

mkdir build
cd build

if [ "$RUN_TYPE" = "test" ]; then
   cmake -DCMAKE_BUILD_TYPE=Release ..
elif [ "$RUN_TYPE" = "coverage" ]; then
   cmake -DCMAKE_BUILD_TYPE=Debug -DCOVERAGE=ON ..
fi
