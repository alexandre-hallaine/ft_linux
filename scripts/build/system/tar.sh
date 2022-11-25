echo >&2 "Tar"

set -e

rm -rf tar-1.34
tar -xvf tar-1.34.tar.xz
cd tar-1.34

FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr

make
# make check
make -j1 install
make -C doc install-html docdir=/usr/share/doc/tar-1.34
