echo >&2 "Procps-ng"
rm -rf procps-ng-4.0.0
tar -xvf procps-ng-4.0.0.tar.xz
cd procps-ng-4.0.0

./configure --prefix=/usr                            \
            --docdir=/usr/share/doc/procps-ng-4.0.0 \
            --disable-static                         \
            --disable-kill

make
# make check
make install
