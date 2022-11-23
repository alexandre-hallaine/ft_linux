echo >&2 "Inetutils"
rm -rf inetutils-2.3
tar -xvf inetutils-2.3.tar.xz
cd inetutils-2.3

./configure --prefix=/usr        \
            --bindir=/usr/bin    \
            --localstatedir=/var \
            --disable-logger     \
            --disable-whois      \
            --disable-rcp        \
            --disable-rexec      \
            --disable-rlogin     \
            --disable-rsh        \
            --disable-servers

make
# make check
make -j1 install

mv -v /usr/{,s}bin/ifconfig
