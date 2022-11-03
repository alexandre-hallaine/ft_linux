echo >&2 "Python"
rm -rf Python-3.11.0
tar -xvf Python-3.11.0.tar.xz
cd Python-3.11.0

./configure --prefix=/usr   \
            --enable-shared \
            --without-ensurepip

make
make install
