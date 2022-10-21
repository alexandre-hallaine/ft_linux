echo >&2 "File"
tar -xvf file-5.42.tar.gz
cd file-5.42

./configure --prefix=/usr

make prefix=/usr
make check
make install
