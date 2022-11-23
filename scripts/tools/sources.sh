echo >&2 "Generating sources files"

[ -f $LFS/sources ] && exit # If the sources file already exists, exit

mkdir -v $LFS/sources
wget https://mirror.dogado.de/LFS/lfs-packages/lfs-packages-11.2.tar --continue --quiet --show-progress
tar -xvf lfs-packages-11.2.tar
cp -vr 11.2-rc1/* $LFS/sources
rm -rf 11.2-rc1
