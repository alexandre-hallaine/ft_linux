echo >&2 "Generating sources files"

wget https://mirror.dogado.de/LFS/lfs-packages/lfs-packages-11.2.tar --quiet --show-progress -nc
tar -xvf lfs-packages-11.2.tar

[ -f $LFS/sources ] && rm -rf $LFS/sources

mkdir -v $LFS/sources
chmod -v a+wt $LFS/sources

cp -r 11.2-rc1/* $LFS/sources
rm -rf 11.2-rc1
