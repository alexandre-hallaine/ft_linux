echo >&2 "Installing missing packets"
apt update
apt install bison texinfo -y

echo >&2 "Linking /bin/sh to bash"
ln -sf bash /bin/sh
