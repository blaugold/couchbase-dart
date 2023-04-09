#!/usr/bin/env bash

set -e

# Run CMake configure
cmake -S . -B build -DCMAKE_BUILD_TYPE=RelWithDebInfo

# Run CMake build
cmake --build build -j $(node -e "console.log(require('os').cpus().length)")
