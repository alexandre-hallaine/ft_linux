echo >&2 "Using lfs user"

source user/setting.sh

GIT_FOLDER=`pwd`
cd $LFS/sources

echo >&2 "Compiling a Cross-Toolchain"
bash $GIT_FOLDER/compiling/crosstools/binutils.sh >/dev/null
bash $GIT_FOLDER/compiling/crosstools/gcc.sh >/dev/null
bash $GIT_FOLDER/compiling/crosstools/linuxapihdr.sh >/dev/null
bash $GIT_FOLDER/compiling/crosstools/glibc.sh >/dev/null
bash $GIT_FOLDER/compiling/crosstools/libstdc++.sh >/dev/null

echo >&2 "Cross Compiling Temporary Tools"
bash $GIT_FOLDER/compiling/temptools/m4.sh >/dev/null
