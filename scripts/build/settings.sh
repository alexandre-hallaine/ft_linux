echo >&2 "Changing ownership to root"
chown -R root:root $LFS/{usr,lib,var,etc,bin,sbin,tools}
case $(uname -m) in
  x86_64) chown -R root:root $LFS/lib64 ;;
esac

echo >&2 "Preparing file system"
mkdir -pv $LFS/{dev,proc,sys,run}

mount -v --bind /dev $LFS/dev

mount -v --bind /dev/pts $LFS/dev/pts
mount -vt proc proc $LFS/proc
mount -vt sysfs sysfs $LFS/sys
mount -vt tmpfs tmpfs $LFS/run

if [ -h $LFS/dev/shm ]; then
  mkdir -pv $LFS/$(readlink $LFS/dev/shm)
fi

echo >&2 "Changing environment"
cp scripts/build/hosts $LFS/etc/hosts
cp scripts/build/group $LFS/etc/group
cp scripts/build/passwd $LFS/etc/passwd
cp -r scripts/build/temptools $LFS/.
cp scripts/build/temptools.sh $LFS/temptools/

cat scripts/build/chroot.sh | chroot \
    "$LFS" /usr/bin/env -i	\
    LFS="$LFS"			\
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='(lfs chroot) \u:\w\$ ' \
    PATH=/usr/bin:/usr/sbin     \
    /bin/bash --login

