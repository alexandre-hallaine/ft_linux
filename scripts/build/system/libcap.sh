echo >&2 "Libcap"

set -e

rm -rf libcap-2.65
tar -xvf libcap-2.65.tar.xz
cd libcap-2.65

sed -i '/install -m.*STA/d' libcap/Makefile

make prefix=/usr lib=lib
# make test
make -j1 prefix=/usr lib=lib install
