#!/bin/bash

set -e
set -x

which python
python --version

mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE=Release ..
