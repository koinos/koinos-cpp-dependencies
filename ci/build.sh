#!/bin/bash

set -e
set -x

which python
python --version

which pip
pip --version

mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE=Release ..
