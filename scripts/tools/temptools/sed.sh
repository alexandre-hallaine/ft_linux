echo "Sed"
tar -xvf sed-4.8.tar.xz
cd sed-4.8

./configure --prefix=/usr   \
            --host=$LFS_TGT

make
make DESTDIR=$LFS install
