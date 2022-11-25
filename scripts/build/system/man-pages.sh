echo >&2 "Man-pages"

set -e

rm -rf man-pages-5.13
tar -xvf man-pages-5.13.tar.xz
cd man-pages-5.13

make -j1 prefix=/usr install
