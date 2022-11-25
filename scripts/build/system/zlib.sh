echo >&2 "Zlib"

set -e

rm -rf zlib-1.2.12
tar -xvf zlib-1.2.12.tar.xz
cd zlib-1.2.12

./configure --prefix=/usr

make
# make check
make -j1 install

rm -fv /usr/lib/libz.a
