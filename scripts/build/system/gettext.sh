echo >&2 "Gettext"
rm -rf gettext-0.21
tar -xvf gettext-0.21.tar.xz
cd gettext-0.21

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.21

make
# make check
make -j1 install
chmod -v 0755 /usr/lib/preloadable_libintl.so
