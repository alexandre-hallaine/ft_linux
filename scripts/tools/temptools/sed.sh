echo >&2 "Sed"

set -e

rm -rf sed-4.8
tar -xvf sed-4.8.tar.xz
cd sed-4.8

./configure --prefix=/usr   \
            --host=$LFS_TGT

make
make -j1 DESTDIR=$LFS install
