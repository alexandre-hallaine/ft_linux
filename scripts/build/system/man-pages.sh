echo >&2 "Man-pages"
rm -rf man-pages-6.01
tar -xvf man-pages-6.01.tar.xz
cd man-pages-6.01

make prefix=/usr install
