#!/bin/bash

set -e
set -x

mkdir build
cd build

export HUNTER_PYTHON_LOCATION=`which python3`

cmake -DCMAKE_BUILD_TYPE=Release ..
