echo >&2 "Using root user"

source base/fix_kali.sh

LFS=/mnt/lfs

source base/partitions.sh
source base/folder.sh
source base/sources.sh > /dev/null

source user/create.sh
