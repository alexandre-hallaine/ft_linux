echo >&2 "Building system software"

cd /sources

bash /system/man-pages.sh >/dev/null
bash /system/iana-etc.sh >/dev/null
bash /system/glibc.sh >/dev/null

