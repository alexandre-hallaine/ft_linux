echo >&2 "Binutils - Pass 2"

set -e

rm -rf binutils-2.39
tar -xvf binutils-2.39.tar.xz
cd binutils-2.39

sed '6009s/$add_dir//' -i ltmain.sh

rm -rf   build
mkdir -v build
cd       build

../configure                   \
    --prefix=/usr              \
    --build=$(../config.guess) \
    --host=$LFS_TGT            \
    --disable-nls              \
    --enable-shared            \
    --enable-gprofng=no        \
    --disable-werror           \
    --enable-64-bit-bfd

make
make -j1 DESTDIR=$LFS install

rm -v $LFS/usr/lib/lib{bfd,ctf,ctf-nobfd,opcodes}.{a,la}
