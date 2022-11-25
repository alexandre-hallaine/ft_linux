echo >&2 "Acl"

set -e

rm -rf acl-2.3.1
tar -xvf acl-2.3.1.tar.xz
cd acl-2.3.1

./configure --prefix=/usr         \
            --disable-static      \
            --docdir=/usr/share/doc/acl-2.3.1

make
make -j1 install
