echo >&2 "Grep"

set -e

rm -rf grep-3.7
tar -xvf grep-3.7.tar.xz
cd grep-3.7

./configure --prefix=/usr

make
# make check
make -j1 install
