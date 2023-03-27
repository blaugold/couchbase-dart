#!/usr/bin/env bash

set -e

dart run ffigen --compiler-opts "-I$PWD/../../native/vendor/dart/include"
