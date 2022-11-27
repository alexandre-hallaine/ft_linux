#!/bin/bash

set -e

LFS=/mnt/lfs

sudo -u root bash scripts/setup.sh
sudo -u lfs bash scripts/tools.sh

sudo -u root bash scripts/build/buildessentials.sh

cp -r scripts/build* $LFS/.
echo >&2 "Changing environment"

(
	echo 'bash /build.sh'
) | chroot \
    "$LFS" /usr/bin/env -i                                                 \
    LFS="$LFS"                                                             \
    DISK="$(df --output=source $LFS | tail -n1 | sed  '$ s/.$//')"         \
    MAKEFLAGS="-j$(nproc)"                                                 \
    TESTSUITEFLAGS="-j$(nproc)"                                            \
    NINJAJOBS="$(nproc)"                                                   \
    HOME=/root                                                             \
    TERM="$TERM"                                                           \
    PS1='(lfs chroot) \u:\w\$ '                                            \
    PATH=/usr/bin:/usr/sbin                                                \
    /bin/bash --login > /dev/null
sudo rm -rf $LFS/build*

sudo -u root bash scripts/build/end.sh
