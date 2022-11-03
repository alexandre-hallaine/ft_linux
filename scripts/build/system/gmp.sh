echo >&2 "GMP"
rm -rf gmp-6.2.1
tar -xvf gmp-6.2.1.tar.xz
cd gmp-6.2.1

./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.2.1

make
make html
# make -k check 2>&1 | tee gmp-check-log
# awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log
make install
make install-html
