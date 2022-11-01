echo >&2 "Grep"
rm -rf grep-3.7
tar -xvf grep-3.7.tar.xz
cd grep-3.7

sed -i "s/echo/#echo/" src/egrep.sh

./configure --prefix=/usr

make
# make check
make install
