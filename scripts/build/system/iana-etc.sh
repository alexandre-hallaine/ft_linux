echo >&2 "Iana-Etc"

set -e

rm -rf iana-etc-20220812
tar -xvf iana-etc-20220812.tar.gz
cd iana-etc-20220812

cp services protocols /etc
