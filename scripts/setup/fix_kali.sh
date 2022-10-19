echo >&2 "Installing missing packets"
apt-get -qq update
echo '* libraries/restart-without-asking boolean true' | debconf-set-selections
apt-get -qq install bison texinfo -y

echo >&2 "Linking /bin/sh to bash"
ln -sf bash /bin/sh >/dev/null
