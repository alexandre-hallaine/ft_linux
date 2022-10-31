echo >&2 "Libcap"
tar -xvf libcap-2.65.tar.xz
cd libcap-2.65

sed -i '/install -m.*STA/d' libcap/Makefile

make prefix=/usr lib=lib
make test
make prefix=/usr lib=lib install
