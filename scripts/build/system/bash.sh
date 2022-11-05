echo >&2 "Bash"
rm -rf bash-5.2
tar -xvf bash-5.2.tar.gz
cd bash-5.2

patch -Np1 -i ../bash-5.2-upstream_fixes-1.patch

./configure --prefix=/usr                      \
            --docdir=/usr/share/doc/bash-5.2 \
            --without-bash-malloc              \
            --with-installed-readline

make
# chown -Rv tester .
# su -s /usr/bin/expect tester << EOF
# set timeout -1
# spawn make tests
# expect eof
# lassign [wait] _ _ _ value
# exit $value
# EOF
make install
