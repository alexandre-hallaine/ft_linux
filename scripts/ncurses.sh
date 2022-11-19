#!/bin/bash

set -e

cd sources
tar -xf ncurses-6.3.tar.gz
cd ncurses-6.3

# Start building
./configure --prefix=/usr \
			--with-shared \
			--enable-widec

make -j$JOBS
sudo make install DESTDIR=$OS
# Build :D

cd ..
sudo rm -rf ncurses-6.3
