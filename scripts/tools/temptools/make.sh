echo >&2 "Make"
rm -rf make-4.4
tar -xvf make-4.4.tar.gz
cd make-4.4

./configure --prefix=/usr   \
            --without-guile \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make
make DESTDIR=$LFS install
