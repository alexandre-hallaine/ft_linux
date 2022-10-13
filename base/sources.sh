echo "Generating sources files"

mkdir -v $LFS/sources
wget --input-file=wget-list-sysv --continue --directory-prefix=$LFS/sources
