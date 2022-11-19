#!/bin/bash

set -e

cd sources
tar -xf bash-5.2.9.tar.gz
cd bash-5.2.9

# Start building
./configure --prefix=/usr

make -j$JOBS
sudo make install DESTDIR=$OS

sudo ln -sv bash $OS/bin/sh
# Build :D

cd ..
sudo rm -rf bash-5.2.9
