echo >&2 "Iana-Etc"
rm -rf iana-etc-20221025
tar -xvf iana-etc-20221025.tar.gz
cd iana-etc-20221025

cp services protocols /etc
