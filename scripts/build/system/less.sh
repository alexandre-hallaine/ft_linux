echo >&2 "Less"

set -e

rm -rf less-590
tar -xvf less-590.tar.gz
cd less-590

./configure --prefix=/usr --sysconfdir=/etc

make
make -j1 install
