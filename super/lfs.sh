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
bash $GIT_FOLDER/compiling/temptools/ncurses.sh >/dev/null
bash $GIT_FOLDER/compiling/temptools/bash.sh >/dev/null
bash $GIT_FOLDER/compiling/temptools/coreutils.sh >/dev/null
bash $GIT_FOLDER/compiling/temptools/diffutils.sh >/dev/null
bash $GIT_FOLDER/compiling/temptools/file.sh >/dev/null
bash $GIT_FOLDER/compiling/temptools/findutils.sh >/dev/null
bash $GIT_FOLDER/compiling/temptools/gawk.sh >/dev/null
bash $GIT_FOLDER/compiling/temptools/grep.sh >/dev/null
bash $GIT_FOLDER/compiling/temptools/gzip.sh >/dev/null
bash $GIT_FOLDER/compiling/temptools/make.sh >/dev/null
bash $GIT_FOLDER/compiling/temptools/patch.sh >/dev/null
bash $GIT_FOLDER/compiling/temptools/sed.sh >/dev/null
bash $GIT_FOLDER/compiling/temptools/tar.sh >/dev/null
bash $GIT_FOLDER/compiling/temptools/xz.sh >/dev/null
bash $GIT_FOLDER/compiling/temptools/binutils.sh >/dev/null
bash $GIT_FOLDER/compiling/temptools/gcc.sh >/dev/null
