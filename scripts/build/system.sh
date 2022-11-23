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
bash /system/gettext.sh >/dev/null
bash /system/bison.sh >/dev/null
bash /system/grep.sh >/dev/null
bash /system/bash.sh >/dev/null
bash /system/libtool.sh >/dev/null
bash /system/gdbm.sh >/dev/null
bash /system/gperf.sh >/dev/null
bash /system/expat.sh >/dev/null
bash /system/inetutils.sh >/dev/null
bash /system/less.sh >/dev/null
bash /system/perl.sh >/dev/null
bash /system/xml-parser.sh >/dev/null
bash /system/intltool.sh >/dev/null
bash /system/autoconf.sh >/dev/null
bash /system/automake.sh >/dev/null
bash /system/openssl.sh >/dev/null
bash /system/kmod.sh >/dev/null
bash /system/libelf.sh >/dev/null
bash /system/libffi.sh >/dev/null
bash /system/python.sh >/dev/null
bash /system/wheel.sh >/dev/null
bash /system/ninja.sh >/dev/null
bash /system/meson.sh >/dev/null
bash /system/coreutils.sh >/dev/null
bash /system/check.sh >/dev/null
bash /system/diffutils.sh >/dev/null
bash /system/gawk.sh >/dev/null
bash /system/findutils.sh >/dev/null
bash /system/groff.sh >/dev/null
bash /system/grub.sh >/dev/null
bash /system/gzip.sh >/dev/null
bash /system/iproute2.sh >/dev/null
bash /system/kbd.sh >/dev/null
bash /system/libpipeline.sh >/dev/null
bash /system/make.sh >/dev/null
bash /system/patch.sh >/dev/null
bash /system/tar.sh >/dev/null
bash /system/texinfo.sh >/dev/null
bash /system/vim.sh >/dev/null
bash /system/eudev.sh >/dev/null
bash /system/man-db.sh >/dev/null
bash /system/procps-ng.sh >/dev/null
bash /system/util-linux.sh >/dev/null
bash /system/e2fsprogs.sh >/dev/null
bash /system/sysklogd.sh >/dev/null
bash /system/sysvinit.sh >/dev/null

bash /system/systemclean.sh >/dev/null
