#!/bin/bash

set -e

cd sources
tar -xf linux-6.0.9.tar.xz
cd linux-6.0.9

# Start building
make defconfig
make -j$JOBS

mkdir -pv $OS/boot
sudo cp -v arch/x86_64/boot/bzImage $OS/boot/vmlinuz-linux
# Build :D

cd ..
sudo rm -rf linux-6.0.9
