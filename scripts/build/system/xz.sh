echo >&2 "Xz"

set -e

rm -rf xz-5.2.6
tar -xvf xz-5.2.6.tar.xz
cd xz-5.2.6

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.2.6

make
# make check
make -j1 install
