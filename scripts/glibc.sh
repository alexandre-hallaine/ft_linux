#!/bin/bash

set -e

cd sources
tar -xf glibc-2.36.tar.xz
cd glibc-2.36

# Start building
mkdir build
cd build

../configure --prefix=/usr

make
make install DESTDIR=$OS
# Build :D

cd ../..
rm -rf glibc-2.36
