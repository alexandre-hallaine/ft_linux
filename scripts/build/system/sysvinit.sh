echo >&2 "Sysvinit"

set -e

rm -rf sysvinit-3.04
tar -xvf sysvinit-3.04.tar.xz
cd sysvinit-3.04

patch -Np1 -i ../sysvinit-3.04-consolidated-1.patch

make
make -j1 install
