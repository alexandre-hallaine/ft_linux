echo >&2 "Libcap"
rm -rf libcap-2.66
tar -xvf libcap-2.66.tar.xz
cd libcap-2.66

sed -i '/install -m.*STA/d' libcap/Makefile

make prefix=/usr lib=lib
# make -k test
make prefix=/usr lib=lib install
