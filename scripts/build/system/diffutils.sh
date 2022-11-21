echo >&2 "Diffutils"
rm -rf diffutils-3.8
tar -xvf diffutils-3.8.tar.xz
cd diffutils-3.8

./configure --prefix=/usr

make
# make check
make install
