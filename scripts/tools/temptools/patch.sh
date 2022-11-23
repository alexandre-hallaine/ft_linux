echo >&2 "Patch"
rm -rf patch-2.7.6
tar -xvf patch-2.7.6.tar.xz
cd patch-2.7.6

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make
make -j1 DESTDIR=$LFS install
