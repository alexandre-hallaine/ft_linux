echo >&2 "Binutils"
rm -rf binutils-2.39
tar -xvf binutils-2.39.tar.xz
cd binutils-2.39

# expect -c "spawn ls"

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
# make check
make -j1 tooldir=/usr install

rm -fv /usr/lib/lib{bfd,ctf,ctf-nobfd,opcodes}.a
