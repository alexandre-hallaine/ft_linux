echo >&2 "Attr"
rm -rf attr-2.5.1
tar -xvf attr-2.5.1.tar.gz
cd attr-2.5.1

./configure --prefix=/usr     \
            --disable-static  \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.5.1

make
# make -k check
make install
