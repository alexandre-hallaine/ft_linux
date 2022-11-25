echo >&2 "Creating user"

groupadd lfs
useradd -s /bin/bash -g lfs -m -k /dev/null lfs

chown -v lfs $LFS/{usr{,/*},lib,var,etc,bin,sbin,tools, sources}
case $(uname -m) in
  x86_64) chown -v lfs $LFS/lib64 ;;
esac

[ ! -e /etc/bash.bashrc ] || mv -v /etc/bash.bashrc /etc/bash.bashrc.NOUSE
