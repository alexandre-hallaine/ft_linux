echo >&2 "Gperf"
rm -rf gperf-3.1
tar -xvf gperf-3.1.tar.gz
cd gperf-3.1

./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.1

make
# make -j1 check
make -j1 install
