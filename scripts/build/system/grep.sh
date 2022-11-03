echo >&2 "Grep"
rm -rf grep-3.8
tar -xvf grep-3.8.tar.xz
cd grep-3.8

sed -i "s/echo/#echo/" src/egrep.sh

./configure --prefix=/usr

make
# make -k check
make install
