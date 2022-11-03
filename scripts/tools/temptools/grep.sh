echo >&2 "Grep"
rm -rf grep-3.8
tar -xvf grep-3.8.tar.xz
cd grep-3.8

./configure --prefix=/usr   \
            --host=$LFS_TGT

make
make DESTDIR=$LFS install
