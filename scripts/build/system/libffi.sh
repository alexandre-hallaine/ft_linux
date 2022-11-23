echo >&2 "Libffi"
rm -rf libffi-3.4.2
tar -xvf libffi-3.4.2.tar.gz
cd libffi-3.4.2

./configure --prefix=/usr          \
            --disable-static       \
            --with-gcc-arch=native \
            --disable-exec-static-tramp

make
# make check
make -j1 install
