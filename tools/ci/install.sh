#!/bin/bash

if [[ -z $BUILD_DOCKER ]]; then
   sudo apt-get install -yq --allow-downgrades libc6=2.31-0ubuntu9.2 libc6-dev=2.31-0ubuntu9.2
   sudo -E apt-get -yq --no-install-suggests --no-install-recommends --allow-downgrades --allow-remove-essential --allow-change-held-packages install clang-11 llvm-11 -o Debug::pkgProblemResolver=yes

   pip3 install --user gitpython
fi
