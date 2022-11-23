echo >&2 "Libtool"
rm -rf libtool-2.4.7
tar -xvf libtool-2.4.7.tar.xz
cd libtool-2.4.7

./configure --prefix=/usr

make
# make check
make -j1 install

rm -fv /usr/lib/libltdl.a
