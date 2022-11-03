echo >&2 "Bash"
rm -rf bash-5.2
tar -xvf bash-5.2.tar.gz
cd bash-5.2

./configure --prefix=/usr                   \
            --build=$(support/config.guess) \
            --host=$LFS_TGT                 \
            --without-bash-malloc

make
make DESTDIR=$LFS install

ln -sv bash $LFS/bin/sh
