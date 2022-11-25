echo >&2 "Bash"

set -e

rm -rf bash-5.1.16
tar -xvf bash-5.1.16.tar.gz
cd bash-5.1.16

./configure --prefix=/usr                   \
            --build=$(support/config.guess) \
            --host=$LFS_TGT                 \
            --without-bash-malloc

make
make -j1 DESTDIR=$LFS install

ln -sv bash $LFS/bin/sh
