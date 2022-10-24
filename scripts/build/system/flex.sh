echo >&2 "Flex"
tar -xvf flex-2.6.4.tar.gz
cd flex-2.6.4

./configure --prefix=/usr \
            --docdir=/usr/share/doc/flex-2.6.4 \
            --disable-static
make
make check
make install

ln -sv flex /usr/bin/lex
