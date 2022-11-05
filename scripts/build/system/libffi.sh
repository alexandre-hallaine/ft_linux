echo >&2 "Libffi"
rm -rf libffi-3.4.4
tar -xvf libffi-3.4.4.tar.gz
cd libffi-3.4.4

./configure --prefix=/usr          \
            --disable-static       \
            --with-gcc-arch=native \
            --disable-exec-static-tramp

make
# make check
make install
