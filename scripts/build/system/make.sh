echo >&2 "Make"

set -e

rm -rf make-4.3
tar -xvf make-4.3.tar.gz
cd make-4.3

./configure --prefix=/usr

make
# make check
make -j1 install
