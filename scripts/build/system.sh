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
bash /system/binutils.sh >/dev/null
bash /system/gmp.sh >/dev/null
bash /system/mpfr.sh >/dev/null
bash /system/mpc.sh >/dev/null
bash /system/attr.sh >/dev/null
bash /system/acl.sh >/dev/null
bash /system/libcap.sh >/dev/null
bash /system/shadow.sh >/dev/null
bash /system/gcc.sh >/dev/null
bash /system/pkg-config.sh >/dev/null
bash /system/ncurses.sh >/dev/null
bash /system/sed.sh >/dev/null
bash /system/psmisc.sh >/dev/null
