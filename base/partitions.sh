export DISK=/dev/sdb

echo "Unmount all partitions"
umount -a # Unmount all partitions
rm -rf $LFS # Remove the LFS folder


echo "Creating partition table and partitions" 
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
) | sudo fdisk $DISK

echo "Formatting partitions" 
sudo mkfs.ext4 $DISK\1 # Boot
sudo mkswap $DISK\2 # Swap
sudo mkfs.ext4 $DISK\3 # Root

echo "Mounting partitions" 
sudo mkdir $LFS # Create the mount point
sudo mount $DISK\3 $LFS # Mount the root partition
sudo mkdir $LFS/boot # Create the boot mount point
sudo mount $DISK\1 $LFS/boot # Mount the boot partition
sudo swapon $DISK\2 # Activate the swap partition
