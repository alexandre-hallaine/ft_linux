echo >&2 "Wheel"
rm -rf wheel-0.37.1
tar -xvf wheel-0.37.1.tar.gz
cd wheel-0.37.1

pip3 install --no-index $PWD
