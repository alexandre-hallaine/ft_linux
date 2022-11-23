echo >&2 "Automake"
rm -rf automake-1.16.5
tar -xvf automake-1.16.5.tar.xz
cd automake-1.16.5

./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.16.5

make
# make -j4 check
make -j1 install
