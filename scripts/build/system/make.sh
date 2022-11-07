echo >&2 "Make"
echo >&2 "CHANGE MAKE TO MAKE-4.4"
echo >&2 "CHANGE MAKE TO MAKE-4.4"
echo >&2 "CHANGE MAKE TO MAKE-4.4"
echo >&2 "CHANGE MAKE TO MAKE-4.4"
echo >&2 "CHANGE MAKE TO MAKE-4.4"
rm -rf make-4.3
tar -xvf make-4.3.tar.gz
cd make-4.3

./configure --prefix=/usr

make
# make check
make install
