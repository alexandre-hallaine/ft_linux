echo >&2 "Zlib"
rm -rf zlib-1.2.12
tar -xvf zlib-1.2.12.tar.gz
cd zlib-1.2.12

./configure --prefix=/usr

make
# make check
make install

rm -fv /usr/lib/libz.a
