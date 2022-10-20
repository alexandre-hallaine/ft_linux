echo >&2 "Using root user"

LFS=/mnt/lfs

source scripts/build/settings.sh

echo >&2 "Changing environment"
cp -r scripts/build/temptools $LFS/.
cp scripts/build/temptools.sh $LFS/temptools/
cp scripts/build/clean.sh $LFS/temptools/

cp -r scripts/build/system LFS$/.
cp scripts/build/system.sh $LFS/system/

(
	cat scripts/build/essentials.sh
	cat scripts/build/temptools.sh
) | chroot \
    "$LFS" /usr/bin/env -i      \
    LFS="$LFS"                  \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='(lfs chroot) \u:\w\$ ' \
    PATH=/usr/bin:/usr/sbin     \
    /bin/bash --login > /dev/null

rm -rf $LFS/temptools
