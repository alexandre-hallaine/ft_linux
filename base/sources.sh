echo >&2 "Generating sources files"

mkdir -v $LFS/sources
if [ -d "sources" ] 
then
	cp -v sources/* $LFS/sources/.
else
	wget --input-file=base/wget-list-sysv --continue --directory-prefix=$LFS/sources -q
	cp -vr $LFS/sources .
fi
