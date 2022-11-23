echo >&2 "Readline"
rm -rf readline-8.1.2
tar -xvf readline-8.1.2.tar.gz
cd readline-8.1.2

sed -i '/MV.*old/d' Makefile.in
sed -i '/{OLDSUFF}/c:' support/shlib-install

./configure --prefix=/usr    \
            --disable-static \
            --with-curses    \
            --docdir=/usr/share/doc/readline-8.1.2

make SHLIB_LIBS="-lncursesw"
make -j1 SHLIB_LIBS="-lncursesw" install

install -v -m644 doc/*.{ps,pdf,html,dvi} /usr/share/doc/readline-8.1.2
