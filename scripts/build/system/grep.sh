echo >&2 "Grep"
tar -xvf grep-3.7.tar.xz
cd grep-3.7

sed -i "s/echo/#echo/" src/egrep.sh

./configure --prefix=/usr

make
# make check
make install
