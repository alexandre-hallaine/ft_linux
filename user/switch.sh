echo "Switching to user lfs"

su - lfs

cp .bashrc .bash_profile ~

source .bash_profile

export MAKEFLAGS='-j4'
