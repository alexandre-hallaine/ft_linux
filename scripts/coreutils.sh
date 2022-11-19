#!/bin/bash

set -e

cd sources
tar -xf coreutils-9.1.tar.xz
cd coreutils-9.1

# Start building
./configure --prefix=/usr

make -j$JOBS
sudo make install DESTDIR=$OS
# Build :D

cd ..
sudo rm -rf coreutils-9.1
