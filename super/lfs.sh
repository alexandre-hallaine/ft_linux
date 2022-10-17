echo >&2 "Using lfs user"

source user/setting.sh

GIT_FOLDER=`pwd`
cd $LFS/sources

echo >&2 "Compiling the cross-toolchain"
bash $GIT_FOLDER/crosstools/binutils.sh >/dev/null
bash $GIT_FOLDER/crosstools/gcc.sh >/dev/null
bash $GIT_FOLDER/crosstools/linuxapihdr.sh >/dev/null
bash $GIT_FOLDER/crosstools/glibc.sh >/dev/null
bash $GIT_FOLDER/crosstools/libstdc++.sh >/dev/null
