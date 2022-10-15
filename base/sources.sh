echo "Generating sources files"

mkdir -v $LFS/sources
wget --input-file=base/wget-list-sysv --continue --directory-prefix=$LFS/sources
