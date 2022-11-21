echo >&2 "File"
rm -rf file-5.42
tar -xvf file-5.42.tar.gz
cd file-5.42

./configure --prefix=/usr

make
# make -k check
make install
