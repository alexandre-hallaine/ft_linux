echo >&2 "Binutils - Pass 1"
rm -rf binutils-2.39
tar -xvf binutils-2.39.tar.xz
cd binutils-2.39

rm -rf   build
mkdir -v build
cd       build

../configure --prefix=$LFS/tools \
             --with-sysroot=$LFS \
             --target=$LFS_TGT   \
             --disable-nls       \
             --enable-gprofng=no \
             --disable-werror

make
make -j1 install
