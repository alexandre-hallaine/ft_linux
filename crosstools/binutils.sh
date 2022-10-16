echo >&2 "Binutils - Pass 1"
tar -xvf binutils-2.39.tar.xz
cd binutils-2.39

mkdir -v build
cd build

../configure --prefix=$LFS/tools \
 --with-sysroot=$LFS \
 --target=$LFS_TGT \
 --disable-nls \
 --enable-gprofng=no \
 --disable-werror

make
make install

cd ..
rm -rf build
