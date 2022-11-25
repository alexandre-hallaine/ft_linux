echo >&2 "Xz"

set -e

rm -rf xz-5.2.6
tar -xvf xz-5.2.6.tar.xz
cd xz-5.2.6

./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess) \
            --disable-static                  \
            --docdir=/usr/share/doc/xz-5.2.6

make
make -j1 DESTDIR=$LFS install

rm -v $LFS/usr/lib/liblzma.la
