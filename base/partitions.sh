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
) | sudo fdisk /dev/sdb

echo "Formatting partitions" 
sudo mkfs.ext4 /dev/sdb1 # Boot
sudo mkswap /dev/sdb2 # Swap
sudo mkfs.ext4 /dev/sdb3 # Root

echo "Mounting partitions" 
sudo mkdir /mnt/lfs # Create the mount point
sudo mount /dev/sdb3 /mnt/lfs # Mount the root partition
sudo mkdir /mnt/lfs/boot # Create the boot mount point
sudo mount /dev/sdb1 /mnt/lfs/boot # Mount the boot partition
sudo swapon /dev/sdb2 # Activate the swap partition
