echo "Switching to user lfs"

sudo -iu lfs

cp .bashrc .bash_profile ~

source .bash_profile

export MAKEFLAGS='-j4'
