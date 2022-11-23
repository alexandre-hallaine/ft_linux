echo >&2 "Using root user"

LFS=/mnt/lfs

source scripts/build/buildessentials.sh

echo >&2 "Changing environment"
cp -r scripts/build/temptools $LFS/.
cp scripts/build/tempclean.sh $LFS/temptools/

cp -r scripts/build/system $LFS/.
cp scripts/build/systemclean.sh $LFS/system/

cp -r scripts/build/boot- $LFS/.

genfstab -U $LFS > $LFS/etc/fstab
cat >> $LFS/etc/fstab << "EOF"
proc           /proc        proc     nosuid,noexec,nodev 0     0
sysfs          /sys         sysfs    nosuid,noexec,nodev 0     0
devpts         /dev/pts     devpts   gid=5,mode=620      0     0
tmpfs          /run         tmpfs    defaults            0     0
devtmpfs       /dev         devtmpfs mode=0755,nosuid    0     0
EOF

(
	cat scripts/build/filesystemessentials.sh
	cat scripts/build/temptools.sh
	cat scripts/build/system.sh
	cat scripts/build/configuration.sh
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

rm -rf $LFS/temptools
rm -rf $LFS/system
rm -rf $LFS/boot-

source scripts/build/end.sh
