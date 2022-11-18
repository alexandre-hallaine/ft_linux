#!/bin/bash

cd sources
tar -xvf linux-6.0.9.tar.xz
cd linux-6.0.9

# Start building
make defconfig
make
cp -v arch/x86_64/boot/bzImage $OS/boot/vmlinuz-6.0.9
# Build :D

cd ..
rm -rf linux-6.0.9
