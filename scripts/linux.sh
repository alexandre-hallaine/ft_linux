#!/bin/bash

set -e

cd sources
tar -xf linux-6.0.9.tar.xz
cd linux-6.0.9

# Start building
make defconfig
make -j$JOBS

mkdir -pv $OS/boot
sudo make INSTALL_PATH=$OS/boot install
sudo make INSTALL_MOD_PATH=$OS/usr modules_install
sudo make INSTALL_HDR_PATH=$OS/usr headers_install
# Build :D

cd ..
sudo rm -rf linux-6.0.9
