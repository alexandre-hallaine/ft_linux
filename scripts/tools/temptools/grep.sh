echo "Grep"
tar -xvf grep-3.7.tar.xz
cd grep-3.7

./configure --prefix=/usr   \
            --host=$LFS_TGT

make
make DESTDIR=$LFS install
