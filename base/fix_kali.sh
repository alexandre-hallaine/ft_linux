echo >&2 "Installing missing packets"
DEBIAN_FRONTEND=noninteractive
apt update -qq
apt install bison texinfo -y -qq

echo >&2 "Linking /bin/sh to bash"
ln -sf bash /bin/sh >/dev/null
