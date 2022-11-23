echo >&2 "Gzip"
rm -rf gzip-1.12
tar -xvf gzip-1.12.tar.xz
cd gzip-1.12

./configure --prefix=/usr

make
# make check
make -j1 install
