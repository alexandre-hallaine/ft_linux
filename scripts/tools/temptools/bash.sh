echo >&2 "Bash"
rm -rf bash-5.2.9
tar -xvf bash-5.2.9.tar.gz
cd bash-5.2.9

./configure --prefix=/usr                      \
            --build=$(sh support/config.guess) \
            --host=$LFS_TGT                    \
            --without-bash-malloc

make
make DESTDIR=$LFS install

ln -sv bash $LFS/bin/sh
