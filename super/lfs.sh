echo "Using lfs user"

source user/setting.sh

GIT_FOLDER=`pwd`
cd $LFS/sources

echo "Compiling the cross-toolchain"
bash $GIT_FOLDER/crosstools/binutils.sh
