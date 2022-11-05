echo >&2 "Wheel"
rm -rf Python-3.11.0
tar -xvf Python-3.11.0.tar.xz
cd Python-3.11.0

pip3 install --no-index $PWD
