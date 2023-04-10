#!/bin/bash
set -x -e
cd "$(dirname "$0")"
mkdir -p build
rm -rf build/*
CPP20_FLAGS="-std=c++20 -fmodules-ts -x c++-system-header iostream memory array span ranges vector algorithm cstdint"
COMPILER_FLAGS="-Wall"
g++ $COMPILER_FLAGS -o build/main.out src/main.cpp $CPP20_FLAGS

