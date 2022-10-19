echo >&2 "Using lfs user"

source scripts/tools/user/setting.sh

GIT_FOLDER=`pwd`
cd $LFS/sources

echo >&2 "Compiling a Cross-Toolchain"
bash $GIT_FOLDER/scripts/tools/crosstools/binutils.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/crosstools/gcc.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/crosstools/linuxapihdr.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/crosstools/glibc.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/crosstools/libstdc++.sh >/dev/null

echo >&2 "Cross Compiling Temporary Tools"
bash $GIT_FOLDER/scripts/tools/temptools/m4.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/temptools/ncurses.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/temptools/bash.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/temptools/coreutils.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/temptools/diffutils.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/temptools/file.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/temptools/findutils.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/temptools/gawk.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/temptools/grep.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/temptools/gzip.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/temptools/make.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/temptools/patch.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/temptools/sed.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/temptools/tar.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/temptools/xz.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/temptools/binutils.sh >/dev/null
bash $GIT_FOLDER/scripts/tools/temptools/gcc.sh >/dev/null
