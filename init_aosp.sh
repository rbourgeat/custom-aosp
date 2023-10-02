#!/bin/bash

# Default value for the number of threads
j=16

if [ $# -eq 1 ]; then
  j="$1"
fi

mkdir aosp13
cd aosp13
git config --global user.name RandomSith
git config --global user.email randomsith@gmail.com
sudo apt install repo -y
y | repo init -u https://android.googlesource.com/platform/manifest -b android-13.0.0_r1
repo sync -c -j"${j}"
