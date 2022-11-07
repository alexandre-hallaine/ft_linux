echo >&2 "Man-DB"
rm -rf man-db-2.11.0
tar -xvf man-db-2.11.0.tar.xz
cd man-db-2.11.0

./configure --prefix=/usr                         \
            --docdir=/usr/share/doc/man-db-2.11.0 \
            --sysconfdir=/etc                     \
            --disable-setuid                      \
            --enable-cache-owner=bin              \
            --with-browser=/usr/bin/lynx          \
            --with-vgrind=/usr/bin/vgrind         \
            --with-grap=/usr/bin/grap             \
            --with-systemdtmpfilesdir=            \
            --with-systemdsystemunitdir=

make
# make check
make install
