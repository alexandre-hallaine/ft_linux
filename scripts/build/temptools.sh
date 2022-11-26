echo >&2 "Compiling final temporary tools"

cd /sources

bash /build/temptools/gettext.sh >/dev/null
bash /build/temptools/bison.sh >/dev/null
bash /build/temptools/perl.sh >/dev/null
bash /build/temptools/python.sh >/dev/null
bash /build/temptools/texinfo.sh >/dev/null
bash /build/temptools/util-linux.sh >/dev/null

bash /build/tempclean.sh >/dev/null
