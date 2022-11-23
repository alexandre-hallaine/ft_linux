echo >&2 "Gawk"
rm -rf gawk-5.1.1
tar -xvf gawk-5.1.1.tar.xz
cd gawk-5.1.1

sed -i 's/extras//' Makefile.in

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make
make -j1 DESTDIR=$LFS install
