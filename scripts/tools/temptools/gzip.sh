echo >&2 "Gzip"

set -e

rm -rf gzip-1.12
tar -xvf gzip-1.12.tar.xz
cd gzip-1.12

./configure --prefix=/usr --host=$LFS_TGT

make
make -j1 DESTDIR=$LFS install
