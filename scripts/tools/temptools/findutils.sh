echo >&2 "Findutils"
rm -rf findutils-4.9.0
tar -xvf findutils-4.9.0.tar.xz
cd findutils-4.9.0

./configure --prefix=/usr                   \
            --localstatedir=/var/lib/locate \
            --host=$LFS_TGT                 \
            --build=$(build-aux/config.guess)

make
make -j1 DESTDIR=$LFS install
