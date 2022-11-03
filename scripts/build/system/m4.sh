echo >&2 "M4"
rm -rf m4-1.4.19
tar -xvf m4-1.4.19.tar.xz
cd m4-1.4.19

./configure --prefix=/usr

make
# make -k check
make install
