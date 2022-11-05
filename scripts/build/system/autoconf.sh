echo >&2 "Autoconf"
rm -rf autoconf-2.71
tar -xvf autoconf-2.71.tar.xz
cd autoconf-2.71

sed -e 's/SECONDS|/&SHLVL|/'               \
    -e '/BASH_ARGV=/a\        /^SHLVL=/ d' \
    -i.orig tests/local.at

./configure --prefix=/usr

make
# make check
make install
