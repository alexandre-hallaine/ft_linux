echo >&2 "Gawk"
rm -rf gawk-5.2.0
tar -xvf gawk-5.2.0.tar.xz
cd gawk-5.2.0

sed -i 's/extras//' Makefile.in

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make
make DESTDIR=$LFS install
