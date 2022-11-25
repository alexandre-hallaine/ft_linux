df --output=source / | grep "/dev/sda" &> /dev/null
if [ $? == 0 ]; then
   DISK=/dev/sdb
else
   DISK=/dev/sda
fi

echo >&2 "Unmount all partitions"
umount -a &>/dev/null >&2 || true # Unmount all partitions
swapoff -a &>/dev/null >&2 || true # Unmount all swap partitions

echo >&2 "Creating partition table and partitions"
(
echo o # Create a new empty DOS partition table
echo n # Add a new partition (boot)
echo # Default primary partition
echo # Default partition numer
echo # Default first sector
echo +1G # Size of the partition
echo a # Set the bootable flag on the boot parition
echo n # Add a new partition (swap)
echo # Default primary partition
echo # Default partition numer
echo # Default first sector
echo +2G # Size of the partition
echo n # Add a new partition (root)
echo # Default primary partition
echo # Default partition numer
echo # Default first sector
echo # Default last sector (the rest of the disk)
echo w # Write changes
echo q # Quit
) | fdisk $DISK >/dev/null

echo >&2 "Formatting partitions"
mkfs.ext4 $DISK\1 # Boot
mkswap $DISK\2 # Swap
mkfs.ext4 $DISK\3 # Root

echo >&2 "Mounting partitions"
mkdir $LFS || true # Create the mount point
mount $DISK\3 $LFS # Mount the root partition
mkdir $LFS/boot # Create the boot mount point
mount $DISK\1 $LFS/boot # Mount the boot partition
swapon $DISK\2 # Activate the swap partition
