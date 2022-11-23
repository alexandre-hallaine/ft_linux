echo >&2 "XML::Parser"
rm -rf XML-Parser-2.46
tar -xvf XML-Parser-2.46.tar.gz
cd XML-Parser-2.46

perl Makefile.PL

make
# make test
make -j1 install
