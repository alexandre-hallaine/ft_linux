echo >&2 "Diffutils"
rm -rf diffutils-3.8
tar -xvf diffutils-3.8.tar.xz
cd diffutils-3.8

./configure --prefix=/usr

make
# make check
make install

mkdir -pv                                   /usr/share/doc/gawk-5.2.0
cp    -v doc/{awkforai.txt,*.{eps,pdf,jpg}} /usr/share/doc/gawk-5.2.0
