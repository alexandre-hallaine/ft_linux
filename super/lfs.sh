echo "Using lfs user"

source user/setting.sh

PWD=`pwd`
cd $LFS/sources

echo "Compiling the cross-toolchain"
bash $PWD/sources/cross-toolchain.sh
