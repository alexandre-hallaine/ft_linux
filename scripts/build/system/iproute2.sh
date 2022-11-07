echo >&2 "IPRoute2"
rm -rf iproute2-6.0.0
tar -xvf iproute2-6.0.0.tar.xz
cd iproute2-6.0.0

sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8

make NETNS_RUN_DIR=/run/netns
make SBINDIR=/usr/sbin install

mkdir -pv             /usr/share/doc/iproute2-6.0.0
cp -v COPYING README* /usr/share/doc/iproute2-6.0.0
