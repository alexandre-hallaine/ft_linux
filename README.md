# ft_linux

## create the vm and boot it
first you have to create you'r vm  
we use a kali because you can download easily a vm image and boot it  
you can download our version of kali [here](torrent)

then you need to make a hard disk with 30 GB (search how to make it :))  

import the kali image in your vm (with the add button) and add the hard disk
we recommend you to change how many cores you want to use and how much ram you want to use (we use 4 cores and 8 GB of ram)

then you can boot the vm and login with the default password (`kali`)

## create partition and mount it
you need to know that for this project you have to make 3 partitions (boot, swap and root)  
we gonna use 1G for the boot as shown in [this guide](https://doc.ubuntu-fr.org/tutoriel/partitionner_manuellement_avec_installateur_ubuntu#partition_boot_parfois_necessaire)  
2G for the swap because it seems to be a good size  
and the rest for the root

to make the partition we gonna use `fdisk` on the hard disk (/dev/sdb)
```bash
sudo fdisk /dev/sdb
```

then you need to create the partition table and the 3 partitions
```bash
o # create the partition table (DOS)

n # create a new partition (boot)
enter # default primary partition
enter # default partition number
enter # default first sector
+1G # size of the partition

a # set the bootable flag on the boot partition

n # create a new partition (swap)
enter # default primary partition
enter # default partition number
enter # default first sector
+2G # size of the partition

n # create a new partition (root)
enter # default primary partition
enter # default partition number
enter # default first sector
enter # default last sector (the rest of the disk)

w # write the partition table
```

then you need to format the partitions
```bash
sudo mkfs.ext4 /dev/sdb1 # boot
sudo mkswap /dev/sdb2 # swap
sudo mkfs.ext4 /dev/sdb3 # root
```

then you need to create the mount point
```bash
sudo mkdir /mnt/lfs # root
sudo mkdir /mnt/lfs/boot # boot
chown -R user /mnt/point
sudo chmod 777 /mnt/lfs # root
sudo chmod 777 /mnt/lfs/boot # boot
```

then you need to mount the partitions
```bash
sudo mkdir /mnt/lfs # create the mount point
sudo mount /dev/sdb3 /mnt/lfs # mount the root partition
sudo mkdir /mnt/lfs/boot # create the boot mount point
sudo mount /dev/sdb1 /mnt/lfs/boot # mount the boot partition
sudo swapon /dev/sdb2 # activate the swap partition
```

## install the base system
you have just to run the script
```bash
bash install.sh
```