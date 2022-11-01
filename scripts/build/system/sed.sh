echo >&2 "Sed"
tar -xvf sed-4.8.tar.xz
cd sed-4.8

./configure --prefix=/usr

make
make html

chown -Rv tester .
# su tester -c "PATH=$PATH make check"

make install
install -d -m755           /usr/share/doc/sed-4.8
install -m644 doc/sed.html /usr/share/doc/sed-4.8
