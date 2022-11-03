echo >&2 "Linux API Headers"
rm -rf linux-6.0.6
tar -xvf linux-6.0.6.tar.xz
cd linux-6.0.6

make mrproper

make headers
find usr/include -type f ! -name '*.h' -delete
cp -rv usr/include $LFS/usr
