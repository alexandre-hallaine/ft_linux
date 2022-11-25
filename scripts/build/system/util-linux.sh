echo >&2 "Util-linux"

set -e

rm -rf util-linux-2.38.1
tar -xvf util-linux-2.38.1.tar.xz
cd util-linux-2.38.1

./configure ADJTIME_PATH=/var/lib/hwclock/adjtime   \
            --bindir=/usr/bin    \
            --libdir=/usr/lib    \
            --sbindir=/usr/sbin  \
            --docdir=/usr/share/doc/util-linux-2.38.1 \
            --disable-chfn-chsh  \
            --disable-login      \
            --disable-nologin    \
            --disable-su         \
            --disable-setpriv    \
            --disable-runuser    \
            --disable-pylibmount \
            --disable-static     \
            --without-python     \
            --without-systemd    \
            --without-systemdsystemunitdir

make

# chown -Rv tester .
# su tester -c "make check"

make -j1 install
