echo >&2 "Texinfo"
rm -rf texinfo-6.8
tar -xvf texinfo-6.8.tar.xz
cd texinfo-6.8

./configure --prefix=/usr

make
# make check
make install
make TEXMF=/usr/share/texmf install-tex

pushd /usr/share/info
  rm -v dir
  for f in *
    do install-info $f dir 2>/dev/null
  done
popd
