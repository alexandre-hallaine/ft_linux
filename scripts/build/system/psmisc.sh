echo >&2 "Psmisc"
tar -xvf psmisc-23.5.tar.xz
cd psmisc-23.5

./configure --prefix=/usr

make
make install
