echo >&2 "Libffi"
rm -rf Python-3.11.0
tar -xvf Python-3.11.0.tar.xz
cd Python-3.11.0

./configure --prefix=/usr        \
            --enable-shared      \
            --with-system-expat  \
            --with-system-ffi    \
            --enable-optimizations

make
make install

cat > /etc/pip.conf << EOF
[global]
root-user-action = ignore
disable-pip-version-check = true
EOF

install -v -dm755 /usr/share/doc/python-3.11.0/html

tar --strip-components=1  \
    --no-same-owner       \
    --no-same-permissions \
    -C /usr/share/doc/python-3.11.0/html \
    -xvf ../python-3.11.0-docs-html.tar.bz2
