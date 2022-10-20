echo >&2 "Compiling final temporary tools"

cd /sources

bash /temptools/gettext.sh >/dev/null
bash /temptools/bison.sh >/dev/null
bash /temptools/perl.sh >/dev/null
bash /temptools/python.sh >/dev/null
bash /temptools/texinfo.sh >/dev/null
bash /temptools/util-linux.sh >/dev/null

bash /temptools/clean.sh >/dev/null
