echo "Gawk"
tar -xvf gawk-5.1.1.tar.xz
cd gawk-5.1.1

sed -i 's/extras//' Makefile.in

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make
make DESTDIR=$LFS install
