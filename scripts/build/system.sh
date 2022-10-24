echo >&2 "Building system software"

cd /sources

bash /system/man-pages.sh >/dev/null
bash /system/iana-etc.sh >/dev/null
bash /system/glibc.sh >/dev/null
bash /system/zlib.sh >/dev/null
bash /system/bzip2.sh >/dev/null
bash /system/xz.sh >/dev/null
bash /system/zstd.sh >/dev/null
bash /system/file.sh >/dev/null
bash /system/readline.sh >/dev/null
bash /system/m4.sh >/dev/null
bash /system/bc.sh >/dev/null
bash /system/flex.sh >/dev/null
bash /system/tcl.sh >/dev/null
bash /system/expect.sh >/dev/null
bash /system/dejagnu.sh >/dev/null
