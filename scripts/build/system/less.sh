echo >&2 "Less"
rm -rf less-608
tar -xvf less-608.tar.gz
cd less-608

./configure --prefix=/usr --sysconfdir=/etc

make
make install
