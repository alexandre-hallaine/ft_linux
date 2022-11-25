echo >&2 "GRUB"

set -e

rm -rf grub-2.06
tar -xvf grub-2.06.tar.xz
cd grub-2.06

./configure --prefix=/usr          \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror

make
make -j1 install
mv -v /etc/bash_completion.d/grub /usr/share/bash-completion/completions
