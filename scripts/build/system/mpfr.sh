echo >&2 "MPFR"

set -e

rm -rf mpfr-4.1.0
tar -xvf mpfr-4.1.0.tar.xz
cd mpfr-4.1.0

./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.1.0

make
make html
# make check
make -j1 install
make install-html
