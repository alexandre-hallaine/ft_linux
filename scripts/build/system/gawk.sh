echo >&2 "Gawk"
rm -rf gawk-5.2.0
tar -xvf gawk-5.2.0.tar.xz
cd gawk-5.2.0

sed -i 's/extras//' Makefile.in
sed -i '241i UPREF(m);' interpret.h

./configure --prefix=/usr

make
# make check
make install
