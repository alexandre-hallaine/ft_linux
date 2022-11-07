echo >&2 "Bootscripts"
rm -rf lfs-bootscripts-20220920
tar -xvf lfs-bootscripts-20220920.tar.xz
cd lfs-bootscripts-20220920

make install
