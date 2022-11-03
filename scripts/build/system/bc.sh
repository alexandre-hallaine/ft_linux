echo >&2 "Bc"
rm -rf bc-6.0.4
tar -xvf bc-6.0.4.tar.xz
cd bc-6.0.4

CC=gcc ./configure --prefix=/usr -G -O3 -r

make
# make -k test
make install
