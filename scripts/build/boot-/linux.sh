echo >&2 "Linux"
rm -rf linux-6.0.6
tar -xvf linux-6.0.6.tar.xz 
mv linux-6.0.6 /usr/src/kernel-6.0.6
cd /usr/src/kernel-6.0.6

make mrproper

cp -v /boot-/kernel-config .config

make
make -j1 modules_install

cp -v arch/x86/boot/bzImage /boot/vmlinuz-6.0.6-ahallain
cp -v System.map /boot/System.map-6.0.6
cp -v .config /boot/config-6.0.6

install -d /usr/share/doc/linux-6.0.6
cp -r Documentation/* /usr/share/doc/linux-6.0.6

install -v -m755 -d /etc/modprobe.d
cat > /etc/modprobe.d/usb.conf << "EOF"
# Begin /etc/modprobe.d/usb.conf

install ohci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i ohci_hcd ; true
install uhci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i uhci_hcd ; true

# End /etc/modprobe.d/usb.conf
EOF
