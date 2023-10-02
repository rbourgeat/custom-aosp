#!/bin/bash

# Default value for the number of threads
j=16

if [ $# -eq 1 ]; then
  j="$1"
fi

. build/envsetup.sh
lunch aosp_arm64-eng
m -j"${j}"