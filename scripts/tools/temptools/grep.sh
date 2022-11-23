echo >&2 "Grep"
rm -rf grep-3.7
tar -xvf grep-3.7.tar.xz
cd grep-3.7

./configure --prefix=/usr   \
            --host=$LFS_TGT

make
make -j1 DESTDIR=$LFS install
