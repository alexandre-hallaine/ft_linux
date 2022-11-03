echo >&2 "Gettext"
rm -rf gettext-0.21.1
tar -xvf gettext-0.21.1.tar.xz
cd gettext-0.21.1

./configure --disable-shared

make

cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin
