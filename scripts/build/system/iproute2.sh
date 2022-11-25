echo >&2 "IPRoute2"

set -e

rm -rf iproute2-5.19.0
tar -xvf iproute2-5.19.0.tar.xz
cd iproute2-5.19.0

sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8

make NETNS_RUN_DIR=/run/netns
make -j1 SBINDIR=/usr/sbin install

mkdir -pv             /usr/share/doc/iproute2-5.19.0
cp -v COPYING README* /usr/share/doc/iproute2-5.19.0
