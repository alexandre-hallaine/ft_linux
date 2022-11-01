echo >&2 "Binutils"
tar -xvf binutils-2.39.tar.xz
cd binutils-2.39

rm -rf   build
mkdir -v build
cd       build

../configure --prefix=/usr       \
             --sysconfdir=/etc   \
             --enable-gold       \
             --enable-ld=default \
             --enable-plugins    \
             --enable-shared     \
             --disable-werror    \
             --enable-64-bit-bfd \
             --with-system-zlib

make tooldir=/usr
# make -k check
make tooldir=/usr install

rm -fv /usr/lib/lib{bfd,ctf,ctf-nobfd,opcodes}.a
rm -fv /usr/share/man/man1/gprofng.1
