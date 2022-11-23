echo >&2 "Bc"
rm -rf bc-6.0.1
tar -xvf bc-6.0.1.tar.xz
cd bc-6.0.1

CC=gcc ./configure --prefix=/usr -G -O3 -r

make
# make test
make -j1 install
