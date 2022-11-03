echo >&2 "Pkg-config"
rm -rf pkg-config-0.29.2
tar -xvf pkg-config-0.29.2.tar.gz
cd pkg-config-0.29.2

./configure --prefix=/usr              \
            --with-internal-glib       \
            --disable-host-tool        \
            --docdir=/usr/share/doc/pkg-config-0.29.2

make
# make -k check
make install
