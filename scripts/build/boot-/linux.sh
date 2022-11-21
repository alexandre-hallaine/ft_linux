echo >&2 "Linux"
rm -rf linux-5.19.2
tar -xvf linux-5.19.2.tar.xz 
mv linux-5.19.2 /usr/src/kernel-5.19.2
cd /usr/src/kernel-5.19.2

make mrproper

cp -v /boot-/kernel-config .config

make
make -j1 modules_install

cp -v arch/x86/boot/bzImage /boot/vmlinuz-5.19.2-ahallain
cp -v System.map /boot/System.map-5.19.2
cp -v .config /boot/config-5.19.2

install -d /usr/share/doc/linux-5.19.2
cp -r Documentation/* /usr/share/doc/linux-5.19.2

install -v -m755 -d /etc/modprobe.d
cat > /etc/modprobe.d/usb.conf << "EOF"
# Begin /etc/modprobe.d/usb.conf

install ohci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i ohci_hcd ; true
install uhci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i uhci_hcd ; true

# End /etc/modprobe.d/usb.conf
EOF
