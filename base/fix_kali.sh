echo >&2 "Installing missing packets"
apt update -qq
echo '* libraries/restart-without-asking boolean true' | debconf-set-selections
apt install bison texinfo -y -qq

echo >&2 "Linking /bin/sh to bash"
ln -sf bash /bin/sh >/dev/null
