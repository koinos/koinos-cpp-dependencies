#!/bin/bash

if [ "$CC" = "clang-11" ]; then
   wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -
   sudo apt-add-repository 'deb http://apt.llvm.org/focal/ llvm-toolchain-focal-11 main'
   sudo apt-get install -y llvm-11 clang-11
fi

pip3 install --user gitpython
