echo >&2 "Tar"
rm -rf tar-1.34
tar -xvf tar-1.34.tar.xz
cd tar-1.34

./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess)

make
make -j1 DESTDIR=$LFS install
