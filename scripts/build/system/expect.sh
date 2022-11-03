echo >&2 "Expect"
rm -rf expect5.45.4
tar -xvf expect5.45.4.tar.gz
cd expect5.45.4

./configure --prefix=/usr           \
            --with-tcl=/usr/lib     \
            --enable-shared         \
            --mandir=/usr/share/man \
            --with-tclinclude=/usr/include

make
# make -k test
make install

ln -svf expect5.45.4/libexpect5.45.4.so /usr/lib
