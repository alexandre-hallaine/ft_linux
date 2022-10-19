echo >&2 "Generating sources files"

mkdir -v $LFS/sources
if [ -d "sources" ] 
then
	cp -v sources/* $LFS/sources/.
else
	wget --input-file=scripts/tools/wget-list-sysv --continue --directory-prefix=$LFS/sources --quiet --show-progress
	cp -vr $LFS/sources .
fi
