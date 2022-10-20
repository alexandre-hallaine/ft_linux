echo >&2 "Texinfo"
tar -xvf texinfo-6.8.tar.xz
cd texinfo-6.8

./configure --prefix=/usr

make
make install
