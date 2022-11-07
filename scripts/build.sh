echo >&2 "Using root user"

LFS=/mnt/lfs

source scripts/build/settings.sh

echo >&2 "Changing environment"
cp -r scripts/build/temptools $LFS/.
cp scripts/build/temptools.sh $LFS/temptools/
cp scripts/build/tempclean.sh $LFS/temptools/

cp -r scripts/build/system $LFS/.
cp scripts/build/system.sh $LFS/system/
cp scripts/build/clean.sh $LFS/system/

(
	cat scripts/build/essentials.sh
	cat scripts/build/temptools.sh
	cat scripts/build/system.sh
) | chroot \
    "$LFS" /usr/bin/env -i      \
    LFS="$LFS"                  \
    MAKEFLAGS="-j$(nproc)"      \
    TESTSUITEFLAGS="-j$(nproc)" \
    NINJAJOBS="$(nproc)"        \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='(lfs chroot) \u:\w\$ ' \
    PATH=/usr/bin:/usr/sbin     \
    /bin/bash --login > /dev/null

rm -rf $LFS/temptools
rm -rf $LFS/system
