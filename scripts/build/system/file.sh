echo >&2 "File"
rm -rf file-5.43
tar -xvf file-5.43.tar.gz
cd file-5.43

./configure --prefix=/usr

make prefix=/usr
# make check
make install
