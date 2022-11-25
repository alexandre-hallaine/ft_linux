echo >&2 "Installing missing packets"
apt-get -qq update
echo '* libraries/restart-without-asking boolean true' | debconf-set-selections
apt-get -qq install bison texinfo arch-install-scripts -y

echo >&2 "Linking /bin/sh to bash"
ln -sf bash /bin/sh
