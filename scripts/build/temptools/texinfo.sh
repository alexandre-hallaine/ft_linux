echo >&2 "Texinfo"
rm -rf texinfo-6.8
tar -xvf texinfo-6.8.tar.xz
cd texinfo-6.8

./configure --prefix=/usr

make
make -j1 install
