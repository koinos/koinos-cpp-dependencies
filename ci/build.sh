#!/bin/bash

set -e
set -x

mkdir build
cd build

export HUNTER_PYTHON_LOCATION=/opt/pyenv/shims
echo $HUNTER_PYTHON_LOCATION

cmake -DCMAKE_BUILD_TYPE=Release ..
