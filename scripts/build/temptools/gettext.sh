echo "Gettext"
tar -xvf gettext-0.21.tar.gz
cd gettext-0.21

./configure --disable-shared

make

cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin
