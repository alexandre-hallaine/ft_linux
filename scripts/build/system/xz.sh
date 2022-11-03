echo >&2 "Xz"
rm -rf xz-5.2.7
tar -xvf xz-5.2.7.tar.xz
cd xz-5.2.7

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.2.7

make
# make -k check
make install
