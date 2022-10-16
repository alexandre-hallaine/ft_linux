echo >&2 "Linux API Headers"
tar -xvf linux-5.19.2.tar.xz
cd linux-5.19.2

make mrproper

make headers
find usr/include -type f ! -name '*.h' -delete
cp -rv usr/include $LFS/usr
