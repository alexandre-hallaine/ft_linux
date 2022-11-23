echo >&2 "Texinfo"
rm -rf texinfo-6.8
tar -xvf texinfo-6.8.tar.xz
cd texinfo-6.8

./configure --prefix=/usr

make
# make check
make -j1 install
make -j1 TEXMF=/usr/share/texmf install-tex
