echo >&2 "Zlib"
rm -rf zlib-1.2.13
tar -xvf zlib-1.2.13.tar.xz
cd zlib-1.2.13

./configure --prefix=/usr

make
# make -k check
make install

rm -fv /usr/lib/libz.a
