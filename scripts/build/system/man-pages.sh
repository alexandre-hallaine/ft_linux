echo >&2 "Man-pages"
rm -rf man-pages-5.13
tar -xvf man-pages-5.13.tar.xz
cd man-pages-5.13

make prefix=/usr install
