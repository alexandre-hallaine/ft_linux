#!/bin/bash

set -e

cd sources
tar -xf linux-6.0.9.tar.xz
cd linux-6.0.9

# Start building
make defconfig
make

mkdir -pv $LFS/boot
cp -v arch/x86_64/boot/bzImage $OS/boot/vmlinuz-linux
# Build :D

cd ..
rm -rf linux-6.0.9
