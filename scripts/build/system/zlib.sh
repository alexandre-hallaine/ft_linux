echo >&2 "Zlib"
rm -rf zlib-1.2.12
tar -xvf zlib-1.2.12.tar.xz
cd zlib-1.2.12

./configure --prefix=/usr

make
# make -k check
make install

rm -fv /usr/lib/libz.a
