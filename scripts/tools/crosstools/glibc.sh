echo >&2 "Glibc"
rm -rf glibc-2.36
tar -xvf glibc-2.36.tar.xz
cd glibc-2.36

case $(uname -m) in
    i?86)   ln -sfv ld-linux.so.2 $LFS/lib/ld-lsb.so.3
    ;;
    x86_64) ln -sfv ../lib/ld-linux-x86-64.so.2 $LFS/lib64
            ln -sfv ../lib/ld-linux-x86-64.so.2 $LFS/lib64/ld-lsb-x86-64.so.3
    ;;
esac

sed '/MAKEFLAGS :=/s/)r/) -r/' -i Makerules
patch -Np1 -i ../glibc-2.36-fhs-1.patch

rm -rf   build
mkdir -v build
cd       build

echo >&2 "rootsbindir=/usr/sbin" >configparms

../configure                             \
      --prefix=/usr                      \
      --host=$LFS_TGT                    \
      --build=$(../scripts/config.guess) \
      --enable-kernel=3.2                \
      --with-headers=$LFS/usr/include    \
      libc_cv_slibdir=/usr/lib

make
make DESTDIR=$LFS install

sed '/RTLDLIST=/s@/usr@@g' -i $LFS/usr/bin/ldd
# echo 'int main(){}' | $LFS_TGT-gcc -xc -
# readelf -l a.out | grep ld-linux
# rm -v a.out
$LFS/tools/libexec/gcc/$LFS_TGT/12.2.0/install-tools/mkheaders
