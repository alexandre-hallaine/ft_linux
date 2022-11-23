echo >&2 "Psmisc"
rm -rf psmisc-23.5
tar -xvf psmisc-23.5.tar.xz
cd psmisc-23.5

./configure --prefix=/usr

make
make -j1 install
