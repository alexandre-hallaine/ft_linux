echo >&2 "Using root user"

source base/fix_kali.sh

LFS=/mnt/lfs

source base/partitions.sh
bash base/folder.sh > /dev/null
bash base/sources.sh > /dev/null

bash user/create.sh > /dev/null
