#!/bin/bash

set -e
set -x

mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE=Release ..
