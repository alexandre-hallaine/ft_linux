echo >&2 "Bootscripts"
rm -rf lfs-bootscripts-20220723
tar -xvf lfs-bootscripts-20220723.tar.xz
cd lfs-bootscripts-20220723

make -j1 install