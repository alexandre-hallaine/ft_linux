echo >&2 "Python"
rm -rf Python-3.10.6
tar -xvf Python-3.10.6.tar.xz
cd Python-3.10.6

./configure --prefix=/usr   \
            --enable-shared \
            --without-ensurepip

make
make install
