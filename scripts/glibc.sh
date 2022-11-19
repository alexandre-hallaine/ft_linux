#!/bin/bash

set -e

cd sources
tar -xf glibc-2.36.tar.xz
cd glibc-2.36

# Start building
[ -d build ] && rm -rf build
mkdir build
cd build

../configure --prefix=/usr

make -j$JOBS
sudo make install DESTDIR=$OS
# Build :D

cd ../..
sudo rm -rf glibc-2.36
