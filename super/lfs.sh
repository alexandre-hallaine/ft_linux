echo "Using lfs user"

source user/setting.sh

cd $LFS/sources

echo "Compiling the cross-toolchain"
bash crosstools/binutils.sh
