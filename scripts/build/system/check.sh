echo >&2 "Check"

set -e

rm -rf check-0.15.2
tar -xvf check-0.15.2.tar.gz
cd check-0.15.2

./configure --prefix=/usr --disable-static

make
# make check
make -j1 docdir=/usr/share/doc/check-0.15.2 install
