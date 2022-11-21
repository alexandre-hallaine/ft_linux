echo >&2 "Make"
rm -rf make-4.3
tar -xvf make-4.3.tar.gz
cd make-4.3

./configure --prefix=/usr

make
# make check
make install
