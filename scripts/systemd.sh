#!/bin/bash

set -e

cd sources
tar -xf v252.tar.gz
cd systemd-252

# Start building
./configure --prefix=/usr

make -j$JOBS
sudo make install DESTDIR=$OS
# Build :D

cd ..
sudo rm -rf systemd-252
