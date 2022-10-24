echo >&2 "Bc"
tar -xvf bc-6.0.1.tar.xz
cd bc-6.0.1

CC=gcc ./configure --prefix=/usr -G -O3 -r

make
make check
make install
